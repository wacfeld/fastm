#!/usr/bin/env python3
from sys import stdin
std = list(stdin)
curs = int(std[0])-1
rest = ''.join(std[1:])
print(rest[:curs] + '|' + rest[curs:], end='')
