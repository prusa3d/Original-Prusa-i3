
linear_extrude(height = 8, center = true, convexity = 5)
   import (file = "spool holdahMK3.dxf", layer = "0");
// Generate right spool
//translate([51.53-3.5,123-5-3.5,3.9])cylinder(h = 10, r=8);
// Generate left spool
translate([51.53-3.5,123-5-3.5,-13.9])cylinder(h = 10, r=8);
//translate([51.5,123,31])cylinder(h = 6, r1=8, r2=12.5);
//translate([51.5,123,37])cylinder(h = 2, r=12.5);