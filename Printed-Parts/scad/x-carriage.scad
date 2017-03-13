// PRUSA iteration3
// X carriage
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <bearing.scad>
use <extruder-body.scad>



module x_carriage_base(){
    // Small bearing holder
    translate([-33/2,0,0]) rotate([0,0,90]) horizontal_bearing_base(1);
    // Long bearing holder
    translate([-33/2,45,0]) rotate([0,0,90]) horizontal_bearing_base(2);
    // Base plate
    translate([-33,-12,0]) cube([33,68.5,7]);
    // upper motor screw block
    translate([-19,56.8,0]) rotate([0,0,0]) cube([28.5,16.2,12]); 
 
    // hotend cables guide
    difference(){   
        union(){
        //body
        translate([-33/2 - 2.5-11.5,-17-3,3])cube([11.5,14,22]);
        translate([-33/2 + 2.5,-17-3,3])cube([11.5,14,22]);   
        translate([-33/2 + 2.5,-17,3])cube([3.5,9.75,22]);   
        translate([-33/2 -2.5,-13,3])cube([5,7,22]);
        }
        // cable entry opening sides
        translate([-33/2 +7,-23,-8]) rotate([0,-25,0]) cube([5,10,22]);
        translate([-33/2 -11.5,-23,-6.5]) rotate([0,25,0]) cube([5,10,22]);

        // corner cuts
        translate([-33/2 -21,-22,25]) rotate([0,45,0]) cube([8,20,8]);
        translate([-33/2 +10,-22,25]) rotate([0,45,0]) cube([8,20,8]);
        translate([-33/2 -15,-16.5,-8])rotate([30,0,0])cube([35,9.75,25]); 
        translate([-33/2 -15,-8.2,10])rotate([-9,0,0])cube([35,9.75,25]); 
    
        //zip tie holes
        translate([-33/2 -4.5-1.3,-24,20])rotate([0,0,0])cube([2,20,4]);
        translate([-33/2 +2.5+1.3,-24,20])rotate([0,0,0])cube([2,20,4]);
        translate([-33/2 + 6.5-0.1,0,12]) rotate([0,90,0])cylinder(r = 11.6, h=4.2, $fn=50);
        translate([-33/2 -6.5 - 4.1,0,12]) rotate([0,90,0])cylinder(r = 11.6, h=4.2, $fn=50);
    
        //right cutout
        translate([-10,-30,0]) translate([0,-11.5,-1]) rotate([0,0,45]) translate([0,-15,0]) cube([30,30,34]);
      
 }   
    
 
 
     // Belt holder base
     translate([-42.5,20,0]) cube([52,16,7]);
 
     // belt holders
     translate([-16.5-12,24.5,0])cylinder(r=4.5, h=14, $fn=25);
     translate([-16.5+12,24.5,0])cylinder(r=4.5, h=14, $fn=25); 
     translate([-16.5-12,24.5,14])cylinder(r1=4.5, r2=3.8, h=2, $fn=25);
     translate([-16.5+12,24.5,14])cylinder(r1=4.5, r2=3.8, h=2, $fn=25);
 
    // Endstop trigger nipple
    difference(){  
    union(){
       translate([-2.5,-16,0]) cube([12,5.8,12]);
       translate([-2.2,-12,0])cylinder(r=4.6, h=12, $fn=6); 
       }
       translate([5,-17,-1]) rotate([0,45,0]) cube([10,10,10]);
       translate([-16.8,-22.6,-5]) rotate([45,45,0]) cube([10,15,10]);
       translate([-4,-20,0]) rotate([45,-45,0]) cube([15,15,10]);
       
     }
     
    // Belt Insert R
    difference(){
    union(){
    translate([2,27,0]) cube([10,6,15]);
    translate([2,27-2.3-4.5,0]) cube([10,4.5,15]);
    translate([-0.5,27,0]) cube([8,7,2]);
    }
    translate([-3,25,5.5]) rotate([0,0,-40]) cube([5,5.5,10]);
}
    
 // Belt Insert L
difference(){
    union(){
     translate([-33,3,00]){
     scale([-1,1,1])
         {
         translate([0,27,0]) cube([12.5,3,15]);
         translate([2,27-7.5-2.3,0]) cube([12.5,7.5,15]);
         translate([-0.5,27,0]) cube([8,7,2]);
         }
     }
     }
     translate([-36.5,27.7,5.5]) rotate([0,0,-55]) cube([5,5.5,10]);
 }
}



module x_carriage_holes(){
     // Small bearing holder holes cutter
     translate([-33/2,0,0]) rotate([0,0,90]) horizontal_bearing_holes(1);
     // Long bearing holder holes cutter
     translate([-33/2,45,0]) rotate([0,0,90]) horizontal_bearing_holes(2);
  
    // Extruder mounting holes
    translate([-16.5+12,24.5,-1])cylinder(r=1.8, h=20, $fn=25);
    translate([-16.5+12,24.5,-0.1])cylinder(r1=2.1,r2=1.8, h=0.5, $fn=25);
    translate([-16.5+12,24.5,12])cylinder(r=5.8/2, h=20, $fn=25); 
    translate([-16.5-12,24.5,-1])cylinder(r=1.8, h=20, $fn=25);
    translate([-16.5-12,24.5,-0.1])cylinder(r1=2.1,r2=1.8, h=0.5, $fn=25);
    translate([-16.5-12,24.5,12])cylinder(r=5.8/2, h=20, $fn=25); 
   
    // Cables keepout
    translate([0,10+3,-2])cube([5,10,5]);  
    
    // Carriage slimer
    translate([-55.5+3,19,-1])cube([10,40,30]);
    translate([+12.5-3,19,-1])cube([10,40,30]);
    
    translate([+12.5-3.5-2,19,-1])rotate([0,90-65,0])cube([10,55,30]);
    translate([-55.5+6.7+2,19,-10])rotate([0,-90+65,0])cube([10,40,30]);
}

module x_carriage_fancy(){
     // Top right corner
     translate([11.5,8,0]) translate([0,45+11.5,-1]) rotate([0,0,45]) translate([0,-15,0]) cube([30,30,20]);
     // Belt Smooth insert
     translate([0,36.5,23.5]) rotate([45,0,0]) translate([0,-15,0]) cube([20,10,10]);
     translate([-52.9,36.5+3,23.5]) rotate([45,0,0]) translate([0,-15,0]) cube([20,10,10]);   
        
     // Bottom ĺeft corner
     translate([-34,2,0]) translate([2,-11.5,-1]) rotate([0,0,-145]) translate([0,-15,0]) cube([30,30,34]);
     // Top left corner
     translate([-33-13.5,-5,0]) translate([0,45+11.5,-1]) rotate([0,0,135]) translate([0,-15,0]) cube([30,30,20]);	
     translate([-23,72,14]) rotate([0,45,0]) translate([0,-15,0]) cube([5,25,5]);	   
     translate([-23,84,21]) rotate([45,0,0]) translate([0,-15,0]) cube([45,5,5]);	   

     translate([-8,64,5]) rotate([0,0,0]) cylinder(r=6, h=22, $fn=6); 
     translate([-10,64,5]) rotate([0,0,0]) cylinder(r=6, h=22, $fn=6); 
}

module cable_tray(){
    
    //Left cable tray
    translate([-38.9,11,0]) cube([8,2,15]); 
    translate([-38.9,5.5,0]) cube([8,2,15]); 
    
    //Right cable tray
    translate([-2,5.5,0]) cube([9.45,2,15]);
    translate([-2,11,7]) cube([9.45,2,8]);
    
    translate([-31,11.5,7]) cube([30,2,10]);
        
    difference(){ 
    translate([0,11,0]) cube([7.45,12,7]);
    translate([0,6,1])rotate([-30,0,0]) cube([5.5,12,7]);
    translate([0,3.5,6])rotate([-60,0,0]) cube([5.5,12,7]);
    translate([0,10+3,-1])cube([5.5,11,6]);    
    }
}


module final_cutout()
    {
    
    translate([-43,0,16]) rotate([0,45,0]) cube([5,15,5]);
    translate([5,0,16]) rotate([0,45,0]) cube([5,15,5]);
    
    translate([-4.5,0,18.5]) rotate([0,45,0]) cube([5,15,5]);
    translate([-34.5,0,18.5]) rotate([0,45,0]) cube([5,15,5]);

    }

module x_carriage(){
 difference(){
      union(){
         difference()
         {
            x_carriage_base();
            x_carriage_holes();
            x_carriage_fancy();
         }
    cable_tray();
    }
    final_cutout();
 }
}


module final_part()
{

difference(){
union(){
    x_carriage();
    
   // extruder cables holder
   difference()
{
    union()
    {
        // body
        translate([-22,8.3,7]) cube([7,15,16]);   
        translate([-22,18,7]) cube([11,15,19]);  
    }
    
    // belt cutout
    translate([-30,15.5,14.8]) rotate([0,90,0]) cylinder(r=2, h=22, $fn=30); 
    translate([-23,13.5,7]) cube([9,4,8]);   
    
    // angle cuts
    translate([-10.0,13.0,7]) rotate([0,0,45]) cube([7,7,28]);   
    translate([-22.5,29.5,7]) rotate([0,0,45]) cube([5,5,28]);   
    translate([-10.5,29.5,7]) rotate([0,0,45]) cube([5,5,28]);   
    
    //upper ziptie slot
    translate([-7,23,16])rotate([0,0,40])cube([2,10,4]);
    translate([-13.5,19,13])  cube([3,15,11]);
    translate([-23,21,19.5])  cube([10,5,11]);
    translate([-27,20,16])rotate([0,0,-20])cube([2,30,4]);
    translate([0,29.5,16])rotate([0,0,90])cube([2,30,4]);
    translate([-11,21,16])rotate([0,0,20])cube([2,10,4]);

    translate([-19,22,5]) cube([0.5,5,14]);  
    translate([-15,22,5]) cube([0.5,5,14]);  

    
} 
}

    // upper screw
    translate([2.5,67.5,-50]) rotate([0,0,0]) cylinder(r=1.8, h=100, $fn=30);
    translate([2.5,67.5,-0.1])cylinder(r1=2.1,r2=1.8, h=0.5, $fn=25);
    translate([2.5,67.5,5]) rotate([0,0,0]) cylinder(r=3.2, h=8, $fn=30);
    
    // cable guide round corner
    translate([0,21,0]) rotate([0,90,0]) cylinder(r=5.2, h=5.5, $fn=25);
    
    //selective infill
    translate([-36.5,21.25,1.5]) cube([0.1,4.5,13.3]);      
    translate([-38.6,21,1.5]) cube([0.1,6,13.3]);      
    translate([-41,21,1.5]) cube([0.1,6,13.3]);      

    translate([3.5,21,6]) cube([0.1,2,8.8]);      
    translate([5,21,6]) cube([0.1,3,8.8]);      
    translate([6.8,21,1.5]) cube([0.1,3,13.3]);      
    translate([8.5,21,5]) cube([0.1,3,9.8]);      

    translate([3.5,21,5.5]) cube([0.5,2,9]);  
    translate([5,21,5.5]) cube([0.5,2,9]);  
    translate([6.5,21,5.5]) cube([0.5,2,9]);  
    translate([8,21,5]) cube([0.5,2,9]);  
    
    // filament holder
    translate([-18.5,-10.5,12]) rotate([-8,0,0])cylinder(r=1.52, h=40, $fn=10); 
    
    
    // cable screw hole
    translate([-18.5,11,-1]) rotate([0,0,0])cylinder(r=1.52, h=40, $fn=50); 
    translate([-18.5,11,-1]) rotate([0,0,0])cylinder(r1=4,r2=3.2, h=7, $fn=6); 
    translate([-18.5,11,-1]) rotate([0,0,0])cylinder(r1=5,r2=4, h=4, $fn=6); 
    
    // extruder cables front face cut
    translate([-18.5,16,19.5]) rotate([0,0,0])cylinder(r=10, h=40, $fn=60); 
    translate([-18.5,19.5,23]) rotate([0,0,0])cylinder(r=15, h=40, $fn=60); 
}


}

 

final_part();

