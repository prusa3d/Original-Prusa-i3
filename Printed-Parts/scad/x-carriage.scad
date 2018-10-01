// PRUSA iteration4
// X carriage
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <bearing.scad>

module belt_cut()
{
    rotate([0,0,180]) 
    {
    translate([-20,0,0]) cube([39,0.75,15]);
    translate([-20,0,5]) rotate([-7,0,0]) cube([39,0.75,10]);
    translate([-20,0,5]) rotate([10,0,0]) cube([39,0.75,10]);
     for (_step =[-20:2:18])
        {
            translate([_step,0.5,0]) cube([1,1.0,10]);
        }
        for (_step =[-20:2:18])
        {
            translate([_step,0.5,5]) rotate([-7,0,0]) cube([1,1,10]);
        }
    }
}


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
     
    // new belt holder base block
    translate([-42.5,18,7]) cube([52,16.3,8]);
    
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
    translate([-17.5+12,24.5,-1])cylinder(r=1.65, h=20, $fn=25);
    translate([-17.5+12,24.5,-0.1])cylinder(r1=2.1,r2=1.65, h=0.5, $fn=25);
    translate([-17.5+12,24.5,12])cylinder(r=5.8/2, h=20, $fn=25); 

    translate([-16.5-12,24.5,-1])cylinder(r=1.65, h=20, $fn=25);
    translate([-16.5-12,24.5,-0.1])cylinder(r1=2.1,r2=1.65, h=0.5, $fn=25);
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
      
    
    difference () {
        
        union() {
    translate([-14.199,9.05,0]) rotate([-5,0,22.5]) cylinder(r=1.62, h=40, $fn=8);    
    translate([-14.5,9.7,8]) rotate([-5,0,22.5]) cylinder(r=1.62,r2=3, h=8, $fn=8);  
        }
   //translate([-18,6.7,12])   cube([7,7,5]); 
        
    }
    
    // bottom back mounting screws
    translate([-6.5,-11,4]) cylinder(r=1.65, h=20, $fn=50);  
    translate([-26.5,-11,4]) cylinder(r=1.65, h=20, $fn=50); 
   
    difference() {
    union(){    
    translate([-29.3,-14,10]) cube([5.6,7,2.1]);
    translate([-09.3,-14,10]) cube([5.6,7,2.1]);
    }
         translate([-36,-8.1,10]) cube([40,1,0.5]);
    } 
    // better printing bridges
    translate([-29.3,-12.65,10.35]) cube([5.6,3.3,2.1]);
    translate([-09.3,-12.65,10.35]) cube([5.6,3.3,2.1]);
    translate([-28.15,-12.65,10.7]) cube([3.3,3.3,2.1]);
    translate([-8.15,-12.65,10.7]) cube([3.3,3.3,2.1]);
    
    
    
    // x-carriage-back mounting screws
    translate([-4,56,0]) cylinder(r=1.7, h=40, $fn=50);  
    translate([-27.5,56,0]) cylinder(r=1.7, h=40, $fn=50);  
    translate([-30.3,53,8]) cube([5.6,8,2]);
    translate([-6.8,53,8]) cube([5.6,8,2]);
    
    // better printing bridges
    translate([-6.8,54.35,8.35]) cube([5.6,3.3,2]);
    translate([-5.65,54.35,8.7]) cube([3.3,3.3,2]);
    translate([-30.3,54.35,8.35]) cube([5.6,3.3,2]);
    translate([-29.15,54.35,8.7]) cube([3.3,3.3,2]);
    
    
    
    // center mounting screw
    translate([-16,29,0]) cylinder(r=1.65, h=40, $fn=50);
    translate([-18.8,26,10.5]) cube([5.6,12,2.1]); 
    translate([-21,33,11]) cube([10,8,6]);
    
    // better printing bridges
    translate([-18.8,27.35,10.9]) cube([5.6,3.3,2.1]);
    translate([-17.65,27.35,11.25]) cube([3.3,3.3,2.1]);
    
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
            translate([2.5,67.5,-50]) cylinder(r=1.8, h=100, $fn=30);
            translate([2.5,67.5,-0.1]) cylinder(r1=2.1,r2=1.8, h=0.5, $fn=25);
            translate([2.5,67.5,5]) cylinder(r=3.2, h=8, $fn=30);
            translate([0.5,22.5,0]) rotate([0,90,0]) cylinder(r=5.2, h=7.0, $fn=25);

            // cable management cleanup
            difference()
            {
                translate([2.5,21.5,0]) rotate([0,90,0]) cylinder(r=5.2, h=5.0, $fn=25);
                translate([2,16,-10]) cube([10,6,20]);
            }

            // selective infill
            
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
            
            translate([-19,24,1.5]) cube([6,0.5,12.0]);      
                        
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
            
            translate([0,-0.5,0]) left_belt_cut();
            translate([0,0.5,0]) right_belt_cut();
            
            //version
            translate([-2,-8,0.5]) rotate([0,180,0]) linear_extrude(height = 0.6) 
            { text("R3",font = "helvetica:style=Bold", size=5, center=true); }

    }
}


module left_belt_cut()
{

        translate([-22.5,30.2,7]) cylinder(r=1.5, h=100, $fn=30);
        translate([-23.0,20,7]) cube([2,10,30]);
        translate([-56.5,28.5,7]) belt_cut();
        translate([13.5,20.5,0]) rotate([0,0,25])
        {
            difference()
            {
            translate([-56.5,28.5,7]) belt_cut();
            translate([-80,25,7]) cube([37.5,10,30]);
            }
        }
        translate([13.2,2.38,0]) rotate([0,0,0])
        {
            difference()
            {
            translate([-56.5,28.5,7]) belt_cut();
            translate([-82.42,25,7]) cube([37.5,10,30]);
            }
        }
        translate([-45,17.6,4]) rotate([0,0,-15]) cube([10,3,30]);
        translate([-31.5,30.4,10]) rotate([-10,0,15]) cylinder(r=0.2, h=100, $fn=30);
        translate([-31.6,30.75,7]) rotate([0,0,0]) cylinder(r=0.2, h=100, $fn=30);
    }


module right_belt_cut()
{
        // right belt cut
        translate([-9.6,29.7,7]) cylinder(r=1.5, h=100, $fn=30);
        translate([-11.1,19.8,7]) cube([2,10,30]);
        translate([22.5,25.5,7]) belt_cut();
        translate([66.65,1.95,0]) rotate([0,0,0])
        {
            difference()
            {
                translate([-56.5,28.5,7]) belt_cut();
                translate([-71.55,25,7]) cube([37.5,10,30]);
            }
        }
        translate([43.2,-30.25,0]) rotate([0,0,-30])
        {
        difference()
            {
                translate([-56.5,28.5,7]) belt_cut();
                translate([-82.1,25,7]) cube([10,10,30]);
                translate([-61.5,25,7]) cube([20.5,10,30]);
            }
        }
        translate([2,14.6,7]) rotate([0,0,15]) cube([10,3,30]);
        translate([-5.1,30,10]) rotate([-10,0,-15]) cylinder(r=0.2, h=100, $fn=30);
        translate([-5,30.3,7]) rotate([0,0,0]) cylinder(r=0.2, h=100, $fn=30);
    }

x_carriage();
    
  
    
 
  
