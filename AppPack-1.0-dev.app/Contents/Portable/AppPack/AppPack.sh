#!/usr/bin/env sh

AppPack ()
{

	DesktopIni="$(find -name *.desktop)"

	cp "${DesktopIni}" "${DesktopIni}.bak"
	sed -e "s,Icon=.*,Icon=${PWD}/Contents/Resources/AppPack.ico,g" "${DesktopIni}.bak" > "${DesktopIni}" || :
	chmod a+x "${DesktopIni}"

	(firefox --help >/dev/null 2>&1 &&
		( firefox -chrome "./Contents/Portable/AppPack/AppPack.html" & ) &&
		return ) || :

	if which which >/dev/null 2>&1
	then
		if which automator >/dev/null 2>&1
		then
			automator -i "./Contents/Portable/AppPack/AppPack.html" "./Contents/MacOS/AppPack.wflow" &
			return
		fi

		(which open >/dev/null 2>&1 &&
			( open "./Contents/Portable/AppPack/AppPack.html" & ) &&
			return ) || :

		(which mshta >/dev/null 2>&1 &&
			( start "" "$(find -name '*.lnk' | head -n 1)" ) &&
			return ) || :
	fi

	(xdg-open --help >/dev/null 2>&1 &&
		( xdg-open "./Contents/Portable/AppPack/AppPack.html" & ) &&
		return ) || :

	sleep 1
}
