#!/bin/python3

name = '/etc/issue'

with open(name, 'r') as reading:
  for line in reading:
    print(line, end='')
    break
