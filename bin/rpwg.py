#!/usr/bin/env python3

import sys
import getopt
import re
import random

def sub( l, t ):
  #s = ""
  a_f = [
           '!',  '$',  '%',  '&', '\'',  '(',  ')',  '*',  '+',  ',',  '-',
           '.',  '/',  '0',  '1',  '2',  '3',  '4',  '5',  '6',  '7',  '8',
           '9',  ':',  ';',  '<',  '=',  '>',  '?',  '@',  'A',  'B',  'C',
           'D',  'E',  'F',  'G',  'H',  'I',  'J',  'K',  'L',  'M',  'N',
           'O',  'P',  'Q',  'R',  'S',  'T',  'U',  'V',  'W',  'X',  'Y',
           'Z',  '[',  ']',  '^',  '_',  '`',  'a',  'b',  'c',  'd',  'e',
           'f',  'g',  'h',  'i',  'j',  'k',  'l',  'm',  'n',  'o',  'p',
           'q',  'r',  's',  't',  'u',  'v',  'w',  'x',  'y',  'z',  '{',
           '|',  '}',  '~'
        ]
  a_t = [
           '!',  '$',  '%',  '&', '\'',  '(',  ')',  '*',  ',',  '-',  '.',
           '/',  ':',  ';',  '?',  '@',  'A',  'M',  'Q',  'W',  'Z',  '[',
           ']',  '^',  '`',  'a',  'm',  'q',  'w',  'z',  '{',  '|',  '}',
           '~'
        ]
  #a = 0
  #l_a = 0
  
  if    (  t ==  1 ):
    a_f = list(set( a_f )^set( a_t ))
  
  l_a = len( a_f )
  
  s = ''
  while (  0  <  l ):
    s += str( a_f[ random.randint( 0, l_a - 1 ) ] )
    l -= 1
  
  return s

def alt():
  s = """RANDOM      PASSWORD     GENERATOR
   ,-----, ,-----,         ,-----,
  / /'/ / / /'/ / ,-,-,-, / /''-'
 / / | | / ,---' / / / / / /_/'/
'-'  '-''-'     '-----' '-----'
V  E  R  S  I  O  N     1  .  5  0"""
  #l = 0
  #m = ""
  #t = 0
  
  print(s)
  
  try:
    l = int( input("password length:\t") )
  except:
    l = random.randint( 8, 127 )
  
  try:
    m = input("QWAZERTY mode [yN]:\t")
  except:
    m = 'NO'
  
  if bool(re.match(r'\b[Yy]([Ee][Ss])?\b', str(m))):
    t = 1
  else:
    t = 0
  
  return sub( l, t )

def main():
  #v_a = 
  l = 0
  t = 0
  s = """rpwg.py --length=12 --mode=q
        --random
        --interactive
        --help"""
  
  try:
    v_o, v_p = getopt.getopt(sys.argv[1:], "l:m:rih", ["length=", "mode=", "random", "interactive", "help"])
  except getopt.GetoptError as s:
    print(s)
    sys.exit(2)
  if not v_o:
    l = random.randint( 8, 127 )
    t = random.randint( 0, 1 )
    s = sub( l, t )
    print(s)
    return 0
  for o, p in v_o:
    if o in ("-l", "--length"):
      if int( p ):
        l = int( p )
      else:
        l = random.randint( 8, 127 )
    elif o in ("-m", "--mode"):
      if bool(re.match(r'\b[Qq]([Ww][Aa][Zz][Ee][Rr][Tt][Yy])?\b', str(p))):
        t = 1
      else:
        t = 0
    elif o in ("-r", "--random"):
      l = random.randint( 8, 127 )
      t = random.randint( 0, 1 )
    elif o in ("-h", "--help"):
      print(s)
      sys.exit()
    elif o in ("-i", "--interactive"):
      s = alt()
      print(s)
      return 0
  s = sub( l, t )
  print(s)

if __name__ == "__main__":
  main()

#	rpwg.py
#	Random Password Generator
#	Version 1.50
#
#	Karl V. P. B. `kvpb`
#	+1 (DDD) DDD-DDDD
#	+33 A BB BB BB BB
#	local-part@domain
#	local-part@domain
#	https://www.linkedin.com/in/karlbertin
#	https://twitter.com/kvpbx
#	https://github.com/kvpb
#	https://vm.tiktok.com/ZSwAmcFh/

#	Copyright 2022 Karl V. P. Bertin
#
#	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
#
#	1.  Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
#
#	2.  Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
#
#	3.  Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
#
#	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
