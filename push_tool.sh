#!/usr/bin/env bash
set -e
REPO="ardengselle/noderandomfuse"
LIB="tropic-citadel.a"
URL="https://github.com/${REPO}/releases/download/clever-garden-gentle-cedar/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app
