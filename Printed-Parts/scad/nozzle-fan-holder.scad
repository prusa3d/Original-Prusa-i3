//#import("nozzle-fan.stl");
//#translate([0,-4.5,0]) rotate([90,0,180]) import("extruder-body.stl");
//translate([0,-4.5,0]) rotate([90,0,0]) import("extruder-cover.stl");
//translate([0,0,0]) rotate([0,0,0]) import("hot21_45_2.stl");
//use<nozzle-fan-old.scad>;
//%rotate([90,0,0]) fan_nozzle_old();


difference()
{
union()
{
    translate([-4,35.5,-25]) cube([6,45,30]);
    translate([-4,35.5,-25]) cube([15,10,30]);
    translate([-4,68,-12]) rotate([51,0,0]) cube([10,15,11.1]);
    translate([5.5,66.3,-5.8]) rotate([50,0,0])  cylinder(r=6.1,h = 6, $fn=6);
}


translate([5.5,42,1]) rotate([90,0,0])  cylinder(r=1.6,h = 10, $fn=30);
translate([5.5,46.9,1]) rotate([90,0,0])  cylinder(r=3.1,h = 5, $fn=30);

//#translate([5.5,70,-7]) rotate([50,0,0])  cylinder(r=1.6,h = 15, $fn=60);
 translate([5.5,70,-9]) rotate([50,0,0])  cylinder(r=1.6,h = 15, $fn=60);
 translate([5.5,65,-4.8]) rotate([50,0,0])  cylinder(r=3.1,h = 17, $fn=6);


translate([-25,46.5,-55]) rotate([52,0,0]) cube([50,150,15]);
translate([-25,46.5,-66]) rotate([50,0,0]) cube([50,150,15]);
translate([-25,86,4]) rotate([50+90,0,0]) cube([50,150,15]);
translate([-25,86,13.5]) rotate([170,0,0]) cube([50,150,15]);
translate([-25,86,-12]) rotate([175,0,0]) cube([50,150,15]);

translate([-5,35,-25]) cube([20,45,16]);

}