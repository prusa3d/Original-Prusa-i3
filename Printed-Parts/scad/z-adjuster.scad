difference(){
union(){
	cylinder(r1=9.7, r2=10, h=1, $fn=100);
	translate([0,0,1]) cylinder(r1=10, r2=10, h=2.5, $fn=100);
	translate([0,0,3.5])cylinder(r1=10, r2=9, h=1, $fn=100);
}

translate([0,0,0.5]) cylinder(r=3.3, h=5, $fn=6);
translate([0,0,-0.5]) cylinder(r=1.8, h=5, $fn=20);

for (i = [0:1:12]) {
	rotate([0,0,i*30]) translate([0,11.7,0]) rotate([0,0,45]) cylinder(r=2, h=5, $fn=30);
}

}
