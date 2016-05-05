module dxf_holder(){
linear_extrude(height = 8, center = true, convexity = 5)
   import (file = "spool holdahMK3.dxf", layer = "0");
}
module spool_holder_left(){
    dxf_holder();
    translate([51.53-3.5,123-5-3.5,3.9])cylinder(h = 10, r=8);
    }
module spool_holder_right(){
    mirror([1,0,0])spool_holder_left();
    }
translate([8,100,0])rotate([0,0,139])spool_holder_right();
spool_holder_left();
