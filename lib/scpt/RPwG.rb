#!/usr/bin/env ruby

# RPwG (Random Password Generator)
# RPwG.rb, rpwg.rb
# Version 1.2
# 
# Karl 'Kabe' Bertin (Карл Бэртин) `kvpb`
# Email: local-part@domain
# LinkedIn: https://www.linkedin.com/in/karlbertin
# Facebook: https://www.facebook.com/karlbertin
# Instagram: https://www.instagram.com/karlbertin/
# 
# Last updated on 2018.1.28 at 2:59:0...
# At I's, 15th arrondissement, Paris, Ile-de-France, France, Europe

#require 'terminfo'
#
#class Style
#	def self.style()
#		@@singleton ||= Style.new
#	end
#
#	colors = %w{black red green yellow blue magenta cyan white}
#	colors.each_with_index do |color, index|
#		define_method(color) { get("setaf", index) }
#		define_method("background_" + color) { get("setab", index) }
#	end
#
#	def dim()		get("dim")	end # Emphasize text through color.
#	def bold()		get("bold")	end # Emphasize text through boldface.
#	def italics()	get("sitm") end # Emphasize text through italics.
#	def underline()	get("smul")	end # Emphasize text through underline.
#	def clear()		get("sgr0")	end # Clear all formatting.
#
#	def get(*args)
#		begin
#			TermInfo.control_string(*args)
#		rescue TermInfo::TermInfoError
#			""
#		end
#	end
#end

character_set = [ "!", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "{", "|", "}", "~" ] # ASCII order, no 032, """, "\" or "#".
qwazerty_character_set = [ "!", "$", "%", "&", "'", "(", ")", "*", ",", "-", ".", "/", ":", ";", "?", "@", "A", "M", "Q", "W", "Z", "[", "]", "^", "`", "a", "m", "q", "w", "z", "{", "|", "}", "~" ]

#format = Style.style
#clear = format.clear
#puts "#{format.red}Password length #{format.underline}(digits only)#{clear}#{format.red}:#{clear}"
print `tput setaf 1` + "Password length " + `tput smul` + "(digits only)" + `tput sgr0` + `tput setaf 1` + ":" + `tput sgr0` + " " + `tput setaf 3`
password_length = gets.to_i
print `tput sgr0`

#format = Style.style
#clear = format.clear
#puts "#{format.red}QWAZERTY sensitivity #{format.dim}('y' for yes){clear}{format.red}?#{clear}"
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

puts `tput setaf 1` + "Password randomly generated:" + `tput sgr0` + " " + password.map(&:inspect).join('').to_s.gsub('"', '') + "\n"
