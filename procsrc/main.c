#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "amath.h"

const char tagstart[] = "<math>";
const char tagend[] = "</math>";
const int tagstartlen = sizeof(tagstart) - 1;
const int tagendlen = sizeof(tagend) - 1;
const int taglen = tagstartlen + tagendlen;

const char tagbr[] = "<br>";
const int tagbrlen = sizeof(tagbr) - 1;

int main(int argc, char **argv)
{
  // read source
	int bufsiz = 1024;
	char *buf = malloc(bufsiz);
  int c, i = 0;
  int esc = 0;

  int mstart = -1;

  while((c = getchar()) != EOF)
  {
    // parse backslashes and backticks
    if(!esc && c == '\\')
    {
      esc = 1;
      continue;
    }
    else
      esc = 0;

    if(!esc && c == '\n') // write <br> instead
    {
      if(bufsiz <= i + tagbrlen + 1)
      {
        bufsiz = i + tagbrlen + 1;
        buf = realloc(buf, bufsiz);
      }

      strcpy(buf + i, tagbr);
      i += tagbrlen;
      continue;
    }

    if(!esc && c == '`')
    {
      if(mstart == -1)
      {
        mstart = i+1;
        // do not continue; write the backtick for now, and overwrite it upon encountering closing backtick
      }
      else
      {
        if(i == mstart) // empty math expression, ignore
        {
          mstart = -1;
          continue;
        }

        buf[i] = 0;
        char *math = amath_to_mathml(buf+mstart);
        i = mstart-1; // overwrite backtick
        int mathlen = strlen(math);
        int len = i + mathlen + taglen + 1;
        if(bufsiz <= len)
        {
          bufsiz = len;
          buf = realloc(buf, bufsiz);
        }

        strcpy(buf + i, tagstart);
        strcpy(buf + i + tagstartlen, math);
        strcpy(buf + i + tagstartlen + mathlen, tagend);
        free(math);
        i = len-1;

        mstart = -1;
        continue;
      }
    }

    buf[i++] = c;
    if(i >= bufsiz)
    {
      bufsiz *= 2;
      buf = realloc(buf, bufsiz);
    }

  }
  buf[i] = 0; // null terminate

  printf("%s", buf);
  free(buf);
}
