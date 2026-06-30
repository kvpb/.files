#!/usr/bin/env python3

from secrets import choice
from random import randint
from re import fullmatch
from getopt import getopt, GetoptError
from sys import argv, exit

class ANSIES: # ANSI escape sequences
  # SGR parameters
  reset = "\x1B[0m" # reset or normal
  bold = "\x1B[1m" # bold or increased intensity
  dim = "\x1B[2m" # faint, decreased density or dim
  italic = "\x1B[3m" # italic
  underline = "\x1B[4m" # underline
  slowblink = "\x1B[5m" # slow blink
  rapidblink = "\x1B[6m" # rapid blink
  invert = "\x1B[7m" # reverse video or invert
  hide = "\x1B[8m" # conceal or hide
  strike = "\x1B[9m" # crossed-out or strike
  defaultfont = "\x1B[10m" # primary (default) font
  alternativefont1 = "\x1B[11m" # alternative font
  alternativefont2 = "\x1B[12m" # alternative font
  alternativefont3 = "\x1B[13m" # alternative font
  alternativefont4 = "\x1B[14m" # alternative font
  alternativefont5 = "\x1B[15m" # alternative font
  alternativefont6 = "\x1B[16m" # alternative font
  alternativefont7 = "\x1B[17m" # alternative font
  alternativefont8 = "\x1B[18m" # alternative font
  alternativefont9 = "\x1B[19m" # alternative font
  Fraktur = "\x1B[20m" # Fraktur (Gothic)
  doublyunderlined = "\x1B[21m" # doubly underlined or not bold
  normalintensity = "\x1B[22m" # normal intensity
  neitheritalicnorblackletter = "\x1B[23m" # neither italic nor blackletter
  notunderlined = "\x1B[24m" # not underlined
  notblinking = "\x1B[25m" # not blinking
  proportionalspacing = "\x1B[26m" # proportional spacing
  notreversed = "\x1B[27m" # not reversed
  reveal = "\x1B[28m" # 
  notcrossedout = "\x1B[29m" # not crossed out
  foregroundcolor1 = "\x1B[30m" # set foreground color
  foregroundcolor2 = "\x1B[31m" # set foreground color
  foregroundcolor3 = "\x1B[32m" # set foreground color
  foregroundcolor4 = "\x1B[33m" # set foreground color
  foregroundcolor5 = "\x1B[34m" # set foreground color
  foregroundcolor6 = "\x1B[35m" # set foreground color
  foregroundcolor7 = "\x1B[36m" # set foreground color
  foregroundcolor8 = "\x1B[37m" # set foreground color
  foregroundcolor9 = "\x1B[38m" # set foreground color, next arguments are 5;n or 2;r;g;b
  foregroundcolor0 = "\x1B[39m" # default foreground color
  backgroundcolor1 = "\x1B[40m" # set background color
  backgroundcolor2 = "\x1B[41m" # set background color
  backgroundcolor3 = "\x1B[42m" # set background color
  backgroundcolor4 = "\x1B[43m" # set background color
  backgroundcolor5 = "\x1B[44m" # set background color
  backgroundcolor6 = "\x1B[45m" # set background color
  backgroundcolor7 = "\x1B[46m" # set background color
  backgroundcolor8 = "\x1B[47m" # set background color
  backgroundcolor9 = "\x1B[48m" # set background color, next arguments are 5;n or 2;r;g;b
  backgroundcolor0 = "\x1B[49m" # default background color
  disableproportionalspacing = "\x1B[50m" # disable proportional spacing
  framed = "\x1B[51m" # framed
  encircled = "\x1B[52m" # encircled
  overlined = "\x1B[53m" # overlined
  neitherframednorencircled = "\x1B[54m" # neither framed nor encircled
  notoverlined = "\x1B[55m" # not overlined
  underlinecolor9 = "\x1B[58m" # set underline color, next arguments are 5;n or 2;r;g;b
  underlinecolor0 = "\x1B[59m" # default underline color
  rightsideline = "\x1B[60m" # ideogram underline or right side line
  doublerightsideline = "\x1B[61m" # ideogram double underline or double line on the right side
  leftsideline = "\x1B[62m" # ideogram overline or left side line
  doubleleftsideline = "\x1B[63m" # ideogram double overline or double line on the left side
  ideogramstressmarking = "\x1B[64m" # ideogram stress marking
  noideogramattributes = "\x1B[65m" # no ideogram attributes
  superscript = "\x1B[73m" # superscript
  subscript = "\x1B[74m" # subscript
  neithersuperscriptnorsubscript = "\x1B[75m" # neither superscript nor subscript
  brightforegroundcolor0 = "\x1B[90m" # set bright foreground color
  brightforegroundcolor1 = "\x1B[91m" # set bright foreground color
  brightforegroundcolor2 = "\x1B[92m" # set bright foreground color
  brightforegroundcolor3 = "\x1B[93m" # set bright foreground color
  brightforegroundcolor4 = "\x1B[94m" # set bright foreground color
  brightforegroundcolor5 = "\x1B[95m" # set bright foreground color
  brightforegroundcolor6 = "\x1B[96m" # set bright foreground color
  brightforegroundcolor7 = "\x1B[97m" # set bright foreground color
  brightbackgroundcolor0 = "\x1B[100m" # set bright background color
  brightbackgroundcolor1 = "\x1B[101m" # set bright background color
  brightbackgroundcolor2 = "\x1B[102m" # set bright background color
  brightbackgroundcolor3 = "\x1B[103m" # set bright background color
  brightbackgroundcolor4 = "\x1B[104m" # set bright background color
  brightbackgroundcolor5 = "\x1B[105m" # set bright background color
  brightbackgroundcolor6 = "\x1B[106m" # set bright background color
  brightbackgroundcolor7 = "\x1B[107m" # set bright background color
  # 3- and 4-bit colors
  # = "\x1B[m" # 
  # 8-bit colors
  # = "\x1B[m" # 
  # 24-bit colors
  # = "\x1B[m" # 
  
  def disable( self ) -> None:
    self.reset = ""
    self.bold = ""
    self.dim = ""
    self.italic = ""
    self.underline = ""
    self.slowblink = ""
    self.rapidblink = ""
    self.invert = ""
    self.hide = ""
    self.strike = ""
    self.defaultfont = ""
    self.alternativefont1 = ""
    self.alternativefont2 = ""
    self.alternativefont3 = ""
    self.alternativefont4 = ""
    self.alternativefont5 = ""
    self.alternativefont6 = ""
    self.alternativefont7 = ""
    self.alternativefont8 = ""
    self.alternativefont9 = ""
    self.Fraktur = ""
    self.doublyunderlined = ""
    self.normalintensity = ""
    self.neitheritalicnorblackletter = ""
    self.notunderlined = ""
    self.notblinking = ""
    self.proportionalspacing = ""
    self.notreversed = ""
    self.reveal = ""
    self.notcrossedout = ""
    self.foregroundcolor1 = ""
    self.foregroundcolor2 = ""
    self.foregroundcolor3 = ""
    self.foregroundcolor4 = ""
    self.foregroundcolor5 = ""
    self.foregroundcolor6 = ""
    self.foregroundcolor7 = ""
    self.foregroundcolor8 = ""
    self.foregroundcolor9 = ""
    self.foregroundcolor0 = ""
    self.backgroundcolor1 = ""
    self.backgroundcolor2 = ""
    self.backgroundcolor3 = ""
    self.backgroundcolor4 = ""
    self.backgroundcolor5 = ""
    self.backgroundcolor6 = ""
    self.backgroundcolor7 = ""
    self.backgroundcolor8 = ""
    self.backgroundcolor9 = ""
    self.backgroundcolor0 = ""
    self.disableproportionalspacing = ""
    self.framed = ""
    self.encircled = ""
    self.overlined = ""
    self.neitherframednorencircled = ""
    self.notoverlined = ""
    self.underlinecolor9 = ""
    self.underlinecolor0 = ""
    self.rightsideline = ""
    self.doublerightsideline = ""
    self.leftsideline = ""
    self.doubleleftsideline = ""
    self.ideogramstressmarking = ""
    self.noideogramattributes = ""
    self.superscript = ""
    self.subscript = ""
    self.neithersuperscriptnorsubscript = ""
    self.brightforegroundcolor0 = ""
    self.brightforegroundcolor1 = ""
    self.brightforegroundcolor2 = ""
    self.brightforegroundcolor3 = ""
    self.brightforegroundcolor4 = ""
    self.brightforegroundcolor5 = ""
    self.brightforegroundcolor6 = ""
    self.brightforegroundcolor7 = ""
    self.brightbackgroundcolor0 = ""
    self.brightbackgroundcolor1 = ""
    self.brightbackgroundcolor2 = ""
    self.brightbackgroundcolor3 = ""
    self.brightbackgroundcolor4 = ""
    self.brightbackgroundcolor5 = ""
    self.brightbackgroundcolor6 = ""
    self.brightbackgroundcolor7 = ""

set_character: list[str] = [
        '!',           '$', '%', '&','\'',
   '(', ')', '*', '+', ',', '-', '.', '/',
   '0', '1', '2', '3', '4', '5', '6', '7',
   '8', '9', ':', ';', '<', '=', '>', '?',
   '@', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
   'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O',
   'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
   'X', 'Y', 'Z', '[',      ']', '^', '_',
   '`', 'a', 'b', 'c', 'd', 'e', 'f', 'g',
   'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
   'p', 'q', 'r', 's', 't', 'u', 'v', 'w',
   'x', 'y', 'z', '{', '|', '}', '~',
] # in ASCII order, no 032, '"', '\' or '#'.
matrix_key: dict[str, dict[str, str]] = {
  "ANSI QWERTY": {
    "`": "TLDE", "~": "TLDE",
    "!": "AE01", "1": "AE01", "@": "AE02", "2": "AE02", "3": "AE03", "$": "AE04", "4": "AE04", "%": "AE05", "5": "AE05", "^": "AE06", "6": "AE06", "&": "AE07", "7": "AE07", "*": "AE08", "8": "AE08", "(": "AE09", "9": "AE09", ")": "AE10", "0": "AE10", "_": "AE11", "-": "AE11", "+": "AE12", "=": "AE12",
    "Q": "AD01", "q": "AD01", "W": "AD02", "w": "AD02", "E": "AD03", "e": "AD03", "R": "AD04", "r": "AD04", "T": "AD05", "t": "AD05", "Y": "AD06", "y": "AD06", "U": "AD07", "u": "AD07", "I": "AD08", "i": "AD08", "O": "AD09", "o": "AD09", "P": "AD10", "p": "AD10", "[": "AD11", "{": "AD11", "]": "AD12", "}": "AD12",
    "A": "AC01", "a": "AC01", "S": "AC02", "s": "AC02", "D": "AC03", "d": "AC03", "F": "AC04", "f": "AC04", "G": "AC05", "g": "AC05", "H": "AC06", "h": "AC06", "J": "AC07", "j": "AC07", "K": "AC08", "k": "AC08", "L": "AC09", "l": "AC09", ":": "AC10", ";": "AC10", "'": "AC11",
    "Z": "AB01", "z": "AB01", "X": "AB02", "x": "AB02", "C": "AB03", "c": "AB03", "V": "AB04", "v": "AB04", "B": "AB05", "b": "AB05", "N": "AB06", "n": "AB06", "M": "AB07", "m": "AB07", ",": "AB08", "<": "AB08", ".": "AB09", ">": "AB09", "/": "AB10", "?": "AB10",
    "|": "BKSL",
  },
  "Apple British": { # Apple GB QWERTY
    "`": "TLDE", "~": "TLDE",
    "!": "AE01", "1": "AE01", "@": "AE02", "2": "AE02", "3": "AE03", "$": "AE04", "4": "AE04", "%": "AE05", "5": "AE05", "^": "AE06", "6": "AE06", "&": "AE07", "7": "AE07", "*": "AE08", "8": "AE08", "(": "AE09", "9": "AE09", ")": "AE10", "0": "AE10", "_": "AE11", "-": "AE11", "+": "AE12", "=": "AE12",
    "Q": "AD01", "q": "AD01", "W": "AD02", "w": "AD02", "E": "AD03", "e": "AD03", "R": "AD04", "r": "AD04", "T": "AD05", "t": "AD05", "Y": "AD06", "y": "AD06", "U": "AD07", "u": "AD07", "I": "AD08", "i": "AD08", "O": "AD09", "o": "AD09", "P": "AD10", "p": "AD10", "[": "AD11", "{": "AD11", "]": "AD12", "}": "AD12",
    "A": "AC01", "a": "AC01", "S": "AC02", "s": "AC02", "D": "AC03", "d": "AC03", "F": "AC04", "f": "AC04", "G": "AC05", "g": "AC05", "H": "AC06", "h": "AC06", "J": "AC07", "j": "AC07", "K": "AC08", "k": "AC08", "L": "AC09", "l": "AC09", ":": "AC10", ";": "AC10", "'": "AC11",
    "Z": "AB01", "z": "AB01", "X": "AB02", "x": "AB02", "C": "AB03", "c": "AB03", "V": "AB04", "v": "AB04", "B": "AB05", "b": "AB05", "N": "AB06", "n": "AB06", "M": "AB07", "m": "AB07", ",": "AB08", "<": "AB08", ".": "AB09", ">": "AB09", "/": "AB10", "?": "AB10",
    "|": "BKSL",
  },
  "ISO QWERTY": {
    "`": "TLDE", "~": "TLDE",
    "!": "AE01", "1": "AE01", "@": "AE02", "2": "AE02", "3": "AE03", "$": "AE04", "4": "AE04", "%": "AE05", "5": "AE05", "^": "AE06", "6": "AE06", "&": "AE07", "7": "AE07", "*": "AE08", "8": "AE08", "(": "AE09", "9": "AE09", ")": "AE10", "0": "AE10", "_": "AE11", "-": "AE11", "+": "AE12", "=": "AE12",
    "Q": "AD01", "q": "AD01", "W": "AD02", "w": "AD02", "E": "AD03", "e": "AD03", "R": "AD04", "r": "AD04", "T": "AD05", "t": "AD05", "Y": "AD06", "y": "AD06", "U": "AD07", "u": "AD07", "I": "AD08", "i": "AD08", "O": "AD09", "o": "AD09", "P": "AD10", "p": "AD10", "[": "AD11", "{": "AD11", "]": "AD12", "}": "AD12",
    "A": "AC01", "a": "AC01", "S": "AC02", "s": "AC02", "D": "AC03", "d": "AC03", "F": "AC04", "f": "AC04", "G": "AC05", "g": "AC05", "H": "AC06", "h": "AC06", "J": "AC07", "j": "AC07", "K": "AC08", "k": "AC08", "L": "AC09", "l": "AC09", ":": "AC10", ";": "AC10", "'": "AC11",
    "<": "LSGT", ">": "LSGT",
    "Z": "AB01", "z": "AB01", "X": "AB02", "x": "AB02", "C": "AB03", "c": "AB03", "V": "AB04", "v": "AB04", "B": "AB05", "b": "AB05", "N": "AB06", "n": "AB06", "M": "AB07", "m": "AB07", ",": "AB08", ".": "AB09", "/": "AB10", "?": "AB10",
    "|": "BKSL",
  },
  "Apple French": { # Apple AZERTY
    "@": "TLDE",
    "&": "AE01", "1": "AE01", "2": "AE02", "3": "AE03", "'": "AE04", "4": "AE04", "(": "AE05", "5": "AE05", "[": "AE05", "{": "AE05", "6": "AE06", "7": "AE07", "!": "AE08", "8": "AE08", "9": "AE09", "0": "AE10", ")": "AE11", "]": "AE11", "}": "AE11", "-": "AE12", "_": "AE12", "+": "AE13", "=": "AE13",
    "A": "AD01", "a": "AD01", "Z": "AD02", "z": "AD02", "E": "AD03", "e": "AD03", "R": "AD04", "r": "AD04", "T": "AD05", "t": "AD05", "Y": "AD06", "y": "AD06", "U": "AD07", "u": "AD07", "I": "AD08", "i": "AD08", "O": "AD09", "o": "AD09", "P": "AD10", "p": "AD10", "^": "AD11", "$": "AD12", "*": "AD12",
    "Q": "AC01", "q": "AC01", "S": "AC02", "s": "AC02", "D": "AC03", "d": "AC03", "F": "AC04", "f": "AC04", "G": "AC05", "g": "AC05", "H": "AC06", "h": "AC06", "J": "AC07", "j": "AC07", "K": "AC08", "k": "AC08", "L": "AC09", "l": "AC09", "|": "AC09", "M": "AC10", "m": "AC10", "%": "AC11",
    "<": "LSGT", ">": "LSGT",
    "W": "AB01", "w": "AB01", "X": "AB02", "x": "AB02", "C": "AB03", "c": "AB03", "V": "AB04", "v": "AB04", "B": "AB05", "b": "AB05", "N": "AB06", "n": "AB06", "~": "AB06", ",": "AB08", "?": "AB08", ".": "AB09", ";": "AB09", "/": "AB10", ":": "AB10",
    "`": "BKSL",
  },
  "ISO AZERTY": {
    "&": "AE01", "1": "AE01", "@": "AE02", "2": "AE02", "~": "AE02", "3": "AE03", "'": "AE04", "4": "AE04", "{": "AE04", "(": "AE05", "5": "AE05", "[": "AE05", "-": "AE06", "6": "AE06", "|": "AE06", "7": "AE07", "`": "AE07", "8": "AE08", "_": "AE08", "9": "AE09", "0": "AE10", ")": "AE11", "]": "AE11", "+": "AE12", "=": "AE12", "}": "AE12",
    "A": "AD01", "a": "AD01", "Z": "AD02", "z": "AD02", "E": "AD03", "e": "AD03", "R": "AD04", "r": "AD04", "T": "AD05", "t": "AD05", "Y": "AD06", "y": "AD06", "U": "AD07", "u": "AD07", "I": "AD08", "i": "AD08", "O": "AD09", "o": "AD09", "P": "AD10", "p": "AD10", "^": "AD11", "$": "AD12",
    "Q": "AC01", "q": "AC01", "S": "AC02", "s": "AC02", "D": "AC03", "d": "AC03", "F": "AC04", "f": "AC04", "G": "AC05", "g": "AC05", "H": "AC06", "h": "AC06", "J": "AC07", "j": "AC07", "K": "AC08", "k": "AC08", "L": "AC09", "l": "AC09", "M": "AC10", "m": "AC10", "%": "AC11",
    "<": "LSGT", ">": "LSGT",
    "W": "AB01", "w": "AB01", "X": "AB02", "x": "AB02", "C": "AB03", "c": "AB03", "V": "AB04", "v": "AB04", "B": "AB05", "b": "AB05", "N": "AB06", "n": "AB06", "?": "AB07", ",": "AB08", ";": "AB08", ".": "AB09", ":": "AB09", "!": "AB10", "/": "AB10",
    "*": "BKSL",
  },
  "Apple German": { # Apple QWERTZ
    "<": "TLDE", ">": "TLDE",
    "!": "AE01", "1": "AE01", "2": "AE02", "3": "AE03", "$": "AE04", "4": "AE04", "%": "AE05", "5": "AE05", "[": "AE05", "&": "AE06", "6": "AE06", "]": "AE06", "/": "AE07", "7": "AE07", "|": "AE07", "(": "AE08", "8": "AE08", "{": "AE08", ")": "AE09", "9": "AE09", "}": "AE09", "0": "AE10", "=": "AE10", "?": "AE11", "'": "AE12",
    "Q": "AD01", "q": "AD01", "W": "AD02", "w": "AD02", "E": "AD03", "e": "AD03", "R": "AD04", "r": "AD04", "T": "AD05", "t": "AD05", "Z": "AD06", "z": "AD06", "U": "AD07", "u": "AD07", "I": "AD08", "i": "AD08", "O": "AD09", "o": "AD09", "P": "AD10", "p": "AD10", "$": "AD12", "*": "AD12", "+": "AD12",
    "A": "AC01", "a": "AC01", "S": "AC02", "s": "AC02", "D": "AC03", "d": "AC03", "F": "AC04", "f": "AC04", "G": "AC05", "g": "AC05", "H": "AC06", "h": "AC06", "J": "AC07", "j": "AC07", "K": "AC08", "k": "AC08", "L": "AC09", "l": "AC09", "@": "AC09",
    "Y": "AB01", "y": "AB01", "X": "AB02", "x": "AB02", "C": "AB03", "c": "AB03", "V": "AB04", "v": "AB04", "B": "AB05", "b": "AB05", "N": "AB06", "n": "AB06", "M": "AB07", "m": "AB07", ",": "AB08", ";": "AB08", ".": "AB09", ":": "AB09", "-": "AB10", "_": "AB10",
  },
  "ISO QWERTZ": {
    "^": "TLDE",
    "!": "AE01", "1": "AE01", "2": "AE02", "3": "AE03", "$": "AE04", "4": "AE04", "%": "AE05", "5": "AE05", "&": "AE06", "6": "AE06", "/": "AE07", "7": "AE07", "{": "AE07", "(": "AE08", "8": "AE08", "[": "AE08", ")": "AE09", "9": "AE09", "]": "AE09", "0": "AE10", "=": "AE10", "}": "AE10", "'": "AE12", "`": "AE12",
    "Q": "AD01", "q": "AD01", "@": "AD01", "W": "AD02", "w": "AD02", "E": "AD03", "e": "AD03", "R": "AD04", "r": "AD04", "T": "AD05", "t": "AD05", "Z": "AD06", "z": "AD06", "U": "AD07", "u": "AD07", "I": "AD08", "i": "AD08", "O": "AD09", "o": "AD09", "P": "AD10", "p": "AD10", "+": "AD12", "~": "AD12",
    "A": "AC01", "a": "AC01", "S": "AC02", "s": "AC02", "D": "AC03", "d": "AC03", "F": "AC04", "f": "AC04", "G": "AC05", "g": "AC05", "H": "AC06", "h": "AC06", "J": "AC07", "j": "AC07", "K": "AC08", "k": "AC08", "L": "AC09", "l": "AC09",
    "<": "LSGT", ">": "LSGT", "|": "LSGT",
    "Y": "AB01", "y": "AB01", "X": "AB02", "x": "AB02", "C": "AB03", "c": "AB03", "V": "AB04", "v": "AB04", "B": "AB05", "b": "AB05", "N": "AB06", "n": "AB06", "M": "AB07", "m": "AB07", ",": "AB08", ";": "AB08", ".": "AB09", ":": "AB09", "-": "AB10", "?": "AB10", "_": "AB10",
    "*": "BKSL",
  },
#  "keyboard layout": {
#    "`": "", "~": "",
#    "!": "", "1": "", "@": "", "2": "", "3": "", "$": "", "4": "", "%": "", "5": "", "^": "", "6": "", "&": "", "7": "", "*": "", "8": "", "(": "", "9": "", ")": "", "0": "", "_": "", "-": "", "+": "", "=": "",
#    "Q": "", "q": "", "W": "", "w": "", "E": "", "e": "", "R": "", "r": "", "T": "", "t": "", "Y": "", "y": "", "U": "", "u": "", "I": "", "i": "", "O": "", "o": "", "P": "", "p": "", "[": "", "{": "", "]": "", "}": "",
#    "A": "", "a": "", "S": "", "s": "", "D": "", "d": "", "F": "", "f": "", "G": "", "g": "", "H": "", "h": "", "J": "", "j": "", "K": "", "k": "", "L": "", "l": "", ":": "", ";": "", "'": "",
#    "<": "", ">": "",
#    "Z": "", "z": "", "X": "", "x": "", "C": "", "c": "", "V": "", "v": "", "B": "", "b": "", "N": "", "n": "", "M": "", "m": "", ",": "", ".": "", "/": "", "?": "",
#    "|": "",
#  },
}
alias_layout: dict[str, str] = {
  "apus": "ANSI QWERTY",
  "us":   "ANSI QWERTY",
  # ANSI US QWERTY
  "apuk": "Apple British", # Apple GB QWERTY
  "apgb": "Apple British", # Apple GB QWERTY
  # Apple GB QWERTY
  "uk":   "ISO QWERTY",
  "gb":   "ISO QWERTY",
  # ISO GB QWERTY
  "apfr": "Apple French", # Apple FR AZERTY
  "fr":   "ISO AZERTY", # ISO FR AZERTY
  "apde": "Apple German", # Apple DE QWERTZ
  "de":   "ISO QWERTZ", # ISO DE QWERTZ
#  "kl": "keyboard layout",
}

def set_characters( ids_layout: list[str] | None = None ) -> list[str]:
  if ids_layout is None:
    ids_layout = []
  if not ids_layout:
    return set_character
  
  intersection_set: list[str] = []
  symmetricdifference_set: list[str] = []
  ids_matrix_key: list[str] = [] #layouts = 
  id_layout: str
  id_matrix_key: str
  ids_key: list[str]
  character: str
  
  id_layout = ""
  for id_layout in ids_layout:
    id_layout = str( id_layout ).strip().lower()
    if id_layout in alias_layout:
      ids_matrix_key.append( alias_layout[id_layout] )
    else:
      raise ValueError("Don't know the layout "+id_layout+'.')
    if ids_matrix_key[ -1 ] not in matrix_key:
      raise ValueError("Don't have the layout "+ids_matrix_key[ -1 ]+'.')
  for character in set_character:
    ids_key = []
    id_matrix_key = ""
    for id_matrix_key in ids_matrix_key:
      if character not in matrix_key[ id_matrix_key ]:
        symmetricdifference_set.append( character )
        break
      ids_key.append( matrix_key[ id_matrix_key ][ character ] )
    if len( ids_key ) == len( ids_matrix_key ) and len( set( ids_key ) ) == 1:
      intersection_set.append( character )
    else:
      if character not in symmetricdifference_set:
        symmetricdifference_set.append( character )
  intersection_set = []
  for character in set_character:
    if character not in symmetricdifference_set:
      intersection_set.append( character )
  return intersection_set

def stringtogether_password( length_password: int, set_character_password: list[str] ) -> str:
  if length_password <= 0:
    raise ValueError("Can't generate a password with a null or negative length.")
  if not set_character_password:
    raise ValueError("Can't generate a password from an empty character set.")

  string_password: str
  
  string_password = ""
  while 0 < length_password:
    string_password += str( choice( set_character_password ) )
    length_password -= 1
  return string_password

def convert_cardinal_to_ordinal( number: int ) -> str: # Purely ~economic~ aesthetic.
  if 10 <= number % 100 <= 20:
    return str( number )+"th"
  if number % 10 == 1:
    return str( number )+"st"
  if number % 10 == 2:
    return str( number )+"nd"
  if number % 10 == 3:
    return str( number )+"rd"
  return str( number )+"th"

def interactwith_program() -> str:
  string_splash: str = """RANDOM      PASSWORD     GENERATOR
   ,-----, ,-----,         ,-----,
  / /'/ / / /'/ / ,-,-,-, / /''-'
 / / | | / ,---' / / / / / /_/'/
'-'  '-''-'     '-----' '-----'
V  E  R  S  I  O  N     1  .  6  7"""
  length_password: int
  set_password: list[str]
  string_mode: str
  flag_mode: int
  vector_layout: list[str]
  id_layout: str
  
  print(ANSIES.dim+string_splash+ANSIES.reset)
  try:
    length_password = int( input(ANSIES.dim+"password "+ANSIES.reset+ANSIES.bold+"length"+ANSIES.reset+ANSIES.dim+":\t"+ANSIES.reset+ANSIES.invert) )
  except ( EOFError, ValueError ):
    length_password = randint( 8, 127 )
  
  try:
    string_mode = input(ANSIES.reset+ANSIES.bold+"cross-layout"+ANSIES.reset+ANSIES.dim+""" password,
"""+ANSIES.reset+ANSIES.underline+"y"+ANSIES.reset+"es or by default "+ANSIES.underline+"n"+ANSIES.reset+"o"+ANSIES.reset+ANSIES.dim+":\t"+ANSIES.reset+ANSIES.invert)
  except EOFError:
    string_mode = "NO"
  if bool(fullmatch(r'\b[Yy]([Ee][Ss])?\b', str(string_mode).strip())):
    flag_mode = 1
  else:
    flag_mode = 0
  if flag_mode == 1:
    vector_layout = []
    while True:
      try:
        id_layout = input(ANSIES.reset+ANSIES.bold+convert_cardinal_to_ordinal( len( vector_layout ) + 1 )+ANSIES.reset+ANSIES.dim+" keyboard "+ANSIES.reset+ANSIES.bold+"layout"+ANSIES.reset+ANSIES.dim+":\t"+ANSIES.reset+ANSIES.invert)
      except EOFError:
        break
      id_layout = str(id_layout).strip()
      if not id_layout:
        print(ANSIES.reset+"\x1B[1A\x1B[2K", end="")
        break
      vector_layout.append(id_layout)
    if not vector_layout:
      vector_layout = ["us", "apfr"]
    set_password = set_characters( vector_layout )
  else:
    set_password = set_character

  return stringtogether_password( length_password, set_password )

def help_use() -> None:
  print("""rpwg.py
        --length=12 --mode=cross-layout --layout=us --layout=apfr
        --random
        --interactive
        --help
rpwg.py
         -l 8 -m c -k us -k de -k gb -k fr
         -r
         -i
         -h""")

def main() -> int:
  #vector_argument: list[str] = sys.argv[1:]
  length_password: int
  flag_mode: int
  flag_usage: int
  flag_interactivity: int
  flag_randomness: int
  vector_layout: list[str]
  set_password: list[str]
  string_password: str
  vector_option: list[tuple[str, str]]
  option: str
  vector_parameter: list[str]
  parameter: str
  #string_error: getopt.GetoptError
  #error: ValueError
  
  try:
    vector_option,\
    vector_parameter = getopt(
      argv[1:],
      "l:m:k:rihu",
      [
        "length=",
        "mode=",
        "layout=",
        "random",
        "interactive",
        "help",
        "use",
      ]
    )
  except GetoptError as string_error:
    print(string_error)
    help_use()
    return 2
  
  if vector_parameter:
    print("Can't handle "+" ".join( vector_parameter )+'.')
    help_use()
    return 2
  
  if not vector_option: #if not vector_option:
    flag_mode = 1       #  help_use()
                        #  return 2
  
  length_password = 0
  flag_mode = -1
  flag_usage = 0
  flag_interactivity = 0
  flag_randomness = 0
  vector_layout = []
  for option, parameter in vector_option:
    if option in ("--length", "-l"):
      try:
        length_password = int( parameter )
      except ValueError:
        print("Can't understand a password length of "+str( parameter )+'.')
        return 2
    
    elif option in ("--mode", "-m"):
      parameter = str(parameter).strip().lower()
      if bool(fullmatch(r'q(wazerty)?|c(ross(-layout)?)?', parameter)):
        flag_mode = 1
      else:
        flag_mode = 0
    
    elif option in ("--layout", "-k"):
      vector_layout.append(str(parameter))

    elif option in ("--random", "-r"):
      flag_randomness = 1

    elif option in ("--interactive", "-i"):
      flag_interactivity = 1
      
    elif option in ("--help", "-h", "--use", "-u"):
      flag_usage = 1

  if flag_usage == 1:
    help_use()
    return 0

  if flag_randomness == 1:
    length_password = randint( 8, 127 )
    flag_mode = randint( 0, 1 )
    
  elif flag_interactivity == 1:
    try:
      string_password = interactwith_program()
    except ValueError as error:
      print(error)
      return 2
    print(string_password)
    return 0
      
  if length_password <= 0:
    length_password = randint( 8, 127 )
  
  if flag_mode < 0:
    flag_mode = randint( 0, 1 )
  if flag_mode == 1:
    if not vector_layout:
      vector_layout = ["us", "apfr"] # Default to a QWAZERTY password like back in the days.
    try:
      set_password = set_characters( vector_layout )
    except ValueError as error:
      print(error)
      return 2
  else:
    set_password = set_character
  
  string_password = stringtogether_password( length_password, set_password )
  print(ANSIES.reset+string_password)
  return 0

if __name__ == "__main__":
  exit( main() )

#	rpwg.py
#	KVPB's random password generator
#	1.67
#
#	Karl V. P. B. `kvpb`  Karl Thomas George West `ktgw`
#	+33 A BB BB BB BB     +1 (DDD) DDD-DDDD
#	local-part@domain     local-part@domain
#	kvpb.fr
#	https://x.com/ktgwkvpb
#	https://github.com/kvpb
#
#	'I can help you!
#	 I can understand!
#	 I can help you!
#	 ... To the promised land!
#	 I'm _your_ helping hand,
#	 your midnight man!
#	 Your midnight man!'
#
#	'What a change come over me.
#	 You showed me what life could be.
#	 It's not grime like it used to be.
#	 Mh, look what you've done to me.
#	 Oh, I'm giving up for love,
#	 giving up the way that it used to be.
#	 I'm giving for love.
#	 Love makes it easy for me.
#	 How can I go on each day?
#	 You took a part of me away.
#	 Hand in hand, we walk together.
#	 Looks like you're in for stormy weather.
#	 Oh, I'm giving up for love,
#	 giving up the way that it used to be.
#	 I'm giving for love.
#	 Love makes it easy for me.
#	 Look what you've done to me.
#	 Ain't like it used to be.
#	 All of my yesterdays are over, over.
#	 My life has just begun.
#	 You turn my world around.
#	 All of my yesterdays are over.
#	 Oh, I'm giving up, giving it up for love.
#	 Giving up the way that it used to be.
#	 I'm givin', giving up, giving it up for love.
#	 Love makes it easy for me.
#	 Wish right now that I was free.
#	 Let's love your offers not kept from me.
#	 Loving you turned my head around.
#	 It's not a fad, [if any fucker ever tells me I don't speak English like a native again, I'm fucking kicking his ass,]
#	 I'm so glad I found.
#	 Oh, I'm giving up for love,
#	 giving up the way that it used to be.
#	 I'm giving for love.
#	 Love makes it easy for me.
#	 Giving up for love,
#	 giving up the way that it used to be.
#	 I'm givin' for love.
#	 Love makes it easy for me.
#	 Look what you've done to me.
#	 Ain't like it used to be.
#	 All of my yesterdays are over, over.
#	 My life has just begun.
#	 You turned my world around.
#	 All of my yesterdays are over.
#	 Oh, I'm giving up, giving it up for love,
#	 giving up the way that it used to be.
#	 I'm givin' for love.
#	 Love makes it easy for me.
#	 Givin' up for love,
#	 giving up the way that it used to be.
#	 I'm givin' for love.
#	 Love makes it easy for me.
#	 Givin' up for love.
#	 Ooh ooh, givin' up for love.
#	 Givin' up for love.
#	 Love makes it easy for me.
#	 I'm givin' for love,
#	 giving up the way that it used to be.
#	 I'm givin' for love.
#	 Love makes it easy for me.
#	 Givin' for love,
#	 giving up the way that it used to be...'
#
#	'Amnésie !
#	 Je veux me perdre dans la ville.
#	 Je me retrouve sur une île.
#	 Amnésie,
#	 amnésie,
#	 amnésie...
#	'Amnésie !
#	 J'n'ai plus de maison,
#	 plus de lit.
#	 Je vais dormir au paradis.
#	 Amnésie,
#	 amnésie,
#	 amnésie...
#	 Amnésie !
#	 J'ai d'autres rêves,
#	 d'autres envies.
#	 J'oublie les femmes de mes amis.
#	 Amnésie,
#	 amnésie,
#	 amnésie...
#	 Amnésie !
#	 Je ferme à jamais la sortie
#	 du labyrinthe de ma vie.
#	 Amnésie,
#	 amnésie,
#	 amnésie...'

#	Copyright 2026 Karl Vincent Pierre Bertin
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
