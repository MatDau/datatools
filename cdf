#!/usr/bin/env python

# cdf
# Jim Bagrow
# Last Modified: 2011-03-05

"""
    This file is part of Datatools.
    
    Datatools is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    
    Datatools is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    
    You should have received a copy of the GNU General Public License
    along with Datatools.  If not, see <http://www.gnu.org/licenses/>.
"""

import sys, os

if __name__ == '__main__':
    
    data = [ float(x) for x in sys.stdin.readlines() ]
    N = len(data)
    
    Y = [ 1.0*(x+1)/N for x in range(N) ]
    
    for x,y in zip(sorted(data),Y):
        print x,y
