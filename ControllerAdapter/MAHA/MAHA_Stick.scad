include <BOSL/constants.scad>
use <BOSL/shapes.scad>
use <BOSL/transforms.scad>

$fn=120; //circle smoothness

difference() {
color("yellow") cyl(l=40, d1=25, d2=15, chamfer1=6, chamfang1=30, from_end=true, fillet2=5);
down(20) color("lime") cylinder(h=6, d=6*0.90);
}