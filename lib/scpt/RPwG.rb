#!/usr/bin/env ruby

# RPwG (Random Password Generator)
# RPwG.rb, rpwg.rb
# Version 1.2
# 
# Karl 'Kabe' Bertin `kvpb`
# Email: local-part@domain
# LinkedIn: https://www.linkedin.com/in/karlbertin
# Facebook: 
# Instagram: https://www.instagram.com/karlbertin/
# Snapchat: https://www.snapchat.com/add/karlbertin

character_set = [ "!", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "{", "|", "}", "~" ] # ASCII order, no 032, """, "\" or "#".
qwazerty_character_set = [ "!", "$", "%", "&", "'", "(", ")", "*", ",", "-", ".", "/", ":", ";", "?", "@", "A", "M", "Q", "W", "Z", "[", "]", "^", "`", "a", "m", "q", "w", "z", "{", "|", "}", "~" ]

print `tput setaf 1` + "Password length " + `tput smul` + "(digits only)" + `tput sgr0` + `tput setaf 1` + ":" + `tput sgr0` + " " + `tput setaf 3`
password_length = gets.to_i
print `tput sgr0`

print `tput setaf 1` + "QWAZERTY sensitivity " + `tput smul` + "('y' for yes)" + `tput sgr0` + `tput setaf 1` + "?" + `tput sgr0` + " " + `tput setaf 3`
qwazerty_sensitivity = gets
print `tput sgr0`

if qwazerty_sensitivity =~ /(|^)y(|$)/i
	character_set = character_set - qwazerty_character_set
else
	end

password = Array.new

while password_length > 0 do
	password << character_set.sample
	password_length -= 1
end

puts `tput setaf 1` + "Randomly generated password:" + `tput sgr0` + " " + password.map(&:inspect).join('').to_s.gsub('"', '') + "\n"
