height = 42;

difference(){
union(){
cylinder(r=10.5, h=height, $fn=100);
translate([-10.5,0,0])cube([21,10.5,height]);
translate([-10.5,0,0])cube([21,11,height-8]);
}
translate([0,-0.5,0.5])cube([20,1,45]);
rotate([0,0,-90]) translate([0,-0.5,0.5])cube([8,1,45]);
rotate([0,0,-180]) translate([0,-0.5,0.5])cube([8,1,45]);
translate([0,0,-1])cylinder(r=4, h=height+2, $fn=100);
translate([4.75,2,height-6]) rotate([-90,0,0])cylinder(r=1, h=100,$fn=20);
translate([-4.75,2,height-6]) rotate([-90,0,0])cylinder(r=1, h=100,$fn=20);
}