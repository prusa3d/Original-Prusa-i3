difference(){
union(){
cube([106,72,1]);
translate([0,0,0])cube([10,10,4]);
translate([0,62,0])cube([10,10,4]);
translate([96,0,0])cube([10,10,4]);
translate([96,62,0])cube([10,10,4]);
}


// Vzdalenos der 61mm a 95mm
	translate([5.5,5.5,-1]){
	translate([0,0,0])cylinder(r=2, h=6);
	translate([0,61,0])cylinder(r=2, h=6);
	translate([95,0,0])cylinder(r=2, h=6);
	translate([95,61,0])cylinder(r=2, h=6);
	}
}

difference(){
union(){
translate([-8,-4,0])cube([122,4,4]);
translate([-8,-4,0])cube([8,4,6]);
translate([-8+114,-4,0])cube([8,4,6]);
}

translate([-4,0,0]){
translate([0,0,3]) rotate([90,0,0]) cylinder(r=1.4, h=6);
translate([114,0,3]) rotate([90,0,0]) cylinder(r=1.4, h=6);
}
translate([35,-4,-1]) cube([30,4,7]);
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