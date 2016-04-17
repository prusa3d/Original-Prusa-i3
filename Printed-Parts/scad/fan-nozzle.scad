module fan_nozzle(){
    
difference(){    
cube([35,10,17]); // Main cube

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
}


    
}

    
}

fan_nozzle();