// PRUSA MMU2
// idler
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module idler_segment_l()
{
    translate([0,0,-12]) rotate([0,90,0]) cylinder(r=8.5, h=6, $fn=50); 
    translate([-6,0,-12]) rotate([0,90,0]) cylinder(r=2.55, h=60, $fn=50); 
    translate([-70,0,-12.5]) rotate([0,90,0]) cylinder(r=1.6, h=75, $fn=50); 
    translate([-70,0,-12]) rotate([0,90,0]) cylinder(r=1.4, h=75, $fn=50); 
    translate([10,0,-12]) rotate([0,90,0]) cylinder(r=2.7, h=44, $fn=50); 
    
    translate([0,-8.5,-32]) cube([6,17,20]);
}
    
module idler_segment_r()
{
    translate([0,0,-12]) rotate([0,90,0]) cylinder(r=8.5, h=6, $fn=50); 
    translate([-48,0,-12]) rotate([0,90,0]) cylinder(r=2.55, h=60, $fn=50); 
    translate([0,0,-12]) rotate([0,90,0]) cylinder(r=1.4, h=80, $fn=50); 
    translate([0,0,-12.5]) rotate([0,90,0]) cylinder(r=1.6, h=80, $fn=50); 
    translate([-48-17,0,-12]) rotate([0,90,0]) cylinder(r=2.7, h=60, $fn=50); 
    
    translate([0,-8.5,-32]) cube([6,17,20]);
}



module idler()
{

    difference()
    {

    union()
        {
            // base body
            translate([-3,0,0]) rotate([0,90,0]) cylinder(r=17, h=71, $fn=50); 
            translate([-5,0,0]) rotate([0,90,0]) cylinder(r2=17,r1=16, h=2, $fn=50); 
            translate([68,0,0]) rotate([0,90,0]) cylinder(r1=17, r2=16, h=2, $fn=50); 
            
            // motor shaft coupling
            rotate([-60,0,0]) 
            difference()
            {
                union()
                {
                    translate([-25,0,0]) rotate([0,90,0]) cylinder(r=9, h=20, $fn=50); 
                    translate([-25,-6,5]) cube([20,12,9]);
                    translate([-25,-5,-5]) rotate([60,0,0]) cube([20,16,10]);
                }
                // screws
                translate([-10,0,0]) cylinder(r=1.6, h=12.5, $fn=50); 
                translate([-10,0,10.4]) cylinder(r=3.1, h=5, $fn=50); 
                translate([-20,0,0]) cylinder(r=1.6, h=12.5, $fn=50);  
                translate([-20,0,10.4]) cylinder(r=3.1, h=5, $fn=50); 
                
                // nuts
                translate([-12.8,-2.8,7]) cube([5.6,10,2]);
                translate([-22.8,-2.8,7]) cube([5.6,10,2]);
                translate([-12.8,2.8,6.9]) cube([5.6,10,2.2]);
                translate([-22.8,2.8,6.9]) cube([5.6,10,2.2]);
                
                
                translate([-26,6.5,10]) rotate([30,0,0]) cube([21,16,10]);
            }
        }


    // shaft reinforcement
    difference()
        {
            translate([-21,0,0]) rotate([0,90,0]) cylinder(r=7, h=15, $fn=50); 
            translate([-21,0,0]) rotate([0,90,0]) cylinder(r=6, h=15, $fn=50); 
            translate([-30,-3,15]) rotate([-60,0,0]) cube([30,100,10]);
        }

    // idler bearing segments
    rotate([-160/2,0,0])
    {
    translate([0,0,0]) idler_segment_r();
    translate([14,0,0]) rotate([40,0,0]) idler_segment_r();
    translate([28,0,0]) rotate([80,0,0]) idler_segment_l();
    translate([42,0,0]) rotate([120,0,0]) idler_segment_l();
    translate([56,0,0]) rotate([160,0,0]) idler_segment_l();    
    }
    
    // shaft
    difference()
    {
        union()
        {
        translate([-26,0,0]) rotate([0,90,0]) cylinder(r=2.55, h=25, $fn=50);
        translate([-26,0,0]) rotate([0,90,0]) cylinder(r2=2.55, r1=3, h=3, $fn=50);
        }
        translate([-25,-0.15,5]) rotate([-60,0,0]) cube([20,12,9]);
    }
    
    translate([62,0,0]) rotate([0,90,0]) cylinder(r=2.55, h=4, $fn=50);
    translate([-26,0,0]) rotate([0,90,0]) cylinder(r=2, h=150, $fn=50);
       
    // shaft bearing
    translate([65,0,0]) rotate([0,90,0]) cylinder(r=8, h=6, $fn=50); 
    translate([64,0,0]) rotate([0,90,0]) cylinder(r=6.5, h=6, $fn=50); 
    translate([68.5,0,0]) rotate([0,90,0]) cylinder(r1=8, r2=9, h=5, $fn=50); 
    
    // endstop cut
    difference()
    {
        translate([-1,0,0]) rotate([0,90,0]) cylinder(r=20, h=22, $fn=50); 
        translate([-1,0,0]) rotate([0,90,0]) cylinder(r=14.5, h=22, $fn=50); 
        difference()
        {
            translate([-5,-48,-30]) cube([30,50,50]);
            translate([-5,-16,9]) cube([30,30,30]);
        }
    }
    
    // removal opening
    translate([-1,6.72,-10.5]) rotate([-50,0,0]) cube([22,10,3.2]);
    translate([-1,8,-10.5]) rotate([-110,0,0]) cube([22,5,3.2]);
    translate([-1,8,-12.2]) rotate([-10,0,0]) cube([22,5,3.2]);
    
    translate([-1,14,-6.8]) rotate([40,0,0]) cube([22,3,5]);
    translate([-1,13,-8]) rotate([00,0,0]) cube([22,3,5]);
    translate([-1,12,-4]) rotate([-10,0,0]) cube([22,5,3.2]);
    translate([-1,15.5,-4]) rotate([30,0,0]) cube([22,5,3.2]);
    
    translate([-1,-20,10.9]) rotate([0,0,0]) cube([1,50,5]);    
    translate([20,-20,10.9]) rotate([0,0,0]) cube([1,50,5]);    
    
    
    translate([-1,-19.95,4.0]) rotate([30,0,0]) cube([22,10,10]);
    
    // flat bottom
    translate([-30,-25,11]) cube([150,50,15]);
    
    // version
    translate([6,-1.5,10.5]) rotate([0,0,0]) linear_extrude(height = 0.8) 
    { text("M1",font = "helvetica:style=Bold", size=5, center=true); }    
    }
}


rotate([0,180,0]) 
idler();




    
    
    
    
    
    
    