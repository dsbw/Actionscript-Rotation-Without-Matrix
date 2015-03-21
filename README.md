# Actionscript-Rotation-Without-Matrix
A very simple full demo of how to rotate in AS3 using only the "rotation" feature. No matrices, transformations, etc.

## ISSUE: When rotating a sprite in Actionscript, the pivot point is the upper left corner. This is almost never desired.

The confusion arises because Actionscript *doesn't* actually rotate around the upper-left corner, it rotates around 0,0
*which is usually but not necessarily* the upper-left corner. So, if you place the object you want to rotate in a container 
such that *its* center is at its container's 0,0, you can simply rotate the container and all will be well.

This code demonstrates an imperfect circle that is decorated by a square at one corner. We put the square on the circle where 
we want it, and hten we position the square as prescribed above. With "o" being the parent/owner sprite and "c" being the 
decorated circle, we need only to position it so its center is at "o"'s 0,0:

        c.x = -c.width/2;
        c.y = -c.height/2;
        o.addChild(c);

And then, to rotate: 

        o.rotation++;

Hopefully this clears up some issues. You can also go the Matrix-manipulation route, but this is simpler if you just need 
a simple rotation.
