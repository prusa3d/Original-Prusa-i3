// PRUSA iteration4
// RAMBo cover hinges
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module upper_hinge()
{
difference()    
    {
        union()
        {
             // body
             cylinder( h = 26, r = 2.4, $fn=30); 
             cylinder( h = 21, r = 4.5, $fn=30); 
             translate([0,0,26]) cylinder( h = 2, r1 = 2.4, r2 = 1.8, $fn=30); 
             translate( [ -5 , -11 , 0 ] ) cube( [ 7 , 14 , 21 ] );  
        }
        // M3 screw hole
        translate( [ -12.5 , -0 , 17 ] ) rotate( [0,90,0] ) cylinder( h = 20, r = 1.75, $fn=30);  
        translate( [ -1.5 , -0 , 17 ] ) rotate( [0,90,0] ) cylinder( h = 9, r = 3, $fn=30); 
        // angle cut
        translate([-3.9,-20,-1]) rotate([0,0,50]) cube([25,5,26]);   
    }
}

module lower_hinge()
{
difference()
    {   
        union()
        { 
            // body   
            translate( [ 0 , 6 , 0 ] ) cylinder( h = 15, r = 2.4, $fn=30); 
            translate( [ 0 , 6 , 0 ] ) cylinder( h = 10, r = 4.5, $fn=30);  
            translate( [ 0 , 6 , 15 ] ) cylinder( h = 2, r1 = 2.4, r2=1.8, $fn=30);  
            translate( [ -5 , 3 , 0 ] ) cube( [ 7 , 13 , 10 ] ); 
        }
        // M3 screw
        translate( [ -0.5 , 6 , 4 ] ) rotate( [0,90,0] ) cylinder( h = 20, r = 3, $fn=30); 
        translate( [ -12 , 6 , 4 ] ) rotate( [0,90,0] ) cylinder( h = 20, r = 1.75, $fn=30); 
        // angle cut
        translate([-5.8,20,-1]) rotate([0,0,-50]) cube([20,5,20]);   
    }
}


translate([0,-4,0]) upper_hinge();
lower_hinge();