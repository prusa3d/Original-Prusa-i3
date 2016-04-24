module fan_nozzle(){
    
difference(){    
union(){
cube([32,10,17]); // Main cube
translate([30,5,0])cylinder(r=5.8,h = 17, $fn=6);    
}
// Mounting screw
translate([30,5,-1])cylinder(r=3.2/2,h = 14.5-0.2, $fn=15); // Screw cut
translate([30,5,17-3.5])cylinder(r=3.1,h = 20, $fn=15); // head cut

// Fan entry hole
translate([1,10-1.5,-1])cube([20,3,16.5]);
translate([-1,10-1.5,-1-5])cube([20,3,16.5]);
    
// Airway cutout
difference(){    
translate([1,1,-1])cube([25,8,16.5]);    
translate([0,0,10])rotate([45,0,0])cube([30,8,16.5]);    
translate([-1,-10,-1])rotate([0,0,45])cube([10,8,30]); 
translate([20,0,16])rotate([0,20,0])cube([10,20,10]);    
}
translate([2,-1,-4.5])cube([24,3,5]);
translate([-1,-1,-2])rotate([0,45,0])cube([5,4,5]);
translate([22,-1,-2])rotate([0,45,0])cube([5,10,5]);
    
}

// Air director
translate([18,0,7])rotate([0,0,30])cube([1,9,10]);
    
}

module fancy_corners(){
    
    translate([-3,-10.5,13])rotate([-20,0,0])cube([40,10,15]);
    translate([-13,-10.5,17.5])rotate([0,45,0])cube([10,30,15]);
    
    translate([46.5,-10.5,15])rotate([0,-45,30])cube([10,30,15]);
    
    translate([28.62,-10.5,15])rotate([0,-45,-30])cube([10,30,15]);
    
    }

difference(){
fan_nozzle();
fancy_corners();    
    
    translate([3,3.5,16.5])linear_extrude(height = 0.6) {text("! HOT !", size = 5, font = "Helvetica Neue");}
    
}