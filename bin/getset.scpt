#!/usr/bin/env osascript

on is_integer( value_argument )
	try
		set integer_value to value_argument as integer
		
		if ( integer_value as text ) is value_argument then
			return true
		end if
		
		return false
	on error
		return false
	end try
end is_integer

on yellow( text_argument )
	return ( ASCII character 27 ) & "[33m" & text_argument & ( ASCII character 27 ) & "[0m"
end yellow

on require_macOS_version()
	set version_macOS to do shell script "sw_vers -productVersion"
	set version_macOS_major to do shell script "printf '%s\n' " & quoted form of version_macOS & " | awk -F. '{ print $1 }'"
	
	if not my is_integer( version_macOS_major ) then
		error "Can't read macOS version." number 2
	end if
	
	if ( version_macOS_major as integer ) is not 15 then
		error ( my yellow( "This version of GetSet runs on macOS 15 Sequoia." ) ) number 2
	end if
	
	return true
end require_macOS_version

on get_model_Mac()
	return do shell script "sysctl -n hw.model"
end get_model_Mac

on model_major( model_Mac )
	set text_major to do shell script "printf '%s\n' " & quoted form of model_Mac & " | sed 's/^[^0-9]*//; s/,.*$//'"
	
	if not my is_integer( text_major ) then
		return -1
	end if
	
	return text_major as integer
end model_major

on require_Mac_model()
	set model_Mac to my get_model_Mac()
	set major_model to my model_major( model_Mac )
	
	if major_model < 0 then
		error "Can't read Mac model." number 2
	end if
	
	return true
end require_Mac_model

on print_value( name_argument, value_argument )
	return name_argument & ": " & value_argument & ";"
end print_value

on clean_error( message_error )
	if message_error contains "can't be read" then
		return "Couldn't be read."
	end if
	
	if message_error contains "can't be executed" then
		return "Couldn't be read."
	end if
	
	return message_error
end clean_error

on get_volume()
	return output volume of ( get volume settings ) as text
end get_volume

on get_screenresolution()
	set text_resolution to do shell script "system_profiler SPDisplaysDataType | awk '/Resolution:/ { sub(/^[[:space:]]*Resolution:[[:space:]]*/, \"\"); gsub(/ x /, \" * \"); sub(/ Retina$/, \" px Retina\"); print }'"
	
	if text_resolution is "" then
		error "Screen resolution can't be read." number 2
	end if
	
	return text_resolution
end get_screenresolution

on call_without_root( name_function )
	if name_function is "get_volume" then
		return my get_volume() & " %"
	end if
	
	if name_function is "get_screenresolution" then
		return my get_screenresolution()
	end if
	
	error "Huh?" number 2
end call_without_root

on executable_exists( executable_path )
	set existence_executable to do shell script "test -x " & quoted form of executable_path & " && printf yes || printf no"
	
	if existence_executable is "yes" then
		return true
	end if
	
	return false
end executable_exists

on helper_path( root_GetSet, helper_name )
	return root_GetSet & helper_name
end helper_path

on helper_value( root_GetSet, helper_name, error_message )
	set path_helper to my helper_path( root_GetSet, helper_name )
	
	if my executable_exists( path_helper ) then
		return do shell script quoted form of path_helper
	end if
	
	error error_message number 2
end helper_value

on get_screenbrightness_nvram()
	set text_backlight to do shell script "nvram backlight-level 2>/dev/null | awk '{ print $2 }'"
	
	if text_backlight is "" then
		error "Screen brightness can't be read by this AppleScript-only build." number 2
	end if
	
	if text_backlight is "%ff%03" then
		return "maximum"
	end if
	
	if text_backlight is "%00%00" then
		return "minimum"
	end if
	
	return text_backlight
end get_screenbrightness_nvram

on get_screenbrightness( root_GetSet )
	try
		return my helper_value( root_GetSet, "screenbrightness", "The screen brightness helper can't be executed." )
	on error
		return my get_screenbrightness_nvram()
	end try
end get_screenbrightness

on get_keyboardbrightness( root_GetSet )
	return my helper_value( root_GetSet, "keyboardbrightness", "Keyboard brightness can't be read by this AppleScript-only build." )
end get_keyboardbrightness

on call_with_root( name_function, root_GetSet )
	if name_function is "get_screenbrightness" then
		return my get_screenbrightness( root_GetSet )
	end if
	
	if name_function is "get_keyboardbrightness" then
		return my get_keyboardbrightness( root_GetSet )
	end if
	
	error "Huh?" number 2
end call_with_root

on maybe_value( name_argument, name_function, root_GetSet )
	try
		if root_GetSet is "" then
			return my print_value( name_argument, my call_without_root( name_function ) )
		end if
		
		return my print_value( name_argument, my call_with_root( name_function, root_GetSet ) )
	on error
		return my print_value( name_argument, "couldn't be read" )
	end try
end maybe_value

on print_values( root_GetSet )
	return my maybe_value( "volume", "get_volume", "" ) & linefeed & ¬
		my maybe_value( "screen brightness", "get_screenbrightness", root_GetSet ) & linefeed & ¬
		my maybe_value( "keyboard brightness", "get_keyboardbrightness", root_GetSet ) & linefeed & ¬
		my maybe_value( "resolution", "get_screenresolution", "" )
end print_values

on help_use()
	return "Get Set" & linefeed & ¬
		"Control the hardware of your Mac." & linefeed & ¬
		linefeed & ¬
		"use:" & linefeed & ¬
		"  getset (s(ound))v(olume) ( n )" & linefeed & ¬
		"  getset (s(creen))b(rightness) ( n )" & linefeed & ¬
		"  getset k(eyboard)b(rightness) ( n )" & linefeed & ¬
		"  getset (s(creen))r(esolution) ( n )"
end help_use

on is_in_list( value_argument, list_value )
	repeat with item_value in list_value
		if value_argument is ( item_value as text ) then
			return true
		end if
	end repeat
	
	return false
end is_in_list

on normalize_target( target_argument )
	if my is_in_list( target_argument, { "soundvolume", "volume", "sv", "v" } ) then
		return "volume"
	end if
	
	if my is_in_list( target_argument, { "screenbrightness", "brightness", "sb", "b" } ) then
		return "screenbrightness"
	end if
	
	if my is_in_list( target_argument, { "keyboardbrightness", "kb" } ) then
		return "keyboardbrightness"
	end if
	
	if my is_in_list( target_argument, { "screenresolution", "resolution", "sr", "r" } ) then
		return "screenresolution"
	end if
	
	return ""
end normalize_target

on get_target( target, root_GetSet )
	try
		if target is "volume" then
			return my get_volume()
		end if
		
		if target is "screenbrightness" then
			return my get_screenbrightness( root_GetSet )
		end if
		
		if target is "keyboardbrightness" then
			return my get_keyboardbrightness( root_GetSet )
		end if
		
		if target is "screenresolution" then
			return my get_screenresolution()
		end if
		
		return "Huh?"
	on error message_error
		if target is "screenbrightness" then
			return "Screen brightness couldn't be read."
		end if
		
		if target is "keyboardbrightness" then
			return "Keyboard brightness couldn't be read."
		end if
		
		if target is "screenresolution" then
			return "Screen resolution couldn't be read."
		end if
		
		return my clean_error( message_error )
	end try
end get_target

on convert_string_to_integer( value_argument, error_message )
	if not my is_integer( value_argument ) then
		error error_message number 2
	end if
	
	return value_argument as integer
end convert_string_to_integer

on clamp_integer( integer_value, integer_minimum, integer_maximum )
	if integer_value < integer_minimum then
		set integer_value to integer_minimum
	end if
	
	if integer_value > integer_maximum then
		set integer_value to integer_maximum
	end if
	
	return integer_value
end clamp_integer

on bounded_integer( value_argument, integer_minimum, integer_maximum, error_message )
	set integer_value to my convert_string_to_integer( value_argument, error_message )
	return my clamp_integer( integer_value, integer_minimum, integer_maximum )
end bounded_integer

on hud_integer( integer_value )
	if integer_value < 17 then
		return integer_value
	end if
	
	return ( integer_value * 16 ) div 100
end hud_integer

on percent_integer( integer_value )
	if integer_value < 17 then
		return ( integer_value * 100 ) div 16
	end if
	
	return integer_value
end percent_integer

on set_volume( value_argument )
	set integer_value to my bounded_integer( value_argument, 0, 100, "Volume must be an integer from 0 to 100." )
	set integer_percent to my percent_integer( integer_value )
	set volume output volume integer_percent
	
	return integer_value as text
end set_volume

on run_helper( root_GetSet, helper_name, integer_value )
	set path_helper to my helper_path( root_GetSet, helper_name )
	
	if my executable_exists( path_helper ) then
		do shell script quoted form of path_helper & space & quoted form of ( integer_value as text )
		return true
	end if
	
	return false
end run_helper

on press_keycode_to_target( keycode_value, count_repeat )
	tell application "System Events"
		repeat count_repeat times
			key code keycode_value
		end repeat
	end tell
end press_keycode_to_target

on press_keycode_to_0( keycode_value )
	my press_keycode_to_target( keycode_value, 16 )
end press_keycode_to_0

on set_screenbrightness( value_argument, root_GetSet )
	set integer_value to my bounded_integer( value_argument, 0, 100, "Screen brightness must be an integer from 0 to 100." )
	
	if my run_helper( root_GetSet, "screenbrightness", integer_value ) then
		return integer_value as text
	end if
	
	set integer_HUD to my hud_integer( integer_value )
	
	my press_keycode_to_0( 145 )
	my press_keycode_to_target( 144, integer_HUD )
	
	return integer_value as text
end set_screenbrightness

on model_prefix( model_Mac )
	return do shell script "printf '%s\n' " & quoted form of model_Mac & " | sed 's/[0-9,].*$//'"
end model_prefix

on keyboardbrightness_keycodes_exist()
	set model_Mac to my get_model_Mac()
	set prefix_model to my model_prefix( model_Mac )
	set major_model to my model_major( model_Mac )
	
	if prefix_model is "MacBookPro" then
		if major_model <= 17 then -- U+2264 also works in AppleScript. https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/reference/ASLR_operators.html
			return true
		end if
		
		return false
	end if
	
	if prefix_model is "MacBookAir" then
		if major_model <= 9 then
			return true
		end if
		
		return false
	end if
	
	return false
end keyboardbrightness_keycodes_exist

on set_keyboardbrightness( value_argument, root_GetSet )
	set integer_value to my bounded_integer( value_argument, 0, 100, "Keyboard brightness must be an integer from 0 to 100." )
	set integer_HUD to my hud_integer( integer_value )
	
	if my run_helper( root_GetSet, "keyboardbrightness", integer_HUD ) then
		return integer_value as text
	end if
	
	if my keyboardbrightness_keycodes_exist() then
		my press_keycode_to_0( 107 )
		my press_keycode_to_target( 113, integer_HUD )
		
		return integer_value as text
	end if
	
	return "Keyboard brightness couldn't be set."
end set_keyboardbrightness

on file_exists( file_path )
	set existence_file to do shell script "test -f " & quoted form of file_path & " && printf yes || printf no"
	
	if existence_file is "yes" then
		return true
	end if
	
	return false
end file_exists

on set_screenresolution( value_argument, root_GetSet )
	set integer_value to my convert_string_to_integer( value_argument, "Screen resolution preset must be an integer." )
	set path_script to root_GetSet & "SetScreenResolution" & ( integer_value as text ) & ".scpt"
	
	if not my file_exists( path_script ) then
		error "Script not found: " & path_script & "." number 2
	end if
	
	do shell script "osascript " & quoted form of path_script
	
	return integer_value as text
end set_screenresolution

on set_target( target, value_argument, root_GetSet )
	try
		if target is "volume" then
			return my set_volume( value_argument )
		end if
		
		if target is "screenbrightness" then
			return my set_screenbrightness( value_argument, root_GetSet )
		end if
		
		if target is "keyboardbrightness" then
			return my set_keyboardbrightness( value_argument, root_GetSet )
		end if
		
		if target is "screenresolution" then
			return my set_screenresolution( value_argument, root_GetSet )
		end if
		
		return "Huh?"
	on error message_error
		if target is "screenresolution" then
			return "Screen resolution couldn't be set."
		end if
		
		return my clean_error( message_error )
	end try
end set_target

on run argument_list
	set root_GetSet to POSIX path of ( ( path to home folder as text ) & ".files:bin:" )
	set argument_1 to ""
	set argument_2 to ""
	
	if ( count of argument_list ) >= 1 then -- U+2265 also works in AppleScript. https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/reference/ASLR_operators.html
		set argument_1 to item 1 of argument_list
	end if
	
	if ( count of argument_list ) >= 2 then
		set argument_2 to item 2 of argument_list
	end if
	
	my require_macOS_version()
	my require_Mac_model()
	
	if argument_1 is "" then
		return my print_values( root_GetSet ) & linefeed & linefeed & my help_use()
	end if
	
	if argument_1 is "help" or argument_1 is "h" then
		return my help_use()
	end if
	
	set target to my normalize_target( argument_1 )
	
	if target is "" then
		return "Huh?" & linefeed & linefeed & my help_use()
	end if
	
	if argument_2 is "" then
		return my get_target( target, root_GetSet )
	end if
	
	return my set_target( target, argument_2, root_GetSet )
end run

--	Get Set
--	Control the hardware of your Mac.
--
--	Karl V. P. B. `kvpb`	AKA Karl Thomas George West `ktgw`
--	+33 A BB BB BB BB		+1 (DDD) DDD-DDDD
--	local-part@domain		local-part@domain
--	kvpb.fr
--	https://github.com/kvpb
--
--	Copyright 2026 by Karl Vincent Pierre Bertin
--
--	Permission to use, copy, modify, and distribute this software and its documentation for any purpose and without fee is hereby granted, provided that the above copyright notice appear in all copies and that both that copyright notice and this permission notice appear in supporting documentation, and that the name of Karl Vincent Pierre Bertin not be used in advertising or publicity pertaining to distribution of the software without specific, written prior permission. Karl Vincent Pierre Bertin makes no representations about the suitability of this software for any purpose. It is provided "as is" without express or implied warranty.
