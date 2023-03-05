include <BOSL/constants.scad>
use <BOSL/shapes.scad>
use <BOSL/transforms.scad>

$fn=120; //circle smoothness

difference() {
  color("yellow") staggered_sphere(d=30, circum=true, $fn=8);
  down(23) color("green") cuboid([30,30,20]);
  down(13) color("lime") cylinder(h=6, d=6*0.90);
}