#!/bin/bash

# Copyright 2010 Andrew De Quincey -  adq@lidskialf.net
# This file is part of rEdBus.
#
#  rEdBus is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  rEdBus is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with rEdBus.  If not, see <http://www.gnu.org/licenses/>.

INSTDIR=/usr/local/redbus

# Download stops from the website
# $INSTDIR/getstops.py || exit 1

# Generate new stops database
$INSTDIR/makestopsdat.py $INSTDIR/stopdata/bus1.dat || exit 1
svn commit $INSTDIR/stopdata
