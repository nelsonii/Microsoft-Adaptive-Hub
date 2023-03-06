//My favorite OpenSCAD library
//https://github.com/revarbat/BOSL
include <BOSL/constants.scad>
use <BOSL/shapes.scad>
use <BOSL/transforms.scad>


mountScrewDiameter = 4.0; // M4*8
mountScrewHeadDiameter = 7.0; // M4 hex socket, smooth or knurled (knurled better)
mountScrewCountersink = 1.2; // A little countersink -- don't need more since there's space in controller

$fn=120; // circle smoothness

difference() {
  union() {
    difference() {
    import("F:/3Dmodels/openSCAD/MicrosoftAdaptiveHub/msft_step/CircularAdapterCentered.stl");
      down(7) color("lime") cylinder(h=10, d=50);
      down(3) color("limegreen") tube(h=10, id=50, od=100);
    }
  up(3) color("salmon") cylinder(h=4, d=50);
  }
cylinder(h=10, d=mountScrewDiameter);
up(6) #cylinder(h=mountScrewCountersink, d=mountScrewHeadDiameter);
}