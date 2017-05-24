// PRUSA MM upgrade
// extruder-idlers-mm
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module idler()
{
    
difference()
{
    union()
    {
        difference()
        {
            translate( [ -9, 15, -1.5] ) cube( [ 30, 8, 23] );   
            translate( [ -10, 14, 20] ) rotate([0,-20,0]) cube( [ 10, 10, 5] );   
            translate( [ -12, 14, -4] ) rotate([0,20,0]) cube( [ 10, 10, 5] );   
        }
        
        translate([15.5,15.5,-1.5]) cylinder( h=23, r=5.5, $fn=30 );        
        
        //bottom axis holder
        translate([0,8.5,0.5]) cylinder( h=3.25, r=5, $fn=30 );   
        translate( [ -5, 8.5, 0.5] ) cube( [ 10, 7, 3.25] );   
        
        //upper axis holder
        translate([0,8.5,18.25]) cylinder( h=3.5, r=5, $fn=30 );   
        translate( [ -5, 8.5, 18.25] ) cube( [ 10, 8, 3.5] );   
        
        //springs
        translate([-8,12,16.5]) rotate([0,90,90]) cylinder( h=11, r1=4, r2=5.3, $fn=30 );    
        translate([-8,12,4]) rotate([0,90,90]) cylinder( h=11, r1=4, r2=5.3, $fn=30 );    
        
    }
    
    // drive gear cutout
    translate([0,8.5,4]) cylinder( h=10.5, r=5.2, $fn=30 );    
    translate([0,8.5,14]) cylinder( h=4.25, r=5.2, $fn=30 ); 
    
    // drive gear axis
    translate([0,8.5,1.15]) cylinder( h=23, r=1.5, $fn=30 );  
    translate([0,8.5,-1]) cylinder( h=26, r=0.8, $fn=30 );  
    
    
    // M3 screw
    translate([15.5,15.5,-3]) cylinder( h=30, r=1.6, $fn=30 );  
  
    // cutout hole
    translate([2,30,11]) rotate([90,0,0]) cylinder( h=20, r=7, $fn=6 );  
    
    // washers
    translate([15.5,15.5,-2.25]) cylinder( h=1, r=4, $fn=30 );  
    translate([15.5,15.5,21.25]) cylinder( h=1, r=4, $fn=30 );  
    
    // edge
    translate( [ 22.5, 15, -4] ) rotate([0,0,30]) cube( [ 15, 15, 30] );  


    //spring
    translate([-8,14,16.5]) rotate([0,90,90]) cylinder( h=15, r1=2.9,r2=3.5, $fn=30 );    
    translate([-8,14,4]) rotate([0,90,90]) cylinder( h=15, r1=2.9,r2=3.5, $fn=30 );    

    // screws
    translate([-8,-15,16.5]) rotate([0,90,90]) cylinder( h=40, r=1.9, $fn=30 );    
    translate([-8,-15,4]) rotate([0,90,90]) cylinder( h=40, r=1.9, $fn=30 ); 
    
    
    translate( [ -20, 25, -13] ) rotate([45,0,0]) cube( [ 50, 10, 10] );  
    translate( [ -20, 25, 19] ) rotate([45,0,0]) cube( [ 50, 10, 10] );  
    
    
    // selective infill
    difference()
    {
        translate([0,8.5,19.25]) cylinder( h=1.5, r=4.1, $fn=30 );   
        translate([0,8.5,18.00]) cylinder( h=5, r=4, $fn=30 );   
    }
    difference()
    {
        translate([0,8.5,1.4]) cylinder( h=1.5, r=4.1, $fn=30 );   
        translate([0,8.5,0.00]) cylinder( h=5, r=4, $fn=30 );   
    }
    #translate( [ -0, 11, 18.9] ) cube( [ 0.2, 10, 1.8] );  
    #translate( [ 3, 11, 18.9] ) cube( [ 0.2, 10, 1.8] );
    #translate( [ -3, 11, 18.9] ) cube( [ 0.2, 10, 1.8] );
    
    translate( [ -0, 11, 1.4] ) cube( [ 0.2, 10, 1.5] );  
    translate( [ 3, 11, 1.4] ) cube( [ 0.2, 10, 1.5] );
    translate( [ -3, 11, 1.4] ) cube( [ 0.2, 10, 1.5] );
    
}    
    
}
 
translate([0,2.5,23]) rotate([-90,0,0])
difference()
    {
        union()
        {
        idler();  
        translate([0,0,-5]) rotate([0,180,180]) mirror([0,1,0]) idler();  
        }    
        translate([12,24,5]) rotate([90,0,0]) cylinder( h=2, r=2, $fn=30 );   
        translate([12,24,15]) rotate([90,0,0]) cylinder( h=2, r=2, $fn=30 );   
        translate([12,24,-10]) rotate([90,0,0]) cylinder( h=2, r=2, $fn=30 );   
        
} 






