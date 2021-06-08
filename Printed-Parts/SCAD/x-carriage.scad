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
    translate([-34,-15,0]) cube([35,7,15]);
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
    translate([-34,56.8,0]) rotate([0,0,0]) cube([43.5,19.7,8]); 
     
    // Belt holder base
    translate([-42.5,20,0]) cube([52,16,7]);
     
    // new belt holder base block
    translate([-42.5,18,7]) cube([52,16.3,8]);
    
}



module x_carriage_holes()
{
    // Small bearing holder holes cutter
    translate([-33/2,0,0]) rotate([0,0,90]) horizontal_bearing_holes_nozip_smooth(1);
    translate([-4,-2.5,4]) rotate([0,0,90]) cube([5,25,2]);
    
    // Long bearing holder holes cutter
    translate([-33/2,45,0]) rotate([0,0,90]) horizontal_bearing_holes_nozip_smooth(2);
    translate([8.5,45-2.5,4]) rotate([0,0,90]) cube([5,50,2]);

  
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
    translate([-7,15.5,-1])cylinder(r=1.65, h=20, $fn=25);
    translate([-27,15.5,-1])cylinder(r=1.65, h=20, $fn=25);

    translate([-7,15.5,-1])cylinder(r2=1.65, r1=2.2,h=2, $fn=25);
    translate([-27,15.5,-1])cylinder(r2=1.65, r1=2.2,h=2, $fn=25);
        
    translate([-7,15.5,4])cylinder(r=3.1, h=4, $fn=6);
    translate([-27,15.5,4])cylinder(r=3.1, h=4, $fn=6);
    translate([-7,15.5,7])cylinder(r=4, h=30, $fn=6);
    translate([-27,15.5,7])cylinder(r=3.5, h=30, $fn=6);
    
    
        
    // Carriage slimer
    translate([-55.5+3,19,-1])cube([10,40,30]);
    translate([+12.5-3,19,-1])cube([10,40,30]);
    translate([+12.5-3.5-2,35.8,-1])rotate([0,90-65,0])cube([10,55,30]);
    translate([-55.5+6.7+2,19,-10])rotate([0,-90+65,0])cube([10,40,30]);
   
}

module x_carriage_fancy()
{
    // Top right corner
    translate([11.5,10.5,0]) translate([0,45+11.5,-1]) rotate([0,0,45]) translate([0,-15,0]) cube([30,40,20]);
    translate([12,65.3,-1]) rotate([0,0,45]) cube([10,10,20]);
    translate([4.9,72.38,-1]) cube([10,10,20]);
    
    
    // Top left corner
    translate([-33-13.5,-5,0]) translate([0,45+11.5,-1]) rotate([0,0,135]) translate([0,-15,0]) cube([30,30,20]);	
    
    translate([-35,93,5]) rotate([35,0,0]) translate([0,-15,0]) cube([55,15,15]);	   
    translate([7.5,59.5,-18]) rotate([0,0,0]) cube([20,20,40]);
    
    // bottom side edges
    translate([-37,-12,-6]) rotate([40,0,0]) cube([50,8,25]);
    translate([-35,-19.2,0]) rotate([0,0,45]) cube([6,6,16]);
    translate([2,-20.4,0]) rotate([0,0,45]) cube([6,6,16]);
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
     
    
    difference()
    { 
    translate([0,11,0]) cube([9.50,22,7]);
    translate([0,6,1])rotate([-30,0,0]) cube([7.5,12,7]);
    translate([0,10+3,-1])cube([7.5,19,6]);    
    
    }
    
    
}


module final_cutout()
{
    // cable guide edges
    translate([-44,0,16]) rotate([0,45,0]) cube([5,15,5]);
    translate([6,0,16]) rotate([0,45,0]) cube([5,15,5]);
    
    // motor cable opening
    difference()
    {
        union()
        {
            translate([0.5,10,-1]) cube([8,18,6]);    
            translate([0.5,28,0]) rotate([0,90,0]) cylinder(r=5, h=8, $fn=25);    
            translate([0.5,12,0.5]) rotate([45,0,0]) cube([8,4,6]);    
        }
        translate([7.8,10,8]) rotate([0,85,0]) cube([15,25,10]);    
    }
        
        
        
    // filament hole
    difference () 
    {
        union() 
        {
        translate([-14.199,9.05,0]) rotate([-5,0,22.5]) cylinder(r=1.62, h=40, $fn=8);    
        translate([-14.5,9.7,8]) rotate([-5,0,22.5]) cylinder(r=1.62,r2=3, h=8, $fn=8);  
        }
    }
    
    // bottom back mounting screws
    translate([-22,-11,4]) cylinder(r=1.65, h=20, $fn=50); 
   
    difference() 
    {
        union()
        {    
            translate([-24.8,-14,10]) cube([5.6,7,2.1]);
        }
       translate([-36,-8.1,10]) cube([40,1,0.5]);
    } 

    // better printing bridges
    translate([-24.8,-12.65,10.35]) cube([5.6,3.3,2.1]);
    translate([-23.65,-12.65,10.7]) cube([3.3,3.3,2.1]);
    
    
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
    
    // selective infill
    translate([-23.7,57,5]) cube([15.9,0.7,9]);
    translate([-23.7,54.5,5]) cube([15.9,0.7,9]);
    
    difference()
    {
        union()
        {
        translate([-11,-12,1]) rotate([0,0,0]) cylinder(r=3, h=10, $fn=30);  
        translate([-11,-15,-0]) cube([3,6,10]);  
        }
       translate([-8,-20,5]) rotate([0,-20,0]) cube([10,20,10]);  
    }
    
    translate([0.5,-0,5])
    difference()
    {
        rotate([0,-20,0])
        union()
        {
        translate([-7,-12,-5]) rotate([0,0,0]) cylinder(r=3, h=30, $fn=30);  
        translate([-9,-12,-5]) rotate([0,0,0]) cylinder(r=3, h=30, $fn=30);  
        translate([-12,-18,-5]) cube([8,6,30]);  
        translate([-9,-15,-5]) cube([2,6,30]);  
        }

        translate([-20,-20,-15]) cube([20,20,10]);  
    }
    
    // 2.5 endstop hole
    translate([-8,-11,11]) rotate([0,90,0]) cylinder(r=1.4, h=10, $fn=30);  
    translate([-0.5,-11,11]) rotate([0,90,0]) cylinder(r1=1.4, r2=1.7, h=2, $fn=30);  
    
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
            translate([2.5,67.5,7.5]) cylinder(r=3.2, h=7, $fn=30);
            
            translate([-28.5,67.5,7.5])cylinder(r=3.2, h=20, $fn=25);    
            translate([-28.5,67.5,-1])cylinder(r=1.65, h=20, $fn=25);    
            translate([-28.5,67.5,-1])cylinder(r2=1.65, r1=3, h=2, $fn=25);    
        
            translate([0.5,22.5,0]) rotate([0,90,0]) cylinder(r=5.2, h=7.0, $fn=25);


            // selective infill
            translate([5,-15.4,-1]) rotate([0,45,0]) cube([0.3,4.6,8]);        
            translate([5,-16.4,-1]) rotate([0,45,0]) cube([0.3,0.5,8]);        
            translate([5,-10.3,-1]) rotate([0,45,0]) cube([0.3,0.5,8]);    
            translate([6,-16.5,-1]) cube([1,0.5,5]);        
            translate([3,-16.5,-1]) cube([2,0.5,5]);  
            translate([6,-10.2,-1]) cube([1,0.5,5]);        
            translate([3,-10.2,-1]) cube([2,0.5,5]);  
            
            translate([-19,24,1.5]) cube([6,0.5,12.0]);      
                        
            //cable openings in guides
            translate([-40.8,7.5,0]) rotate([0,20,0]) cube([5,3.5,20]);
            translate([-2.9,7.5,18]) rotate([0,80,0]) cube([20,3.55,5]);
            
            // filament sensor connector
            translate([-1.5,62,-1.3]) cube([1,5,5]);
            translate([-3.5,65,-1.3]) cube([3,5,5]);
            translate([-9,70.6,-1.3]) cube([9,15,15]);
            translate([-8.5,68,-1.3]) cube([8,15,15]);
            translate([-0.7,67.5,7.5]) cube([3.2,3.2,1]);
            difference()
                {
                translate([-9,69,-1]) cube([8.5,6,7]);
                translate([-9,77,2]) rotate([45,0,0]) cube([8.5,6,7]);
                }
            
            // filament sensor cable
            difference()
            {
                translate([-1.5,30,-0.8]) cube([3.5,30,4.5]);

                translate([0.5,34.46,-4]) cube([4,3,4.5]);
                translate([2,34.46,-4]) cylinder(r=1.5, h=4.5, $fn=25); 
                translate([2,34.46+3,-4]) cylinder(r=1.5, h=4.5, $fn=25); 
                
                translate([0.5,54,-4]) cube([4,3,4.5]);
                translate([2,54,-4]) cylinder(r=1.5, h=4.5, $fn=25); 
                translate([2,57,-4]) cylinder(r=1.5, h=4.5, $fn=25); 
                
                translate([-4.0,44,-4]) cube([4,3,4.5]);
                translate([-1.5,44,-4]) cylinder(r=1.5, h=4.5, $fn=25); 
                translate([-1.5,47,-4]) cylinder(r=1.5, h=4.5, $fn=25); 
            }
                
            translate([-1.05,58.25,-0.8]) rotate([0,0,30]) cube([3.5,13,4.5]);
            translate([-9,66,-0.8]) cube([3.5,5,4.5]);
            
            translate([-9,70.5,-0.8]) rotate([45,0,0]) cube([9,6,6]);
            
            translate([0.45,30,-0.8]) cylinder(r=2, h=4.5, $fn=25); 
            translate([-3.5,68,3]) cylinder(r=2, h=6, $fn=25); 
            translate([-6.75,69,-0.8]) cube([4,10,10]);
         
            
            
            
            // hold together screws clearance
            translate([-4.5,25.5,-1]) cylinder(r1=2.2,r2=1.5, h=10, $fn=25);    
            translate([-28.5,25.5,-1]) cylinder(r1=2.2,r2=1.5, h=10, $fn=25);    
            translate([-4.5,25.5,-1]) cylinder(r2=2,r1=3,h=3, $fn=25);    
            translate([-28.5,25.5,-1]) cylinder(r2=2,r1=3,h=3, $fn=25);    
            
            
            translate([0,-0.5,0]) left_belt_cut();
            translate([0,0.5,0]) right_belt_cut();
            


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
        translate([-45,18,4]) rotate([0,0,-13.5]) cube([10.5,3,32]);
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
  
    
 
  
