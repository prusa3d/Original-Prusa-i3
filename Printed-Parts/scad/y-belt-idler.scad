// PRUSA iteration4
// Y belt idler
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module Y_belt_idler()
{
    difference()
    { 
        // base block
        translate([-12.5,-20,5]) cube([25,20,35]);
        translate([-4.75,-27,-1]) cube([9.5,20,50]); 
        
        // angled front side   
        translate([-15,-19.5,-15]) rotate([37,0,0]) cube([30,20,40]); 
        translate([-15,-12,-15]) rotate([60,0,0]) cube([30,20,40]); 
        translate([-15,-20,29.5]) rotate([38,0,0]) cube([30,20,20]); 

        // screws
        translate([0,1,36]) rotate([90,0,0]) cylinder( h=25, r=1.65, $fn=50 ); 
        translate([0,-2,36]) rotate([90,0,0]) cylinder( h=6, r=3.1 , $fn=6 ); 
        translate([0,1,10]) rotate([90,0,0]) cylinder( h=25, r=1.65, $fn=50 ); 
        translate([0,-2,10]) rotate([90,0,0]) cylinder( h=6, r=3.1 , $fn=6 ); 
        translate([0,-5,36]) rotate([90,0,0]) cylinder( h=6, r=3.1 , r2=3.9, $fn=6 ); 
        translate([0,-5,10]) rotate([90,0,0]) cylinder( h=6, r=3.1 , r2=3.9, $fn=6 );
        translate([0,1,36]) rotate([90,0,0]) cylinder( h=2, r=2.5, r2=1.65,$fn=50 ); 
        translate([0,1,10]) rotate([90,0,0]) cylinder( h=2, r=2.5, r2=1.65,$fn=50 ); 
        
        // pulley cut
        translate([-5,-14,22.5]) rotate([0,90,0]) cylinder( h=10, r=10, $fn=30 ); 
           
        // pulley screw axis 
        translate([-13.5,-14,22.5]) rotate([0,90,0]) cylinder( h=30, r=1.6, $fn=50 ); 
        translate([-14,-14,22.5]) rotate([0,90,0]) cylinder( h=7, r=3.1, $fn=6 ); 
        translate([-14,-14,22.5]) rotate([0,90,0]) cylinder( h=4, r2=3.1, r1=4, $fn=6 ); 
        translate([8,-14,22.5]) rotate([0,90,0]) cylinder( h=6, r=3.1, $fn=50 ); 
        
        // selective infill
        translate([-10,-18,18]) cube([3,17,0.5]);
        translate([8,-18,18]) cube([3,17,0.5]);
        translate([-10,-18,27]) cube([3,17,0.5]);
        translate([8,-18,27]) cube([3,17,0.5]);
        translate([-10,-17,16]) cube([3,15,0.5]);
        translate([8,-17,16]) cube([3,15,0.5]);
        translate([-10,-16,29]) cube([3,15,0.5]);
        translate([8,-16,29]) cube([3,15,0.5]);
        translate([-8,-2,30]) cube([16,1,0.5]);
        translate([-8,-2,13]) cube([16,1,0.5]);
        
        // upper side mark
        translate([8.5,-3.5,39]) rotate([0,0,0]) cylinder( h=2, r=1.5, $fn=30 ); 
        
        //version   
        translate([3.5,-0.5,20]) rotate([90,0,180]) linear_extrude(height = 0.6) 
        { text("R2",font = "helvetica:style=Bold", size=4, center=true); }
    }
    
}   
    
rotate([-90,0,0]) Y_belt_idler(); 

