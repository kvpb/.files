#!/usr/bin/env bash

osascript -e 'tell application "System Events" to get the name of every login item'; # Get the current user's login items list.
