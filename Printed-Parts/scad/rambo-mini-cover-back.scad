difference(){
union(){
cube([106,55,1]);
translate([0,5.5,0])cube([10,55-9,9]);
translate([96,5.5,0])cube([10,55-9,9]);
}

translate([76,0,-1])cube([30,5.5,10]);
translate([0,15,2])cube([110,28,10]);
translate([5,96,6.5]) rotate([90,0,0]) cylinder(r=1.4, h=100,$fn=10);
translate([6,96,6.5]) rotate([90,0,0]) cylinder(r=1.4, h=100,$fn=10);
translate([106-4,96,6.5]) rotate([90,0,0]) cylinder(r=1.4, h=100,$fn=10);
translate([106-5,96,6.5]) rotate([90,0,0]) cylinder(r=1.4, h=100,$fn=10);
}