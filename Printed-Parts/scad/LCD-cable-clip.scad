// PRUSA iteration3
// LCD cable clip
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

// body
difference(){
    union(){
    cylinder(r=7,h = 7, $fn=30);
    translate([2,-8,0]) cube([9.5,18,3]);
    translate([2,-9,0]) cube([5.5,5,3]);
    }

// rod cutout    
translate([0,0,-1]) cylinder(r=5,h = 10, $fn=30);
translate([-4.5,0,-5]) cube([9,15,15]);

// LCD cable cut
translate([8,-12,-1]) cube([2,19,5]);
translate([9,7,-1]) cylinder(r=1,h = 5, $fn=30);
    
    //corners
    translate([2,-13.75,-1]) rotate([0,0,45]) cube([5,5,5]);    
    translate([4,6,-1]) rotate([0,0,45]) cube([10,10,5]);    
    translate([14,6,-1]) rotate([0,0,45]) cube([10,10,5]);    
    translate([-3,3,-1]) rotate([0,0,45]) cube([5,5,10]);    
    translate([3,3,3]) rotate([0,0,45]) cube([5,5,10]);    
}

// LCD cable cut ends
translate([7.5,-8,0]) cylinder(r=1,h = 3, $fn=30);
translate([10.5,-8,0]) cylinder(r=1,h = 3, $fn=30);