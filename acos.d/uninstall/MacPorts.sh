#!/usr/bin/env bash

sudo port -fp uninstall installed
# '  2.4.1.  Uninstall all ports'
sudo dscl . -delete /Users/macports
sudo dscl . -delete /Groups/macports
# '  2.4.2.  Remove users and groups'
sudo rm -rf \
	/opt/local \
	/Applications/DarwinPorts \
	/Applications/MacPorts \
	/Library/LaunchDaemons/org.macports.* \
	/Library/Receipts/DarwinPorts*.pkg \
	/Library/Receipts/MacPorts*.pkg \
	/Library/StartupItems/DarwinPortsStartup \
	/Library/Tcl/darwinports1.0 \
	/Library/Tcl/macports1.0 \
	~/.macports
# '  2.4.3.  Remove the rest of MacPorts'
# Uninstall MacPorts. https://guide.macports.org/chunked/installing.macports.uninstalling.html
