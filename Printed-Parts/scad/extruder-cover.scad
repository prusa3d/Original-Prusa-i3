// PRUSA iteration4
// Extruder cover
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

//import("extruder_body.stl");
//translate([11.5,-0.5,-37.5]) cylinder( h=30, r=3.0, $fn=50 );

module m3head()
{
    intersection()
    {
        translate([30,5,9])cylinder(r=3.1,h = 25, $fn=30); // head cut
        translate([30,5,17-3.5]) cube([6.2,3.4,1], center=true);
    }
    translate([30,5,17-4]) cube([3.4,3.4,1], center=true);
    translate([30,5,17-3.5])cylinder(r=3.1,h = 20, $fn=30); // head cut
}

module grill()
{
difference()
        {
            translate([24,-5,-20]) cylinder( h=23, r=20.4, $fn=50 ); 
            translate([24,-5,-21]) cylinder( h=26, r=19, $fn=50 ); 
            translate([23,-30,-30]) cube([30,60,35]);   
            translate([-11,-30,-30]) cube([30,60,35]);   
            translate([-19,-20,-30]) cube([60,60,35]);   
        }
    translate([23,-24.65,-20]) cylinder( h=23, r=0.72, $fn=50 ); 
    translate([19,-24.01,-20]) cylinder( h=23, r=0.72, $fn=50 ); 
}


translate([-35.25,10,-20]) grill();
translate([-35.25,0,-20]) grill();
// horizontal fins
translate([-16.5,-35,-25]) cube([4,31,1]);   
translate([-16.5,-6,-24.5]) rotate([90,0,0]) cylinder( h=30, r=0.5, $fn=50 ); 
translate([-12.5,-6,-24.5]) rotate([90,0,0]) cylinder( h=30, r=0.5, $fn=50 ); 


module extruder_cover()
{
    difference()
    {
    
        union()
        {
            // base block
            translate([-17,-36.5,-40.0]) cube([41.5,42.25,23.0]); 
            translate([-37.75,-38.5,-40]) rotate([0,0,0]) cylinder( h=5, r=5.9, $fn=6 );
            translate([-34,-41.5,-40]) rotate([0,0,20]) cube([30,8,4]); 
            translate([16,-38.5,-40]) rotate([0,0,45]) cube([3,3,23]);  
            
            // fan nozzle mount
            translate([11.5,-44,-40]) cube([7,9,7]);             
            translate([15.5,-44,-40]) cube([5,9,23]);             
            translate([-15,-44,-40]) cube([6.2,17,6]);             
            translate([-11,-44,-40]) cube([28,20,1]);    
       
            // cable guide above fan
            translate([23.5,-1.5,-40]) cube([8,7.25,23]);           
        }

        // side fan cut
        translate([20.5,-37.5,-41]) cube([20,36,30]); 
        
        // cables hook
        translate([34,-1.0,-41]) rotate([0,0,45]) cube([10,10,25]);   
        difference()
        {
            translate([20.5,-2.5,-41]) cube([4,5,25]);  
            translate([20.0,-0.5,-41]) rotate([0,0,60]) cube([5,5,25]);  
        }
        
        // e3d nozzle cut
        translate([0,-9,-17]) rotate([90,0,0]) cylinder( h=30, r=11.1, $fn=50 );      
        translate([0,-9,-17]) rotate([90,0,0]) cylinder( h=26, r=11.5, $fn=50 );      
        translate([0,-3.4,-17]) rotate([90,0,0]) cylinder( h=10, r=8.05, $fn=50 );        
        translate([0,8,-17]) rotate([90,0,0]) cylinder( h=5.6, r=8.05, $fn=50 );        
        translate([0,4,-17]) rotate([90,0,0]) cylinder( h=8, r=6.05, $fn=50 );        
     
        
    // hotend cooling tube
    // input 
    translate([12,-21.5,-20]) rotate([0,90,0]) cylinder( h=10, r2=20.5, r1=12, $fn=80 ); 
    translate([1,-20.5,-15.5]) rotate([0,99,0]) cylinder( h=25, r2=17.5, r1=12, $fn=80 ); 
    translate([-10,-35,-28.3])  cube([30,26,32]); 
    
    // output
    difference()
    {
        translate([-17.2,-35,-36]) rotate([0,-23,0]) cube([44,26,32]);        
        translate([-18,-53.5,-40]) rotate([0,0,65]) cube([20,20,32]);        
    }
        
    // fan screws
    translate([7,-37.5,-36]) rotate([0,90,0]) cylinder( h=14, r=1.4, $fn=30 );     
    translate([7,-5.5,-36]) rotate([0,90,0]) cylinder( h=14, r=1.4, $fn=30 );     
    translate([19,-37.5,-36]) rotate([0,90,0]) cylinder( h=2, r1=1.4, r2=2, $fn=30 );
    translate([19,-5.5,-36]) rotate([0,90,0]) cylinder( h=2, r1=1.4, r2=2, $fn=30 );     

    // left hold together screw
    translate([17,3,-44]) rotate([0,0,0]) cylinder( h=40, r=1.6, $fn=60 );     
    translate([17,3,-41]) rotate([0,0,0]) cylinder( h=8, r=3.1, $fn=30 );  
    translate([13.9,3.1,-41]) cube([6.2,10,9]);    
            
    // right hold together screw
    translate([-11.5,-0.5,-43]) cylinder( h=60, r=1.65, $fn=50 ); 
    translate([-11.5,-0.5,-41]) cylinder( h=5, r=3.1, $fn=30 ); 
    
    // upper cooling fan screw
    translate([5.5,-0.5,-40]) cylinder( h=15, r=1.65, $fn=50 );
    translate([5.5,-0.5,-42]) cylinder( h=3, r1=3, r2=1.65, $fn=50 );
    
    // nuts
    translate([2.8,-4,-39]) cube([5.6,15,2.1]); 
    translate([2.8,-2.2,-39]) cube([5.6,3.4,2.5]); 
    translate([3.8,-2.2,-39]) cube([3.4,3.4,2.9]); 
    translate([2.8,5.4,-38.4]) rotate([45,0,0]) cube([5.6,10,2]);  
    
    // lower cooling fan screw
    translate([-37.75,-38.5,-42]) cylinder( h=20, r=1.6, $fn=30 );
    translate([-37.75,-38.5,-39.4]) cylinder( h=4, r=3.1, $fn=6 );
    translate([-37.75,-38.5,-37.5]) cylinder( h=3, r1=3.1, r2=4.0, $fn=6 );
    
    // nozzle screw
    translate([14.5,-40.5,-42]) cylinder( h=10, r=1.4, $fn=30 );
    translate([14.5,-40.5,-41]) cylinder( h=3, r1=2.1, r2=1.4, $fn=30 );
    
    // fan and motor cables
    translate([21.5,-5.9,-41]) cube([3,5,25]);  
    translate([20.5,-5.9,-41]) cube([4,5,25]);  
    translate([13.2,-49.5,-33]) rotate([0,0,20]) cube([6,10,25]);  
        
    translate([18.5,-5.5,-22]) rotate([0,180,0]) m3head();
    translate([47,-2,-19]) rotate([0,180,0]) m3head();
        
        
    //version
    translate([-3,-36,-38]) rotate([90,0,0]) linear_extrude(height = 0.6) 
    { text("R2",font = "helvetica:style=Bold", size=4, center=true); }
       
   
   
    translate([11.5,-0.5,-21]) cylinder( h=5, r=2.0, $fn=50 ); 
    }
    
}       

extruder_cover();

