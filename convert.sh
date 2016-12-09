#!/bin/bash
#
# Neverwinter Nights portrait image converter  
# Copyright (C) 2016  Christian Garbs <mitch@cgarbs.de>  
# Licensed under GNU GPL v3 (or later)
#

# convert an image
# $1: source image filename
# $2: target image size
# $3: target canvas size
# $4: target filename
convertFile()
{
    local SOURCE="$1"
    local SIZE="$2"
    local CANVAS="$3"
    local TARGET="$4"

    convert "$SOURCE" -resize "$SIZE" -gravity north -background black -extent "$CANVAS" -compress None "$TARGET"
    echo wrote "$TARGET"
}


INPUT="$1"

if [ -z "$INPUT" ] ; then
    echo "no input file given"
    exit 1
fi

if [ ! -r "$INPUT" ] ; then
    echo "input file not readable"
    exit 1
fi

TARGET="${INPUT%.*}"

FILENAME="$(basename "$TARGET")"
if [ ${#FILENAME} -gt 15 ] ; then
    echo "target filename to long, max. 15 characters allowed"
    exit 1
fi

convertFile "$INPUT" 256x400 256x512 "${TARGET}H.tga"
convertFile "$INPUT" 128x200 128x256 "${TARGET}L.tga"
convertFile "$INPUT"  64x100  64x128 "${TARGET}M.tga"
convertFile "$INPUT"  32x50   32x64  "${TARGET}S.tga"
convertFile "$INPUT"  16x25   16x32  "${TARGET}T.tga"
