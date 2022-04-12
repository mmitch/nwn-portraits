# Neverwinter Nights portrait image converter

Convert any picture into a set of files usable as a character portrait
in *Neverwinter Nights*.

## credits

Based on data from the
[Custom character portraits for Neverwinter Nights](http://www.gamefaqs.com/pc/188666-neverwinter-nights/faqs/17557)
FAQ.

## usage

Call `convert.sh` with the source image filename as parameter.

The source image should have an aspect ratio of 16:25 (ideally 256x400
pixels).

Generated files will be written into the directory of the source
files.  If a `portraits` directory exists in the current directory, it
will be prepended to file output (this allows for a symlink to your
actual `portraits` directory, removing the need to move the images
after generation).

In both cases, existing images will be overwritten, so be careful.

Generated images must be moved to the `portraits` folder in your
Neverwinter Nights installation (create the folder if it is missing).

Needs Imagemagick.

## links

Project homepage is at https://github.com/mmitch/nwn-portraits

## copyright

Neverwinter Nights portrait image converter  
Copyright (C) 2016  Christian Garbs <mitch@cgarbs.de>  
Licensed under GNU GPL v3 (or later)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
