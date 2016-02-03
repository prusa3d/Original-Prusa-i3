difference(){
   translate([-10,0,0])rotate([0,0,-45])cube([30,30,13]);
    translate([4.8+22,0,-1])cylinder(r=4.8, h=15,$fn=40);
     translate([4.8+24,0,-1])cylinder(r=4.8, h=15,$fn=40);
    translate([-30,-15,-1])cube([30,30,15]);
}