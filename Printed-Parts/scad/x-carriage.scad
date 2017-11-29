// PRUSA iteration4
// X carriage
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <bearing.scad>

module x_carriage_base()
{
    
    // Small bearing holder
    translate([-33/2,0,0]) rotate([0,0,90]) horizontal_bearing_base(1);
 
    // Long bearing holder
    translate([-33/2,45,0]) rotate([0,0,90]) horizontal_bearing_base(2);
 
    // Base plate
    translate([-34,-14,0]) cube([34.5,70.5,7]);
    translate([-33,-15,0]) cube([33,7,15]);
    translate([-42.5,53.0,0]) cube([52,6.5,15]);
 
    difference()
    {
        union()
        {
        translate([-12,30,1]) rotate([0,0,45]) cube([6,6,14]);
        translate([-20,30,1]) rotate([0,0,45]) cube([6,6,14]);
        }
        translate([-25,38,11]) rotate([43,0,0]) cube([20,8,8]);
    }
 
    // upper motor screw block
    translate([-23,56.8,0]) rotate([0,0,0]) cube([32.5,18.2,8]); 
     
    // Belt holder base
    translate([-42.5,20,0]) cube([52,16,7]);
    translate([-16.5-12,24.5,0])cylinder(r=4.5, h=14, $fn=25);
    translate([-17.5+12,24.5,0])cylinder(r=4.5, h=14, $fn=25); 
    translate([-16.5-12,24.5,14])cylinder(r1=4.5, r2=3.8, h=1, $fn=25);
    translate([-17.5+12,24.5,14])cylinder(r1=4.5, r2=3.8, h=1, $fn=25);
     
     
    // Belt Insert R
    difference()
    {
        union()
        {
            translate([2,26.9,0]) cube([10,6.2,15]);
            translate([2,24-2.3-4.5,0]) cube([7.5,7.5,15]);
            translate([-0.5,27,0]) cube([8,7,2]);
        }
        translate([-3,25,5.5]) rotate([0,0,-40]) cube([5,5.5,10]);
        translate([8,17,5.5]) rotate([0,0,-60]) cube([2,5,10]);
    }
        
    // Belt Insert L
    difference()
    {
        union()
        {
            translate([-33,3,00])
            {
                scale([-1,1,1])
                {
                    translate([0,26.8,0]) cube([12.5,4.5,15]);
                    translate([2,27-7.5-2.3,0]) cube([12.5,7.5,15]);
                    translate([-0.5,27,0]) cube([8,7,2]);
                }
            }
         }
         translate([-36.5,27.7,5.5]) rotate([0,0,-55]) cube([5,5.5,10]);
    }
}



module x_carriage_holes()
{
    // Small bearing holder holes cutter
    translate([-33/2,0,0]) rotate([0,0,90]) horizontal_bearing_holes_nozip(1);
    
    // Long bearing holder holes cutter
    translate([-33/2,45,0]) rotate([0,0,90]) horizontal_bearing_holes_nozip(2);
  
    // upper ziptie right
    translate([2,0,0])
    difference()
        {
            translate([0.75,45,12]) rotate([0,90,0]) cylinder(r=10.8, h=3.5, $fn=25);   
            translate([0,45,12]) rotate([0,90,0]) cylinder(r=9, h=6, $fn=25);
        }
        
    // upper ziptie left
    translate([-38,0,0])
    difference()
        {
            translate([0.75,45,12]) rotate([0,90,0]) cylinder(r=10.8,h=3.5,$fn=25);   
            translate([0,45,12]) rotate([0,90,0]) cylinder(r=9, h=6, $fn=25);
        }
    
    // upper ziptie head
    translate([0,52.5,12]) cube([10,10,5]); 
    translate([-45,52.5,12]) cube([13.5,10,5]); 
    
    // Extruder mounting holes
    translate([-17.5+12,24.5,-1])cylinder(r=1.8, h=20, $fn=25);
    translate([-17.5+12,24.5,-0.1])cylinder(r1=2.1,r2=1.8, h=0.5, $fn=25);
    translate([-17.5+12,24.5,12])cylinder(r=5.8/2, h=20, $fn=25); 
    translate([-16.5-12,24.5,-1])cylinder(r=1.8, h=20, $fn=25);
    translate([-16.5-12,24.5,-0.1])cylinder(r1=2.1,r2=1.8, h=0.5, $fn=25);
    translate([-16.5-12,24.5,12])cylinder(r=5.8/2, h=20, $fn=25); 
    
    // Carriage slimer
    translate([-55.5+3,19,-1])cube([10,40,30]);
    translate([+12.5-3,19,-1])cube([10,40,30]);
    translate([+12.5-3.5-2,30.8,-1])rotate([0,90-65,0])cube([10,55,30]);
    translate([-55.5+6.7+2,19,-10])rotate([0,-90+65,0])cube([10,40,30]);
   
}

module x_carriage_fancy()
{
    // Top right corner
    translate([11.5,8,0]) translate([0,45+11.5,-1]) rotate([0,0,45]) translate([0,-15,0]) cube([30,30,20]);
    
    // Belt Smooth insert
    translate([0,36.5,23.5]) rotate([45,0,0]) translate([0,-15,0]) cube([20,10,10]);
    translate([-52.9,36.5+3,23.5]) rotate([45,0,0]) translate([0,-15,0]) cube([20,10,10]);   
    
    // Top left corner
    translate([-33-13.5,-5,0]) translate([0,45+11.5,-1]) rotate([0,0,135]) translate([0,-15,0]) cube([30,30,20]);	
 
    translate([-27,74.5,9]) rotate([0,45,0]) translate([0,-15,0]) cube([5,25,5]);	   
    translate([-23,86,16]) rotate([45,0,0]) translate([0,-15,0]) cube([45,5,5]);	   
    
    // bottom side edges
    translate([-40,-15,-5]) rotate([30,0,0]) cube([45,6,15]);
    translate([-35,-19.2,0]) rotate([0,0,45]) cube([6,6,16]);
    translate([2,-19.2,0]) rotate([0,0,45]) cube([6,6,16]);
    translate([2,55.9,12]) rotate([0,0,45]) cube([6,6,16]);
    translate([-33.5,55.9,12]) rotate([0,0,45]) cube([6,6,16]);
    
}

module cable_tray()
{
    
    // center screw block
    translate([-21,23,0]) cube([9,12,15]); 
    
    difference()
    {    
        union()
        {
            translate([-20.8,24.8,0]) rotate([0,0,20]) cube([3,10,15]); 
            translate([-15.5,25.8,0]) rotate([0,0,-20]) cube([3,10,15]); 
        }
        translate([-25,34.2,0]) cube([20,10,15]); 
    }
    
    translate([6.5,32,10]) cube([3,5,5]); 
    translate([-42.5,32,10]) cube([4,5,5]); 
    
    //Left cable tray
    translate([-39.9,11,0]) cube([9,2,15]); 
    translate([-39.9,5.5,0]) cube([9,2,15]); 
    
    //Right cable tray
    translate([-2,5.5,0]) cube([11.45,2,15]);
    translate([-2,11,7]) cube([11.45,2,8]);
    
    translate([-31,11.5,7]) cube([30,1.5,8]);
        
    difference(){ 
    translate([0,11,0]) cube([9.50,12,7]);
    translate([0,6,1])rotate([-30,0,0]) cube([7.5,12,7]);
    translate([0,3.5,6])rotate([-60,0,0]) cube([7.5,12,7]);
    translate([0,10+3,-1])cube([7.5,11,6]);    
    }
    
    
}


module final_cutout()
{
    // cable guide edges
    translate([-44,0,16]) rotate([0,45,0]) cube([5,15,5]);
    translate([6,0,16]) rotate([0,45,0]) cube([5,15,5]);
    
    // motor cable opening
    translate([0.5,10+3,-1])cube([7,9.2,6]);    
    
    // filament hole
    translate([-14.5,8.8,0]) rotate([-5,0,0]) cylinder(r=1.52, h=40, $fn=10);  
    translate([-14.5,9.7,10]) rotate([-5,0,0]) cylinder(r=1.52,r2=2, h=6, $fn=10);  
    
    // bottom back mounting screws
    translate([-6.5,-11,4]) rotate([0,0,0]) cylinder(r=1.65, h=20, $fn=30);  
    translate([-26.5,-11,4]) rotate([0,0,0]) cylinder(r=1.65, h=20, $fn=30);  
    translate([-29.5,-14,10]) cube([6,7,2.2]);
    translate([-09.5,-14,10]) cube([6,7,2.2]);
    translate([-28.2,-14,10.3]) cube([3.4,7,2.2]);
    translate([-08.2,-14,10.3]) cube([3.4,7,2.2]);
    
    // x-carriage-back mounting screws
    translate([-4,56,0]) rotate([0,0,0]) cylinder(r=1.65, h=40, $fn=30);  
    translate([-27.5,56,0]) rotate([0,0,0]) cylinder(r=1.65, h=40, $fn=30);  
    translate([-30.5,53,8]) cube([6,8,2]);
    translate([-7,53,8]) cube([6,8,2]);
    
    translate([-16,29,0]) rotate([0,0,0]) cylinder(r=1.65, h=40, $fn=30);
    translate([-19,26,11]) cube([6,8,2]);
    translate([-21,33,11]) cube([10,8,6]);
    
    // opening for power cables to hotend & termistor cable
    translate([-16.5,-18,-5]) rotate([-5,0,0]) cylinder(r=6, h=40, $fn=30);  
    
}

 
module x_carriage_block()
{
    difference()
        {
            union()
            {
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

module x_carriage()
{
    difference()
    {
            x_carriage_block();
            
            // upper motor screw
            translate([2.5,67.5,-50]) rotate([0,0,0]) cylinder(r=1.8, h=100, $fn=30);
            translate([2.5,67.5,-0.1]) cylinder(r1=2.1,r2=1.8, h=0.5, $fn=25);
            translate([2.5,67.5,5]) rotate([0,0,0]) cylinder(r=3.2, h=8, $fn=30);
            translate([0.5,22.5,0]) rotate([0,90,0]) cylinder(r=5.2, h=7.0, $fn=25);

            // cable management cleanup
            difference()
            {
                translate([2.5,21.5,0]) rotate([0,90,0]) cylinder(r=5.2, h=5.0, $fn=25);
                translate([2,16,-10]) cube([10,6,20]);
            }

            // selective infill
            translate([-36.5,21.25,1.5]) cube([0.1,4.5,13.3]);      
            translate([-38.6,21,1.5]) cube([0.1,6,13.3]);      
            translate([-41,21,1.5]) cube([0.1,6,13.3]);      

            translate([3.5,21,6]) cube([0.1,2,8.8]);      
            translate([5,21,6]) cube([0.1,3,8.8]);      
            translate([6.8,21,5.5]) cube([0.1,3,9]);      
            translate([8.5,21,5]) cube([0.1,3,9.8]);      

            translate([5,-15.4,-1]) rotate([0,45,0]) cube([0.3,4.6,8]);        
            translate([8.45,11.5,1]) cube([0.5,1.8,4]);        
            
            translate([5,-16.4,-1]) rotate([0,45,0]) cube([0.3,0.5,8]);        
            translate([5,-10.3,-1]) rotate([0,45,0]) cube([0.3,0.5,8]);    
            translate([6,-16.5,-1]) cube([1,0.5,5]);        
            translate([3,-16.5,-1]) cube([2,0.5,5]);  
            translate([6,-10.2,-1]) cube([1,0.5,5]);        
            translate([3,-10.2,-1]) cube([2,0.5,5]);  
            translate([6,7.5,-1]) cube([1,0.5,5]);  
            translate([6,10.5,-1]) cube([1,0.5,5]);  
            
            translate([-19,24,1.5]) cube([5,0.4,13.0]);      
            translate([-20.5,27,1.5]) rotate([0,0,20])  cube([0.4,5,13.0]);      
            
            //cable openings in guides
            translate([-40.8,7.5,0]) rotate([0,20,0]) cube([5,3.5,20]);
            translate([-2.9,7.5,18]) rotate([0,80,0]) cube([20,3.55,5]);
            
            // filament sensor connector
            translate([-12.5,64,-3]) cube([4,11.2,14]);
            translate([-12.5,65.75,-3]) cube([5,2.5,14]);
            translate([-12.5,71.75,-3]) cube([5,2.5,14]);
            translate([-14.5,67,-3]) cube([4,6,14]);
            translate([-14.5,65,4.7]) cube([4,10.2,5]);
            translate([-12.5,54.5,8]) cube([3.5,10.2,14]);
            translate([-12.5,57.5,9.5]) rotate([35,0,0]) cube([3.5,10.2,14]);
            translate([-12.5,58,8]) rotate([0,0,45]) cube([3,3,14]);
            translate([-10,58,8]) rotate([0,0,45]) cube([3,3,14]);
            
            //version
            translate([-2,-8,0.5]) rotate([0,180,0]) linear_extrude(height = 0.6) 
            { text("R1",font = "helvetica:style=Bold", size=4, center=true); }
    }
}


x_carriage();
