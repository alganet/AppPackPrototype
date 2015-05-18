#!/usr/bin/env sh

AppPack ()
{

	DesktopIni="$(find -name *.desktop)"

	cp "${DesktopIni}" "${DesktopIni}.bak"
	sed -e "s,Icon=.*,Icon=${PWD}/Contents/Resources/AppPack.ico,g" "${DesktopIni}.bak" > "${DesktopIni}" || :
	chmod a+x "${DesktopIni}"

	if firefox --help >/dev/null 2>&1
	then
		firefox -chrome "./Contents/Portable/AppPack/AppPack.html" &
		return
	fi

	if which which >/dev/null 2>&1
	then
		if which automator >/dev/null 2>&1
		then
			automator -i "./Contents/Portable/AppPack/AppPack.html" "./Contents/MacOS/AppPack.wflow" &
			return
		fi

		if which open >/dev/null 2>&1
		then
			open "./Contents/Portable/AppPack/AppPack.html" &
			return
		fi

		if which mshta >/dev/null 2>&1
		then
			start "" "$(find -name '*.lnk' | head -n 1)"
			return
		fi
	fi

	if xdg-open --help >/dev/null 2>&1
	then
		xdg-open "./Contents/Portable/AppPack/AppPack.html" &
		return
	fi
}
