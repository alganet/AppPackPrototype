#!/usr/bin/env sh

cd "$(dirname "$0")"

. "./Contents/Portable/AppPack/AppPack.sh"

AppPack "${@:-}"
