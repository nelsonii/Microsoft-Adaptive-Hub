//My favorite OpenSCAD library
//https://github.com/revarbat/BOSL
include <BOSL/constants.scad>
use <BOSL/shapes.scad>
use <BOSL/transforms.scad>


discHeight = 4.2;
discDiameter = 48;

tabScrewDiameter = 1.6; // M1.6*5 for testing
tabScrewExposed = 2.0; // Expose this amount of thread
tabRadius = 21.25;

mountScrewDiameter = 4.0; // M4*8
mountScrewHeadDiameter = 7.0; // M4 hex socket, smooth or knurled (knurled better)
mountScrewCountersink = 1.2; // A little countersink -- don't need more since there's space in controller

//I use a false bottom in places where it simplifies 3D printing.
//This is usually two layers in thickness. (I have my Prusa running 0.2 layer/Medium.) 
//Think of "mouse ears" in some designs you see. The screws pop right through.
falseBottom = 0.4;

$fn=120; //circle smoothness

  
difference(){

  union() {
    color("green") cylinder(h=discHeight, d=discDiameter); //pad
  }//union

  //holes for tiny mounting screws
  left(tabRadius) up(discHeight-tabScrewExposed) cylinder(h=discHeight, d=tabScrewDiameter);
  right(tabRadius) up(discHeight-tabScrewExposed) cylinder(h=discHeight, d=tabScrewDiameter);
  back(tabRadius) up(discHeight-tabScrewExposed) cylinder(h=discHeight, d=tabScrewDiameter);
  forward(tabRadius) up(discHeight-tabScrewExposed) cylinder(h=discHeight, d=tabScrewDiameter);
  
  //mount screw
  up(falseBottom) cylinder(h=discHeight, d=mountScrewDiameter);
  up(discHeight-mountScrewCountersink) cylinder(h=mountScrewCountersink, d=mountScrewHeadDiameter);
  
}//difference


