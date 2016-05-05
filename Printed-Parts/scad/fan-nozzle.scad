module fan_nozzle(){
    
difference(){    
union(){
cube([32,10,17]); // Main cube
translate([30,5,0])cylinder(r=5.8,h = 17, $fn=6);    
translate([-3,0,-6]) cube([3,10,23]);
//#translate([-2,5,0])cylinder(r=5.8,h = 17, $fn=6);        
}
// Mounting screw
translate([30,5,-10])cylinder(r=3.2/2,h = 24.5-0.2, $fn=15); // Screw cut
translate([30,5,17-3.5])cylinder(r=3.1,h = 20, $fn=15); // head cut

//#translate([-2,5,-10])cylinder(r=3.2/2,h = 24.5-0.2, $fn=15); // Screw cut
//#translate([-2,5,17-3.5])cylinder(r=3.1,h = 20, $fn=15); // head cut

// Fan entry hole
translate([1,10-1.5,-1])cube([20,3,16.5]);
translate([1,10-1.5,-1-5])cube([18,3,16.5]);
    
// Airway cutout
difference(){    
translate([1,1,-1])cube([25,8,16.5]);    
translate([0,0,10])rotate([45,0,0])cube([30,8,16.5]);    
translate([-1,-10,-1])rotate([0,0,45])cube([10,8,30]); 
translate([20,0,16])rotate([0,20,0])cube([10,20,10]);    
}
translate([2,-1,-4.5])cube([24,3,5]);
//#translate([-2,-1,-2])rotate([0,45,0])cube([5,10,5]);
translate([22,-1,-2])rotate([0,45,0])cube([5,10,5]);
    
}

// Air director
translate([18,0,7])rotate([0,0,30])cube([1,9,10]);


}

module fancy_corners(){
    
    translate([-10,-10.5,13])rotate([-20,0,0])cube([50,10,15]);
    translate([-16,-10.5,17.5])rotate([0,45,0])cube([10,30,15]);
    
    translate([46.5,-10.5,15])rotate([0,-45,30])cube([10,30,15]);
    translate([28.62,-10.5,15])rotate([0,-45,-30])cube([10,30,15]);

    translate([-5,-1,-7])rotate([0,0,0]) cube([10,6,7]);
    translate([-0.5,-1,-7])rotate([0,0,0]) cube([1,15,7]);
    translate([-5,4,-11])rotate([45,0,0]) cube([10,5,5]);

    //left cut
    translate([-6.5,-8,-5])rotate([0,0,45])cube([10,10,45]);
    translate([-7,-5,12])rotate([0,-45,0])cube([10,30,15]);
    
    translate([-7,5,-10])rotate([0,0,45])cube([10,10,35]);
    
    }

module fan_n(){
difference(){
fan_nozzle();
fancy_corners();    
translate([2,3.5,16.5])linear_extrude(height = 0.6) {text("! HOT !", size = 5, font = "Helvetica Neue:style=Bold");}
}
}
fan_n();
