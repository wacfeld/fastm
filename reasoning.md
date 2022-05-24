- a combination such as vim + ultisnips + pdflatex + zathura works rather well for taking well-formatted math notes in lectures at speed (see https://castel.dev/post/lecture-notes-1/?source=techstories.org)
- however, this combination is still much too clumsy for actual mathematical *work*, i.e. problem solving
- this is for several reasons:
  - one has to look at both the input (latex) and output (pdf, etc.) to know exactly what they are typing
  - the compile/update time is still much too slow. this includes restrictions such as auto-save being extremely resource-intensive, therefore requiring the user to constantly save in order to see the updated math
- this is not a problem when note-taking because we know exactly what we want to write down, beforehand
- when problem solving, perfect formatting is not an issue. it is acceptable to render the math in HTML/MathJax for the sake of speed
- plugins such as vim-instant-markdown (https://github.com/instant-markdown/vim-instant-markdown), with MathJax enabled, are better than the setup above for note-taking, but it is still too slow. any noticeable decrease in speed destroys flow and is unacceptable
  - additionally, the plugin is somewhat unreliable and sometimes stops working, in my experience
- we end up with the following requirements/starting points:
  1. we should use either latex notation or asciimath, rendered in mathjax, in a web browser
  2. by direct or indirect means, a cursor should be rendered in as well, to eliminate the need to look at the input buffer
  3. the input buffer must be in vim
- requirement 1 is satisfied by websites such as https://latexeditor.lagrida.com/ or http://asciimath.org/, which are indeed instant (i.e. delay not noticeable by the user)
  - however, the other 2 requirements are obviously not fulfilled
- requirement 2, the cursor, is the least important. moreover, it should not be too hard to implement if requirement 3 is already in place
- requirement 3 is the problem. the bulk of the instant-markdown plugin is code that monitors a vim buffer and curl's it to a localhost port. somewhere along the line a massive intolerable delay is incurred
