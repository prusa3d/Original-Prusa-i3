// PRUSA MM upgrade
// extruder-adaptor-MM
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


use <extruder-main.scad>

module ext_body()
{
    difference()
    {
       extruder_body();
       extruder_mount_holes();
    }
    translate( [40 , -9.5 , 0] ) cube( [ 2 , 2 , 30 ] );    
}
module m3nut()
{
difference()
{    
cube([2,6,8]);
translate([-0.5,3,3]) rotate([0,90,0]) cylinder(r=1.25, h=3, $fn=20);
}
}


module ext_body_CP()
{
difference()
{
    union(){
    difference()
    {    
     ext_body();
     translate( [-5 , -49.5 , -26] ) cube( [ 50 , 40 , 80 ] );    
     translate([-20,26,-2]) cube([20,30,30]);
    // screw end larger hole
    translate([-20,40,12])rotate([0,90,0])cylinder(r=1.6, h=24, $fn=20);    
    translate([2,40,11.5])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 
    translate([2,40,12])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 
    translate([2,40,12.5])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 

    // M3 nuts 
    //translate([0,46,9]) m3nut();
    translate([0,42,9]) m3nut();
    translate([2,45,11.5])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 
    translate([2,45,12])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 
    translate([2,45,12.5])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 
    translate([-20,45,12])rotate([0,90,0])cylinder(r=1.7, h=24, $fn=20);    
    
    }
    

    translate( [27 , -42 , 0] ) cube( [ 15, 33 , 8 ] );    
    translate( [0 , -42 , 0] ) cube( [ 30, 34 , 8 ] );    
    translate( [0 , -9.5 , 0] ) cube( [ 13, 9.5 , 22.5 ] );    
    translate( [29 , -9.5 , 0] ) cube( [ 13, 9.5 , 30 ] );   
   
    translate( [0 , -42 , 0] ) rotate([0,0,0]) cube( [ 6.3, 33 , 15 ] ); 
    translate( [28.7 , -35 , 0] ) rotate([0,0,0]) cube( [ 6.3, 26 , 15 ] ); 

    
    }

translate([36.5, -36.5, -1]) cylinder( h = 60, r = 1.6, $fn=30);
translate( [23 , -10 , 22.5] ) cube( [ 25, 11 , 30 ] );    
translate( [35 , -20 , 22.5] ) rotate([0,45,0]) cube( [ 10, 30 , 10 ] );        
translate( [-7 , -20 , 22.5] ) rotate([0,45,0]) cube( [ 10, 30 , 10 ] );        

translate( [33.7 , -50.7 , 2.5] )  cube( [ 5.6, 17.5 , 2 ] );     
     
    
    
translate( [-8 , -30 , 20] ) rotate([0,45,0]) cube( [ 10, 30 , 10 ] );       
translate( [32.5 , -60 , 16] ) rotate([0,45,0]) cube( [ 20, 60 , 10 ] );       

translate( [28 , -48.5 , 0] ) rotate([45,0,0]) cube( [ 20, 20 , 10 ] );       

translate( [-5 , -10 , 15] ) rotate([0,0,0]) cube( [ 50, 15 , 20 ] );       
translate([17.5, -0, 15]) rotate([90,0,0]) cylinder( h = 25, r = 6, $fn=30);
translate([17.5, -2, 15]) rotate([90,0,0]) cylinder( h = 10, r = 10, $fn=30);




translate( [6.3 , -50 , 3.8] ) rotate([0,0,0]) cube( [ 22.4, 30 , 30 ] ); 
translate( [-6 , -57.5 , -2] ) rotate([0,0,45]) cube( [ 20, 20 , 30 ] );   
translate( [54 , -56.5 , -2] ) rotate([0,0,45]) cube( [ 20, 20 , 30 ] ); 
translate([-5,-24,9]) rotate([0,90,0]) cylinder( h=44, r=1.6, $fn=30 );
translate([25,-24,9]) rotate([0,90,0]) cylinder( h=5, r2=1.6, r1=3, $fn=30 );

translate([-3,-24,9]) rotate([0,90,0]) cylinder( h=6, r=3, $fn=30 );


translate( [-10 , -35 , 8] ) rotate([45,0,0]) cube( [ 60, 10 , 10 ] ); 
translate( [-10 , -42 , 1] ) rotate([45,0,0]) cube( [ 16.5, 20 , 10 ] ); 
translate( [42 , -16.8 , 8] ) rotate([0,0,45]) cube( [ 10, 10 , 10 ] ); 

translate( [31 , -27 , 4] ) rotate([0,0,0]) cube( [ 2, 6 , 12 ] ); 
}


}




ext_body_CP();


module Y_part_holes()
{
translate([17.5, -36.5, -1]) cylinder( h = 60, r = 1.6, $fn=30);
translate([11, -14, -1]) cylinder( h = 60, r = 1.6, $fn=30);
translate([24, -14, -1]) cylinder( h = 60, r = 1.6, $fn=30);
translate([11, -27, -1]) cylinder( h = 60, r = 1.6, $fn=30);
translate([24, -27, -1]) cylinder( h = 60, r = 1.6, $fn=30);
}

module Y_teflon_tubes()
{
translate([17.5, -7, 15]) rotate([90,0,0]) cylinder( h = 15, r = 2, $fn=30);
translate([17.5, -20, 15]) rotate([90,0,13]) cylinder( h = 40, r = 2, $fn=30);
translate([17.5, -20, 15]) rotate([90,0,-13]) cylinder( h = 40, r = 2, $fn=30);
}

module Y_part_back()
{
    difference()
    {    
    translate( [7 , -42 , 8] ) cube( [ 21, 32.5 , 7 ] );    
    Y_teflon_tubes();  
    Y_part_holes();
    
    translate( [4 , -29.7 , 11] ) cube( [ 10, 5.6 , 2 ] );     
    translate( [21 , -29.7 , 11] ) cube( [ 10, 5.6 , 2 ] );     
        
    translate( [3 , -50 , 7] ) rotate([0,0,45]) cube([ 10, 10 , 20 ]);     
    translate( [32 , -50 , 7] ) rotate([0,0,45]) cube([ 10, 10 , 20 ]);     
    
    }
}    
 

module Y_part_forward()
{
    difference()
    {
        translate( [7 , -42 , 15] ) cube( [ 21, 32.5 , 7.5] );     
        Y_teflon_tubes();  
        Y_part_holes();
       
        translate([17.5, -36.5, 19]) cylinder( h = 4, r = 2.8, $fn=30);
        translate([11, -14, 19]) cylinder( h = 4, r = 2.8, $fn=30);
        translate([24, -14, 19]) cylinder( h = 4, r = 2.8, $fn=30);
        translate([11, -27, 19]) cylinder( h = 4, r = 2.8, $fn=30);
        translate([24, -27, 19]) cylinder( h = 4, r = 2.8, $fn=30);
        
        translate( [3 , -50 , 7] ) rotate([0,0,45]) cube([ 10, 10 , 20 ]);     
        translate( [32 , -50 , 7] ) rotate([0,0,45]) cube([ 10, 10 , 20 ]);     
        
    }
}


module ex_body()
{ 
    
difference()
{
    
    union()
    {    
        // body
        // round body
        translate([-5.5,36.5,6])rotate([-90,0,0])cylinder(r=8.5, h=19, $fn=20);
        // body block
        translate([-13,36.5,5]) cube([17,19,10]);
        translate([-13,36.5,15]) cube([5,19,1]);
        
        // extruder body joint
        translate([-0,33.5,0]) cube([3,2,15]);
        translate([0,34,0]) cube([4,3,15]);
        translate([0,35.5,0]) rotate([0,0,45]) cube([2,2,15]);
    }   


    
    // M3 screws 
    //translate([-20,49,12])rotate([0,90,0])cylinder(r=1.7, h=24, $fn=20);    
    translate([-20,45,12])rotate([0,90,0])cylinder(r=1.7, h=24, $fn=20);    
    //translate([-14,49,12])rotate([0,90,0])cylinder(r=3, h=5, $fn=20);    
    translate([-14,45,12])rotate([0,90,0])cylinder(r=3, h=5, $fn=20);   

    // lower M3 screw end opening
    //translate([2,49,11.5])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20);    
    //translate([2,49,12])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20);    
    //translate([2,49,12.5])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20);    

    // upper M3 screw end opening
    translate([2,45,11.5])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 
    translate([2,45,12])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 
    translate([2,45,12.5])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 
    
    // M3 nuts opening
    translate([0,42,9]) m3nut();
    //translate([0,37,9]) m3nut();

    // flat bottom side
    translate([-20,33,-10]) cube([30,35,10]);

    // slot
    translate([-6,33,8]) cube([1.5,25,10]);

    // 45 / 30 deg edges 
    translate([-15,32,12]) rotate([45,0,0]) cube([15,10,10]);
    translate([-20,55,13]) rotate([45,0,0]) cube([25,3,5]);

    translate([-2,45,-1]) rotate([0,30,0]) cube([15,15,15]);
    translate([7,46,-1]) rotate([0,0,30]) cube([15,11,25]);

    //PINDA mounting hole
    translate([-5.5,60,6])rotate([90,0,0])cylinder(r=4.1, h=30, $fn=50); 

    // bottom cut
    translate([-15,54.5,-1])  cube([20 , 8,20]); 



}

}

ex_body(); 

 