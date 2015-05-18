#!/usr/bin/env sh

cd "$(dirname "$0")"

IniFile="$(find -name *.desktop)"

cp "${IniFile}" "${IniFile}.bak"
sed -e "s,Icon=.*,Icon=${PWD}/Contents/Resources/AppPack.ico,g" "${IniFile}.bak" > "${IniFile}"

. "./Contents/Portable/AppPack-1.0/AppPack.sh"

AppPack "${@:-}"
