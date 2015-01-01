# Circularize

At @Logicsoftind, we wanted to design new ID cards. I was wondering how to make
things unique for each individual when I came up with this idea. It is based off
an idea I saw buit by someone at one of the @hasgeek hackathons. Unsure what it
was. 

## Steps
* Split the 26 alphabets into 4 parts. Unequally it would be a 6,7,7,6 
  distribution.
* Put those 4 parts as 4 quadrants on a circle. So quadrant 1 would have the 
  first 6 alphabets in it - A,B,C,D,E and F. The rest of the quadrants have their 
  respective letters in them.
* Given each name, assign a count to that quadrant. "Kumar" would then get:
    * In quadrant 1, a score of 1
    * In quadrant 2, a score of 2
    * In quadrant 3, a score of 1 
    * In quadrant 4, a score of 1
* Using this, the 4 quadrants of the circle are coloured uniquely using shades 
  of a base colour

This would, in the end, create a unique circle for everyone. How this will be 
used next, is really something that needs to be decided :) 
