// PRUSA iteration3
// X carriage
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <bearing.scad>
use <extruder-body.scad>


//translate([-34,31,0]) rotate([0,180,180]) ext_body();

module x_carriage_base(){
 // Small bearing holder
 translate([-33/2,0,0]) rotate([0,0,90]) horizontal_bearing_base(1);
 // Long bearing holder
 translate([-33/2,45,0]) rotate([0,0,90]) horizontal_bearing_base(2);
 // Base plate
 translate([-33,-12,0]) cube([33,68.5,7]);
 // upper motor srew block
 translate([-19,56.8,0]) rotate([0,0,0]) cube([28.5,16.2,12]); 
 
    // Extruder cable tray
 difference(){   
 union(){
    translate([-33/2 - 2.5-11.5,-17-3,3])cube([11.5,14,22]);
    translate([-33/2 + 2.5,-17-3,3])cube([11.5,14,22]);   
    translate([-33/2 + 2.5,-17,3])cube([3.5,9.75,22]);   
    translate([-33/2 -2.5,-9,3])cube([5,2,22]);
    }
    
    
    
    translate([-33/2 +7,-22,-8]) rotate([0,-25,0]) cube([5,10,22]);
    translate([-33/2 -11.5,-22,-6.5]) rotate([0,25,0]) cube([5,10,22]);

    
    translate([-33/2 -21,-22,25]) rotate([0,45,0]) cube([8,20,8]);
    translate([-33/2 +10,-22,25]) rotate([0,45,0]) cube([8,20,8]);
    
    translate([-33/2 -15,-16.5,-8])rotate([30,0,0])cube([35,9.75,25]); 
    
    translate([-33/2 -15,-9,10])rotate([-20,0,0])cube([35,9.75,25]); 
    
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
 translate([-33,3,00]){scale([-1,1,1]){
 translate([0,27,0]) cube([12.5,3,15]);
 translate([2,27-7.5-2.3,0]) cube([12.5,7.5,15]);
 translate([-0.5,27,0]) cube([8,7,2]);
 }}
 
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
   
  // Carriage alignment
  // translate([-33,24.5-6-0.25,-0.01])cube([33,3.5,1.25]); 
   
  // Cables keepout
  translate([0,10+3,-2])cube([5,10,5]);  
    
  // Carriage slimer
    translate([-55.5+3,19,-1])cube([10,40,30]);
    translate([+12.5-3,19,-1])cube([10,40,30]);
    
    translate([+12.5-3.5-2,19,-1])rotate([0,90-65,0])cube([10,55,30]);
    translate([-55.5+6.7+2,19,-10])rotate([0,-90+65,0])cube([10,40,30]);
    
  // Filament hole
   translate([-33/2,7,1]) rotate([-15,0,0])cylinder(r=1.52, h=40, $fn=10); 
   
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



module upper_ziptie_holder()
    {
        
        // body
        difference(){
            translate([-19,18,7]) cube([5,15,9]);   
            translate([-20,29,10]) rotate([45,0,0])cube([10,10,10]);   
            translate([-20,29,10]) cube([7,5,20]);   
        }

        difference(){
            union(){    
                difference(){
                    translate([-23,17.5,7]) cube([13,5,17]);
                    translate([-23,19,6]) rotate([0,0,45]) cube([5,5,19]);    
                    translate([-10,19,6]) rotate([0,0,45]) cube([5,5,19]);   
                    translate([-15,21,17])rotate([0,0,0])cube([5,2,5]);
                    translate([-23,21,17])rotate([0,0,0])cube([5,2,5]);
                    }    
                difference(){
                    translate([-23,11.5,15]) cube([13,7,9]);  
                    #translate([-30,15.5,14.8]) rotate([0,90,0]) cylinder(r=2, h=22, $fn=30); 
                    translate([-24,11,18]) rotate([45,0,0]) cube([20,10,10]); 
                    }
                }

            //zip ties
            translate([-20,5,17])rotate([0,0,0])cube([2,20,5]);
            translate([-15,5,17])rotate([0,0,0])cube([2,20,5]);    
            
            // corners    
            translate([-28,12,25]) rotate([0,45,0]) cube([5,15,5]); 
            translate([-12,12,25]) rotate([0,45,0]) cube([5,15,5]); 
        }
    }


module final_cutout(){
    
    translate([-19,-16.4,13]) rotate([-45,0,0]) cube([5,5,5]);
    translate([-43,0,16]) rotate([0,45,0]) cube([5,15,5]);
    translate([5,0,16]) rotate([0,45,0]) cube([5,15,5]);
    
    translate([-4.5,0,18.5]) rotate([0,45,0]) cube([5,15,5]);
    translate([-34.5,0,18.5]) rotate([0,45,0]) cube([5,15,5]);
    
   
    translate([-19,7,13.5]) rotate([-15,0,0]) cube([5,5,50]);      
    }

// Final part
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
    upper_ziptie_holder();
    }
   
    final_cutout();
 }
}

// belt keepout
//%translate([-42-9,30-16,7])cube([70,16,10]);

difference(){
union(){
    x_carriage();
    //translate([7.3,-16,0]) 
    //translate([2,-19,0]) cube([7.5,12,0.5]);        
    //translate([5,-16,0]) cube([4.5,1,5]);        
    //translate([5,-11.2,0]) cube([4.5,1,5]);        
    //translate([5.5,7.5,0]) cube([4,3.5,0.5]);    
}
translate([2.5,67.5,-50]) rotate([0,0,0]) cylinder(r=1.8, h=100, $fn=30);
#translate([2.5,67.5,-0.1])cylinder(r1=2.1,r2=1.8, h=0.5, $fn=25);
translate([2.5,67.5,5]) rotate([0,0,0]) cylinder(r=3.2, h=8, $fn=30);
translate([0,21,0]) rotate([0,90,0]) cylinder(r=5.2, h=5.5, $fn=25);
//translate([2 ,-5,-5])cube([20,50,30]);

translate([-36.5,21.25,1.5]) cube([0.1,4.5,13.3]);      
translate([-38.6,21,1.5]) cube([0.1,6,13.3]);      
translate([-41,21,1.5]) cube([0.1,6,13.3]);      


translate([3.5,21,6]) cube([0.1,2,8.8]);      
translate([5,21,6]) cube([0.1,3,8.8]);      
translate([6.8,21,1.5]) cube([0.1,3,13.3]);      
translate([8.5,21,5]) cube([0.1,3,9.8]);      

    translate([5,-15.4,-1]) rotate([0,45,0]) cube([0.3,4.6,8]);        
    translate([7.45,6,-1]) cube([0.5,1,5]);        
    translate([7.45,11.5,-1]) cube([0.5,1.8,5]);        
    
    translate([5,-16.4,-1]) rotate([0,45,0]) cube([0.3,0.5,8]);        
    translate([5,-10.3,-1]) rotate([0,45,0]) cube([0.3,0.5,8]);    
    translate([6,-16.5,-1]) cube([1,0.5,5]);        
    translate([3,-16.5,-1]) cube([2,0.5,5]);  
    translate([6,-10.2,-1]) cube([1,0.5,5]);        
    translate([3,-10.2,-1]) cube([2,0.5,5]);  
    translate([6,7.5,-1]) cube([1,0.5,5]);  
    translate([6,10.5,-1]) cube([1,0.5,5]);  

//half cut
//translate([-50 ,-50,8])cube([100,100,30]);

}


// Cable hole vis
//%translate([-33/2 - 2.5,-17,1])cube([5,25,30]);



