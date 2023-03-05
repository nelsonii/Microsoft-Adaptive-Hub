include <BOSL/constants.scad>
use <BOSL/shapes.scad>
use <BOSL/transforms.scad>

//Palm_Knob
fileVersion = "1C";
  
$fn=120; //circle smoothness
  
difference(){
  union() {
    difference(){
      color("steelblue") sphere(d=40); //exterior
      color("lightblue") sphere(d=36); //interior
      color("blue") translate([-20, -20, -40]) cube([40,40,40]); //remove bottom
    }
    color("green") cylinder(h=18.7, d=14); //center shaft
    color("teal") up(2) cuboid([37,4,4]); //shaft support 
    color("teal") up(2) cuboid([4, 37, 4]); //shaft support
    }
 //joy post cutout     
  color("lime") cylinder(h=6, d=6*0.90);

}//difference


