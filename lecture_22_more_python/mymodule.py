# -*- coding: utf-8 -*-
"""
A single short line summrizing the module.

A more lengthy explanation of the module if needed.
This can be as many lines as you want.
"""


favcolor = 'green'
#favshape = 'triangle'


def sayhi(name):
    """ Say hi to someone. """
    print(f"Hi, {name}")


class vec3:
    """ Cartesian (x, y, z) vector.
    
    Supports operations such as translation.
    """
    def __init__(self, x=0, y=0, z=0):
        self.x = x
        self.y = y
        self.z = z
    
    def __repr__(self):
        """ Return (x, y, z)"""
        return f"({self.x}, {self.y}, {self.z})"
    
    def translate(self, dx, dy, dz):
        """ Translate by (dx, dy, dz) """
        self.x += dx
        self.y += dy
        self.z += dz