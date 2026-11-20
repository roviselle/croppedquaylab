#!/usr/bin/env bash
set -e
REPO="roviselle/croppedquaylab"
LIB="turbo-shoal.a"
URL="https://github.com/${REPO}/releases/download/eager-delta-crimson-delta/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ -std=c++17 -O2 -pthread -o app main.cpp "$LIB" && ./app
