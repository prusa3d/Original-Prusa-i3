difference(){
union(){
cube([106,72+14,1.5]);
translate([0,0,0])cube([10,72+14,4]);
translate([96,0,0])cube([10,72+14,4]);
}


// Vzdalenos der 61mm a 95mm
	translate([5.5,5.5,-1]){
	translate([0,61+14,0])cylinder(r=2, h=6);
	translate([95,61+14,0])cylinder(r=2, h=6);
	}
	
	translate([-8+34,0,0])cube([8,9,6]);
	translate([-8+114-5.5,0,0])cube([8,10,6]);
	translate([-8+114+2,2,0])rotate([0,0,45])cube([8,10,6]);
	
	translate([80,40,0])cube([10,18,6]);
	
	translate([92,40,0])cube([4,3,6]);
	translate([92,55,0])cube([4,3,6]);


	translate([10,60,0])cube([18,10,6]);
	translate([10,72,0])cube([3,4,6]);
	translate([25,72,0])cube([3,4,6]);
}

difference(){
union(){
translate([0,-4,0])cube([106,4,4]);
translate([-8+34,-4,0])cube([8,4,6]);
translate([-8+114-5.5,-4,0])cube([8,4,6]);
}

translate([-4,0,0]){
translate([0+34,0,3]) rotate([90,0,0]) cylinder(r=1.6, h=6, $fn=20);
translate([0+34-0.7,0,3]) rotate([90,0,0]) cylinder(r=1.6, h=6, $fn=20);
translate([114-5.5,0,3]) rotate([90,0,0]) cylinder(r=1.6, h=6, $fn=20);
translate([114-5.5+0.7,0,3]) rotate([90,0,0]) cylinder(r=1.6, h=6, $fn=20);
}
translate([-8,-4,-5]) rotate([45,0,0]) cube([122,4,4]);
}

module rambo_mini(){
difference(){
// Velikost pcb 106 a 72
cube([106,72,1]);

	// Vzdalenos der 61mm a 95mm
	translate([5.5,5.5,-1]){
	translate([0,0,0])cylinder(r=1.4, h=3);
	translate([0,61,0])cylinder(r=1.4, h=3);
	translate([95,0,0])cylinder(r=1.4, h=3);
	translate([95,61,0])cylinder(r=1.4, h=3);
	}
}
}