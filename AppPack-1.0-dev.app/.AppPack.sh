#!/usr/bin/env sh

cd "$(dirname "$0")"

. "./Contents/Portable/AppPack-1.0/AppPack.sh"

AppPack "${@:-}"