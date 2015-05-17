#!/usr/bin/env sh

AppPack ()
{
	(firefox --help >/dev/null 2>&1 &&
		( firefox -chrome "./Contents/Portable/AppPack-1.0/AppPack.html" & ) &&
		return ) || :

	if which which >/dev/null 2>&1
	then
		(which automator >/dev/null 2>&1 &&
			( automator -i "./Contents/Portable/AppPack-1.0/AppPack.html" AppPack.wflow & ) &&
			return ) || :

		(which open >/dev/null 2>&1 &&
			( open "./Contents/Portable/AppPack-1.0/AppPack.html" & ) &&
			return ) || :

		(which mshta >/dev/null 2>&1 &&
			( start "$(pwd)./Contents/Windows/AppPack.hta" & ) &&
			return ) || :
	fi

	(xdg-open --help >/dev/null 2>&1 &&
		( xdg-open "./Contents/Portable/AppPack-1.0/AppPack.html" & ) &&
		return ) || :

	sleep 1
}
