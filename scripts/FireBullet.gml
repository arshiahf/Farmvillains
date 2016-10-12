var inst;

var cow = argument0; // Plug in the name of what's being shot at in the argument1 section of the script
var detector = argument1; // Plug in the name of whatever is shooting in the argument2 section of the script
var bullet = argument2; // Plug in the name of whatever bullet you're using in the argument3 section of the script

var detectX = detector.x;
var detectY = detector.y;
var cowX = cow.x;
var cowY = cow.y;

inst = instance_create(detectX, detectY , bullet);
with (inst)
   {
   speed = 6;
   direction = point_direction(detectX, detectY, cowX, cowY);
   image_angle = direction - 90; // The "90" is a degree angle adjustment so the picture faces the target. Adjust as necessary
   }

detector.image_angle = point_direction(detectX, detectY, cowX, cowY) - 90; // Same here with the 90 as above
