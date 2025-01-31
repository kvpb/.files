#!/usr/bin/env python3

import sys
import getopt
import re
import random

class ANSIES:
	# SGR parameters
	reset = '\x1B[0m' # reset or normal
	bold = '\x1B[1m' # bold or increased intensity
	dim = '\x1B[2m' # faint, decreased density or dim
	italic = '\x1B[3m' # italic
	underline = '\x1B[4m' # underline
	slowblink = '\x1B[5m' # slow blink
	rapidblink = '\x1B[6m' # rapid blink
	invert = '\x1B[7m' # reverse video or invert
	hide = '\x1B[8m' # conceal or hide
	strike = '\x1B[9m' # crossed-out or strike
	defaultfont = '\x1B[10m' # primary (default) font
	alternativefont1 = '\x1B[11m' # alternative font
	alternativefont2 = '\x1B[12m' # alternative font
	alternativefont3 = '\x1B[13m' # alternative font
	alternativefont4 = '\x1B[14m' # alternative font
	alternativefont5 = '\x1B[15m' # alternative font
	alternativefont6 = '\x1B[16m' # alternative font
	alternativefont7 = '\x1B[17m' # alternative font
	alternativefont8 = '\x1B[18m' # alternative font
	alternativefont9 = '\x1B[19m' # alternative font
	Fraktur = '\x1B[20m' # Fraktur (Gothic)
	doublyunderlined = '\x1B[21m' # doubly underlined or not bold
	normalintensity = '\x1B[22m' # normal intensity
	neitheritalicnorblackletter = '\x1B[23m' # neither italic nor blackletter
	notunderlined = '\x1B[24m' # not underlined
	notblinking = '\x1B[25m' # not blinking
	proportionalspacing = '\x1B[26m' # proportional spacing
	notreversed = '\x1B[27m' # not reversed
	reveal = '\x1B[28m' # 
	notcrossedout = '\x1B[29m' # not crossed out
	foregroundcolor1 = '\x1B[30m' # set foreground color
	foregroundcolor2 = '\x1B[31m' # set foreground color
	foregroundcolor3 = '\x1B[32m' # set foreground color
	foregroundcolor4 = '\x1B[33m' # set foreground color
	foregroundcolor5 = '\x1B[34m' # set foreground color
	foregroundcolor6 = '\x1B[35m' # set foreground color
	foregroundcolor7 = '\x1B[36m' # set foreground color
	foregroundcolor8 = '\x1B[37m' # set foreground color
	foregroundcolor9 = '\x1B[38m' # set foreground color, next arguments are 5;n or 2;r;g;b
	foregroundcolor0 = '\x1B[39m' # default foreground color
	backgroundcolor1 = '\x1B[40m' # set background color
	backgroundcolor2 = '\x1B[41m' # set background color
	backgroundcolor3 = '\x1B[42m' # set background color
	backgroundcolor4 = '\x1B[43m' # set background color
	backgroundcolor5 = '\x1B[44m' # set background color
	backgroundcolor6 = '\x1B[45m' # set background color
	backgroundcolor7 = '\x1B[46m' # set background color
	backgroundcolor8 = '\x1B[47m' # set background color
	backgroundcolor9 = '\x1B[48m' # set background color, next arguments are 5;n or 2;r;g;b
	backgroundcolor0 = '\x1B[49m' # default background color
	disableproportionalspacing = '\x1B[50m' # disable proportional spacing
	framed = '\x1B[51m' # framed
	encircled = '\x1B[52m' # encircled
	overlined = '\x1B[53m' # overlined
	neitherframednorencircled = '\x1B[54m' # neither framed nor encircled
	notoverlined = '\x1B[55m' # not overlined
	underlinecolor9 = '\x1B[58m' # set underline color, next arguments are 5;n or 2;r;g;b
	underlinecolor0 = '\x1B[59m' # default underline color
	rightsideline = '\x1B[60m' # ideogram underline or right side line
	doublerightsideline = '\x1B[61m' # ideogram double underline or double line on the right side
	leftsideline = '\x1B[62m' # ideogram overline or left side line
	doubleleftsideline = '\x1B[63m' # ideogram double overline or double line on the left side
	ideogramstressmarking = '\x1B[64m' # ideogram stress marking
	noideogramattributes = '\x1B[65m' # no ideogram attributes
	superscript = '\x1B[73m' # superscript
	subscript = '\x1B[74m' # subscript
	neithersuperscriptnorsubscript = '\x1B[75m' # neither superscript nor subscript
	brightforegroundcolor0 = '\x1B[90m' # set bright foreground color
	brightforegroundcolor1 = '\x1B[91m' # set bright foreground color
	brightforegroundcolor2 = '\x1B[92m' # set bright foreground color
	brightforegroundcolor3 = '\x1B[93m' # set bright foreground color
	brightforegroundcolor4 = '\x1B[94m' # set bright foreground color
	brightforegroundcolor5 = '\x1B[95m' # set bright foreground color
	brightforegroundcolor6 = '\x1B[96m' # set bright foreground color
	brightforegroundcolor7 = '\x1B[97m' # set bright foreground color
	brightbackgroundcolor0 = '\x1B[100m' # set bright background color
	brightbackgroundcolor1 = '\x1B[101m' # set bright background color
	brightbackgroundcolor2 = '\x1B[102m' # set bright background color
	brightbackgroundcolor3 = '\x1B[103m' # set bright background color
	brightbackgroundcolor4 = '\x1B[104m' # set bright background color
	brightbackgroundcolor5 = '\x1B[105m' # set bright background color
	brightbackgroundcolor6 = '\x1B[106m' # set bright background color
	brightbackgroundcolor7 = '\x1B[107m' # set bright background color
	# 3- and 4-bit colors
	# = '\x1B[m' # 
	# 8-bit colors
	# = '\x1B[m' # 
	# 24-bit colors
	# = '\x1B[m' # 
	
	def disable(self):
		self.reset = ''
		self.bold = ''
		self.dim = ''
		self.italic = ''
		self.underline = ''
		self.slowblink = ''
		self.rapidblink = ''
		self.invert = ''
		self.hide = ''
		self.strike = ''
		self.defaultfont = ''
		self.alternativefont1 = ''
		self.alternativefont2 = ''
		self.alternativefont3 = ''
		self.alternativefont4 = ''
		self.alternativefont5 = ''
		self.alternativefont6 = ''
		self.alternativefont7 = ''
		self.alternativefont8 = ''
		self.alternativefont9 = ''
		self.Fraktur = ''
		self.doublyunderlined = ''
		self.normalintensity = ''
		self.neitheritalicnorblackletter = ''
		self.notunderlined = ''
		self.notblinking = ''
		self.proportionalspacing = ''
		self.notreversed = ''
		self.reveal = ''
		self.notcrossedout = ''
		self.foregroundcolor1 = ''
		self.foregroundcolor2 = ''
		self.foregroundcolor3 = ''
		self.foregroundcolor4 = ''
		self.foregroundcolor5 = ''
		self.foregroundcolor6 = ''
		self.foregroundcolor7 = ''
		self.foregroundcolor8 = ''
		self.foregroundcolor9 = ''
		self.foregroundcolor0 = ''
		self.backgroundcolor1 = ''
		self.backgroundcolor2 = ''
		self.backgroundcolor3 = ''
		self.backgroundcolor4 = ''
		self.backgroundcolor5 = ''
		self.backgroundcolor6 = ''
		self.backgroundcolor7 = ''
		self.backgroundcolor8 = ''
		self.backgroundcolor9 = ''
		self.backgroundcolor0 = ''
		self.disableproportionalspacing = ''
		self.framed = ''
		self.encircled = ''
		self.overlined = ''
		self.neitherframednorencircled = ''
		self.notoverlined = ''
		self.underlinecolor9 = ''
		self.underlinecolor0 = ''
		self.rightsideline = ''
		self.doublerightsideline = ''
		self.leftsideline = ''
		self.doubleleftsideline = ''
		self.ideogramstressmarking = ''
		self.noideogramattributes = ''
		self.superscript = ''
		self.subscript = ''
		self.neithersuperscriptnorsubscript = ''
		self.brightforegroundcolor0 = ''
		self.brightforegroundcolor1 = ''
		self.brightforegroundcolor2 = ''
		self.brightforegroundcolor3 = ''
		self.brightforegroundcolor4 = ''
		self.brightforegroundcolor5 = ''
		self.brightforegroundcolor6 = ''
		self.brightforegroundcolor7 = ''
		self.brightbackgroundcolor0 = ''
		self.brightbackgroundcolor1 = ''
		self.brightbackgroundcolor2 = ''
		self.brightbackgroundcolor3 = ''
		self.brightbackgroundcolor4 = ''
		self.brightbackgroundcolor5 = ''
		self.brightbackgroundcolor6 = ''
		self.brightbackgroundcolor7 = ''

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
  #a = []
  #l_a = int()
  
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
V  E  R  S  I  O  N     1  .  5  1"""
  #l = int()
  #m = str()
  #t = int()
  
  print(ANSIES.dim + s + ANSIES.reset)
  
  try:
    l = int( input(ANSIES.bold + "password length:\t" + ANSIES.reset) )
  except:
    l = random.randint( 8, 127 )
  
  try:
    m = input(ANSIES.bold + "QWAZERTY mode [yN]:\t" + ANSIES.reset)
  except:
    m = 'NO'
  
  if bool(re.match(r'\b[Yy]([Ee][Ss])?\b', str(m))):
    t = 1
  else:
    t = 0
  
  return sub( l, t )

def main():
  #v_a = []
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
  print(ANSIES.reset + s)

if __name__ == "__main__":
  main()

#	rpwg.py
#	Random Password Generator
#	Version 1.52
#
#	Karl V. P. B. `kvpb` AKA Karl Thomas George West `ktgw`
#	+33 A BB BB BB BB		+1 (DDD) DDD-DDDD
#	local-part@domain		local-part@domain
#	kvpb.fr
#	https://x.com/ktgwkvpb
#	https://github.com/kvpb

#	Copyright 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025 Karl Vincent Pierre Bertin
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
