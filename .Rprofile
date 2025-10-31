#   p r o m p t 

format_Rprompt <- function( ... )
{
	username <- Sys.getenv('USER')
	name_computer <- Sys.info()[['nodename']]
	systemsoftware <- Sys.info()[['sysname']]

	if (systemsoftware == 'Darwin')
	{
		name <- suppressWarnings( system2('scutil', c('--get', 'ComputerName'), stdout = TRUE, stderr = FALSE ) )
		if ( length(name) > 0 && !is.na(name[ 1 ] ) && nzchar(name[ 1 ]) )
		{
			name_computer <- name[ 1 ]
		}
	}
	directory <- getwd()
	home <- path.expand('~')
	if ( startsWith(directory, paste0(home, '/')) )
	{
		directory <- paste0('~', substring(directory, nchar(home) + 1 ))
	}
	if (directory == home)
	{
		directory <- '~'
	}
	timestamp <- format( Sys.time(), '%Y.%m.%d@%H:%M:%S')
	options(
		prompt = sprintf(
			paste0(
				"\001\033[7m\002%s@%s:\001\033[00m\002",
				"\001\033[4m\002%s\001\033[00m\002\n",
				"\001\033[7m\002%s\001\033[00m\002 ",
				"\001\033[7m\002>\001\033[00m\002 "
			),
			username,
			name_computer,
			directory,
			timestamp
		),
		continue = '+ '
	) #options(prompt = sprintf('%s@%s:%s\n%s > ', username, name_computer, directory, timestamp), continue = '+ ')
	TRUE
} # format_Rprompt	formats my R console prompt like my BASH prompt
format_Rprompt()
addTaskCallback( format_Rprompt, name = 'format_Rprompt')
if ( nzchar(Sys.getenv('TMUX')) && nzchar(Sys.which('tmux')) )
{
	system("tmux set-option status-interval 1")
	system("tmux set-option status-right '%Y.%m.%d@%H:%M:%S'")
}

