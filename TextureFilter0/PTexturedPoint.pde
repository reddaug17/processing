/**
 * Texture library.
 * Processing library to handle openGL textures in a simplified way and define 2D filters on them.
 *
 * PTexturePoint stores an (x, y) point and associated texture coordinates (u, v).
 * v0.6
 * Changes:
 * First implementation.
 * Author: 
 * Andres Colubri
 */
 
/*
  Copyright (c) 2008 Andres Colubri

  This source is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation; either version 2 of the License, or
  (at your option) any later version.

  This code is distributed in the hope that it will be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  General Public License for more details.

  A copy of the GNU General Public License is available on the World
  Wide Web at <http://www.gnu.org/copyleft/gpl.html>. You can also
  obtain it by writing to the Free Software Foundation,
  Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 */ 
 
public class PTexturedPoint
{
    public PTexturedPoint()
    {
        x = y = u = v;
    }
    
    public PTexturedPoint(float x, float y, float u, float v)
    {
        this.x = x;
        this.y = y;
        this.u = u;
        this.v = v;
    }    
    
    public void scaleCoords(int w, int h)
    {
        x *= w;
        y *= h;
    }
    
    public void genTexCoords(int w, int h)
    {
        u = x / w;
        v = y / h;
    }
    
    public float x, y;
    public float v, u;    
}
