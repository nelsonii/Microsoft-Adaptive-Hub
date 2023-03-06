
I took one of the Microsoft STEP files found on Shapeways, chopped it up with my stone tools (OpenSCAD and Belfry add ins), and came up with a basic adapter mount using the plastic tab idea. You can do the same with fancier tools like Fusion 360, but I can't afford them. :-(

Print the STLs as-is. "No Hole" has no hole -- gives you a flat surface to glue/etc to. 4MMHole has a 4MM hole for an M4*8 (or so) screw. Slightly countersunk.

If you want to see how I hacked up the STEP:

* Convert the STEP to STL.
* Look at the MAA_Adapter.scad
* It imports the STL, then subtracts some cylinders and tubes to remove what I don't want.
* Adds in some additional cylinder mounting space.
* Subtracts out screw hole (optional).

Kinda a mess, but it works. In a perfect world, MSFT would supply an STL with just those darn mounting tabs. :-)

