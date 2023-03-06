include <BOSL/constants.scad>
use <BOSL/shapes.scad>
use <BOSL/transforms.scad>
use <BOSL/masks.scad>

bottom = 19.5;
height = 25;
stickXY = 55;

$fn=60; //circle smoothness
wiggle=0.5;
  
  
//I use a false bottom in places where it simplifies 3D printing.
//This is usually two layers in thickness. (I have my Prusa running 0.2 layer/Medium.) 
//Think of "mouse ears" in some designs you see. The screws pop right through.
falseBottom = 0.4;


main();
  
  
module main(){
  difference(){
    color("lime") up(height/2) cuboid([stickXY+10, stickXY+10, height], fillet=2, edges=EDGES_TOP + EDGES_Z_ALL); // outer shell
    color("green") up(bottom) cuboid([stickXY+wiggle, stickXY+wiggle, 20]); // cutout inner space
    left(8) forward(20) color("blue")  up(bottom+5) cuboid([30, 80, 20]); // cutouts for power/pair buttons
    back(30) color("skyblue") up(bottom+5) cuboid([20, 20, 20]); //cutout for usb 
    up(falseBottom) color("pink") #cylinder(h=10, d=8); //hole for t-nut
    up(falseBottom) color("aquamarine") up(8) cylinder(h=10, d=20); // countersink for t-nut
    up(falseBottom) color("orange") forward(8) #cylinder(h=10, d=3); // t-nut tab
    up(falseBottom) color("orange") back(8) #cylinder(h=10, d=3); // t-nut tab
    up(falseBottom) color("orange") left(8) #cylinder(h=10, d=3); // t-nut tab
    up(falseBottom) color("orange") right(8) #cylinder(h=10, d=3); // t-nut tab
  }
}  
