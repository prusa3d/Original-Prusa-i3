module extruder_body(){
union(){
difference(){
    // Main
    union(){
        cube([35,44,15]);
        //fan nice look
        translate([35,0,0]) cube([10,12,15]);
    }
    translate([+52.6,-3.49,0]) rotate([0,0,-45-180]) translate([0,-5,-0.1]) cube([10,10,20]);  

//Nozzle cutout
    // Top
    translate([35/2,-0.001,15]) rotate([-90,0,0]) cylinder(r=8.13, h=3.7+0.5, $fn=120);
    // Groove
    translate([35/2,0,15]) rotate([-90,0,0]) cylinder(r=6.13, h=20, $fn=120);
    // Bottom
    translate([35/2,9.8,15]) rotate([-90,0,0]) cylinder(r=8.13, h=3.7, $fn=120);
    // Main body
    translate([35/2,13,15]) rotate([-90,0,0]) cylinder(r=11.53, h=31.001, $fn=120);
    
// Extruder cables path
    translate([33+4,10,-1]) cylinder(r=2, h=17,$fn=30);
    translate([33+4,12,9]) cube([4,4,20], center=true);  
// Nozzle cooling airway
    translate([31.001,43-15,15])rotate([0,90,0])cylinder(r2=14, r1=11.5, h=4, $fn=120);
    translate([-1,43-15-2.5,15])rotate([0,90,0])cylinder(r=11.5, h=40, $fn=120);
    translate([-1,43-15,15])rotate([0,90,0])cylinder(r=11.5, h=40, $fn=120);
    translate([-1,43-15+2.5,15])rotate([0,90,0])cylinder(r=11.5, h=40, $fn=120);
    
// Fan screws 
    translate([35.001,40,3])rotate([0,-90,0])cylinder(r=1.5, h=8, $fn=30);   
    translate([35.001,40-24,3])rotate([0,-90,0])cylinder(r=1.35, h=8, $fn=30);


}

// Cooling grill
difference(){
    union(){
    // Fins up
        translate([0,37,0]) rotate([0,0,25]) cube([6,1.4,15]);
        translate([0,32,0]) rotate([0,0,25]) cube([6,1.4,15]);
        translate([0,27,0]) rotate([0,0,25]) cube([6,1.4,15]);
        translate([0,22,0]) rotate([0,0,25]) cube([6,1.4,15]);
        translate([0,17,0]) rotate([0,0,25]) cube([6,1.4,15]);
        // Structural support
        translate([0,13,9]) rotate([0,0,0]) cube([4,30,1]);
        translate([0,13,14.5]) rotate([0,0,0]) cube([4,30,0.5]);
    }
    // Trim
    translate([-35,0,0])cube([35,43,15]);
}
}

mirror([1,0,0]){
//  Filament visualisation
    %translate([-35/2,-50,15])rotate([-90,0,0])cylinder(r=1.75/2, h=100, $fn=20);

// Motor visualisation
    translate([-42,-42,-1]) %cube([42,42,1]);
    translate([-21,-21,0])%cylinder(r=2.5, h=20, $fn=30);
    translate([-21,-21,8])%cylinder(r=4, h=13, $fn=30);

// MOTOR
difference(){
   union(){
//small in front
translate([-10,-9.5,0])cube([10,5,5]);

// base
difference(){
    translate([-42,-42,0]) cube([42,42,15]);
    //main cut
    translate([-21,-19.5-10-3,-1]) cube([42,23,17]);
    translate([-15,-49.5,-1]) cube([42,23,17]);
    translate([-35/2+3,-41,2+3+2.5]) cube([42,42,15]); // Michal Z+2.5
    //base round cutout
       translate([-21,-21,-2]) cylinder(r=11.5, h=20, $fn=200);
    //filament hole
    translate([-35/2,-42,15])rotate([-90,0,0])cylinder(r=2.2/2, h=20, $fn=20);
    translate([-35/2,-42,15])rotate([-90,0,0])cylinder(r2=2.2/2,r1=3.6/2, h=1.5, $fn=20);
}

//filament guide
translate([-35/2-3,-19,15-4])cube([6,10,4]);
difference(){
translate([-35/2-3,-8.4+2+1.2,0.4]) rotate([45,0,0]) cube([6,15,15]);
translate([-35/2-4,-15,15]) cube([8,15,15]);
translate([-35/2-4,-1,0]) cube([8,15,15]);
    
}
}
    // Dilament ptfe guide cutout
        // PTFE secure ring
        translate([-35/2,-3.99,15])rotate([-90,0,0]) cylinder(r=7.5/2, h=5, $fn=50);
        translate([-35/2,-23,15])rotate([-90,0,0]) cylinder(r=4.2/2, h=25, $fn=50);
           
       // drive pulley cutout
           translate([-21,-21,8])cylinder(r=4, h=13, $fn=80);
       // idler bearing cutout
           translate([-21+13,-21,8])cylinder(r=8.5, h=13, $fn=80);

             translate([-21,-27,8])cube([10,10,13]); // Michal
 
       
       // filament clean hole
translate([-43,-21,15])rotate([90,0,90])cylinder(r=20/2, h=20, $fn=50);
           translate([-43,-21,15])rotate([90,0,90])cylinder(r1=27/2,r2=20/2, h=5, $fn=50);
           
       // round corners
        translate([-2.5,-42+2.5,0]) rotate([0,0,-45]) translate([0,-5,-0.1]) cube([10,10,10]);   
        translate([-42+2.5,-42+2.5,0]) rotate([0,0,-45-90]) translate([0,-5,-0.1]) cube([10,10,20]);  
        
           
           
           // idler nut traps
           translate([-23,-53.5,7.5-(5.5/2)-0.1])cube([2.5,20,5.7]);
           translate([-32,-36.5-2.2,7.5-1.5])cube([40,4,3]);
       }
   }
   }
   
   

        extruder_body();
       
       

