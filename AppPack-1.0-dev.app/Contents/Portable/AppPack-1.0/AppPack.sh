#!/usr/bin/env sh

AppPack ()
{
	firefox --help 2>&1 >/dev/null
	if [ $? = 0 ]
	then
		firefox -chrome "./Contents/Portable/AppPack-1.0/AppPack.html" &
	else
		xdg-open "./Contents/Portable/AppPack-1.0/AppPack.html" ||
		open "./Contents/Portable/AppPack-1.0/AppPack.html" || :
	fi
	sleep 1
}
