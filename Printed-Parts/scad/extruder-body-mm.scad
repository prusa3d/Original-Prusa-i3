// PRUSA MM upgrade
// extruder-body-mm
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org



module extruder_body_base()
{
    
    difference()
    {
    union()
    {
        translate( [ -21, -22, 22] ) rotate([0,0,0]) cube( [ 42, 43, 4] );
        
        // filament tubes body
        translate([3,4.25,7]) rotate([0,90,0]) cylinder( h=18, r=5, $fn=30 );     
        translate([-26,4.25,7]) rotate([0,90,0]) cylinder( h=23, r=5, $fn=30 );     
        
                
        // filament tube printing support
        translate( [ -15, 2, 8] ) rotate([0,0,0]) cube( [ 9, 5, 18] );
        translate( [ -10, 2, 8] ) rotate([0,-30,0]) cube( [ 8, 5, 8] );
        
        translate( [ 7, 2, 8] ) rotate([0,0,0]) cube( [ 9, 5, 18] );
        translate( [ 3, 2, 12] ) rotate([0,30,0]) cube( [ 8, 5, 8] );

        
        // sprint tension nuts body
        translate( [ -13, -12, -2] ) rotate([0,0,0]) cube( [ 10, 8, 28] );

        // side walls
        translate( [ -15, -14, -2] ) rotate([0,0,0]) cube( [ 4, 28, 28] );
        translate( [ -19, -22, -2] ) rotate([0,0,0]) cube( [ 35, 3, 28] );
        translate( [ 16, -22, -2] ) rotate([0,0,0]) cube( [ 8, 35, 28] );
        translate( [ -17, -22, -2] ) rotate([0,0,0]) cube( [ 30, 7, 28] );
        
        translate( [ -6, 2, 11] ) rotate([0,-18,0]) cube( [ 3, 5, 13] );

        translate([-15.5,15.5,-2]) cylinder( h=28, r=5.5, $fn=6 );            
        translate([-15.5,-15.5,-2]) cylinder( h=28, r=5.5, $fn=6 );    
        translate([15.5,-15.5,-2]) cylinder( h=28, r=5.5, $fn=6 );  
        
        // input PTFE tube support
        translate( [ -21, 2, 10] ) rotate([0,0,0]) cube( [ 8, 4, 13] );
        translate( [ -26, 2, 11] ) rotate([0,25,0]) cube( [ 8, 4, 13] );
        
        translate( [ 16, 2, 10] ) rotate([0,0,0]) cube( [ 5, 4, 13] );

        
        
    
        }
    
        
    // shared side wall cut
    translate( [ -11, -20, -4] ) rotate([0,0,0]) cube( [ 22, 7, 29] );
        
        
    // filament
    translate([-50,4.25,7]) rotate([0,90,0]) cylinder( h=100, r=1, $fn=30 );  
    
    // filament entry    
    translate([-15,4.25,7]) rotate([0,90,0]) cylinder( h=10, r1=2, r2=1, $fn=30 );  
      
    // filament PTFE tubes     
    translate([6,4.25,7]) rotate([0,90,0]) cylinder( h=30, r=2.2, $fn=30 );     
    translate([-44,4.25,7]) rotate([0,90,0]) cylinder( h=30, r=2, $fn=30 );     
    translate([-51,4.25,7]) rotate([0,90,0]) cylinder( h=30, r=3, r2=2, $fn=30 );  
    
    // pulley distances
    translate([0,0,1]) cylinder( h=18, r=5, $fn=30 ); 
    translate([0,8.5,1]) cylinder( h=18, r=5, $fn=30 ); 
    translate([1,0,12.5]) cylinder( h=6, r=5.5, $fn=30 ); 
    translate([1,8.5,12.5]) cylinder( h=6, r=5.5, $fn=30 ); 
    
    translate([0,0,12.5]) cylinder( h=6, r=5.5, $fn=30 ); 
    translate([0,8.5,12.5]) cylinder( h=6, r=5.5, $fn=30 ); 
    translate( [-7.3, -1, 3] ) rotate([0,-5,-45]) cube( [ 5, 6, 19] );  
    translate( [-2.8, 1, 3] ) rotate([0,-5,0]) cube( [ 5, 6, 19] );  
    translate( [-3.3, 6, 3] ) rotate([0,-5,45]) cube( [ 5, 6, 19] );  
    
    translate( [4, 6.5, 3] ) rotate([0,0,45]) cube( [ 4, 4, 19] );  
    translate( [4, -3.5, 3] ) rotate([0,0,45]) cube( [ 4, 4, 19] );  
        
    // idler spacing   
    translate( [ -10, -1, -11] ) rotate([0,0,0]) cube( [ 16, 12, 15] );  
    translate([-8,10,16.5]) rotate([0,90,90]) cylinder( h=13, r1=5, r2=6, $fn=30 );
    translate([-8,10,4]) rotate([0,90,90]) cylinder( h=13, r1=5, r2=6, $fn=30 );    
        

    // spring tension screws
    translate([-8,-23,16.5]) rotate([0,90,90]) cylinder( h=52, r=1.7, $fn=30 );    
    translate([-8,-23,4]) rotate([0,90,90]) cylinder( h=52, r=1.7, $fn=30 ); 
    translate([-8,-15,16.5]) rotate([0,90,90]) cylinder( h=18, r=1.7, $fn=30 );    
    translate([-8,-15,4]) rotate([0,90,90]) cylinder( h=18, r=1.7, $fn=30 ); 

    // spring tension nuts
    translate( [ -25, -9, 1] ) rotate([0,0,0]) cube( [ 20, 2.2, 6] );
    translate( [ -25, -9, 13.5] ) rotate([0,0,0]) cube( [ 20, 2.2, 6] );

    // motor mounting screws
    translate([-15.5,15.5,-3]) cylinder( h=30, r=1.6, $fn=30 );    
    translate([15.5,15.5,-3]) cylinder( h=30, r=1.6, $fn=30 );    
    translate([-15.5,-15.5,-3]) cylinder( h=30, r=1.6, $fn=30 );    
    translate([15.5,-15.5,-3]) cylinder( h=30, r=1.6, $fn=30 );    
    
    // idler washer opening
    translate([15.5,15.5,21.2]) cylinder( h=1, r=3.6, $fn=30 );    
    
    // motor mounting screw heads
    translate([-15.5,15.5,24]) cylinder( h=4, r=3.2, $fn=30 );    
    translate([15.5,15.5,24]) cylinder( h=4, r=3.2, $fn=30 );    
    translate([-15.5,-15.5,24]) cylinder( h=4, r=3.2, $fn=30 );    
    translate([15.5,-15.5,24]) cylinder( h=4, r=3.2, $fn=30 ); 
    translate([-15.5,15.5,25.5]) cylinder( h=1, r=3.2, r2=3.8, $fn=30 );    
    translate([15.5,-15.5,25.5]) cylinder( h=1, r=3.2, r2=3.8, $fn=30 );    
    translate([-15.5,-15.5,25.5]) cylinder( h=1, r=3.2, r2=3.8, $fn=30 );    
    translate([15.5,15.5,25.5]) cylinder( h=1, r=3.2, r2=3.8, $fn=30 );    
    

    // motor face
    translate([0,0,-2]) cylinder( h=2, r=11.5, $fn=30 ); 

    // top hole
    //#translate([0,0,21]) rotate([0,0,0]) cylinder( h=6, r=9, $fn=6 );    
    translate([-3,-6,-3]) rotate([0,0,45]) cube([5,5,50]);    
    
    // front wall idler round cutoff
    translate([15.5,15.5,-3]) cylinder( h=25, r=6.5, $fn=30 );   
   
    // top / bottom opening hole
    translate([-7,-4,21.9]) rotate([0,0,0]) cube([14,19,10]);    
    translate([-3,-11,21]) rotate([0,0,0]) cube([18,13,10]); 
 
    translate([-9,-4,27]) rotate([0,45,0]) cube([5,19,5]);    
    translate([2,-4,27]) rotate([0,45,0]) cube([5,19,5]);    
    translate([-8,15,25]) rotate([45,0,0]) cube([16,5,5]);    
    translate([-8,-4,25]) rotate([45,0,0]) cube([16,5,5]);    
 
    translate([-3,-11,25.5]) rotate([45,0,0]) cube([18,5,5]); 
    translate([-3,2,25]) rotate([45,0,0]) cube([18,5,5]); 
    translate([-6.5,-11.5,29]) rotate([0,45,0]) cube([5,10,5]); 
    translate([11.5,-11.5,29]) rotate([0,45,0]) cube([5,14.5,5]); 
 
    // 45 EDGES
    translate([21,18,21]) rotate([0,0,45]) cube([10,10,10]);    
    translate([-21,18,21]) rotate([0,0,45]) cube([10,10,10]);    
 
    // shared wall opening
    translate([3,-18,12]) rotate([90,90,0]) cylinder( h=25, r=9, $fn=6 );   
    
    
    
    // festo mounting reinforcement
    translate([20,4.25,7]) rotate([0,90,0]) cylinder( h=3.5, r=3.9, $fn=30 );     
    translate([23,4.25,7]) rotate([0,90,0]) cylinder( h=1.5, r=5.2, $fn=30 );     
    translate([22,4.25,7]) rotate([0,90,0]) cylinder( h=2, r1=3.9, r2=4.55, $fn=30 );  
 
 

    
    
    // screw heads upside down print support
    translate( [ -15.5 , 15.5 ,27] ) rotate([0,180,0])
        {
            intersection(){cylinder(r=3.2, h=10, $fn=30);
            translate( [ 0 , 0 , 2.5 ] ) cube([3.8,8,2], center=true);}
            translate( [ 0 , 0 , 3 ] ) cube([3.8,3.8,2], center=true);
        }
    translate( [ -15.5 , -15.5 ,27] ) rotate([0,180,0])
        {
            intersection(){cylinder(r=3.2, h=10, $fn=30);
            translate( [ 0 , 0 , 2.5 ] ) cube([3.8,8,2], center=true);}
            translate( [ 0 , 0 , 3 ] ) cube([3.8,3.8,2], center=true);
        }
    translate( [ 15.5 , -15.5 ,27] ) rotate([0,180,0])
        {
            intersection(){cylinder(r=3.2, h=10, $fn=30);
            translate( [ 0 , 0 , 2.5 ] ) cube([3.8,8,2], center=true);}
            translate( [ 0 , 0 , 3 ] ) cube([3.8,3.8,2], center=true);
        }        
    translate( [ 15.5 , 15.5 ,27] ) rotate([0,180,0])
        {
            intersection(){cylinder(r=3.2, h=10, $fn=30);
            translate( [ 0 , 0 , 2.5 ] ) cube([3.8,8,2], center=true);}
            translate( [ 0 , 0 , 3 ] ) cube([3.8,3.8,2], center=true);
        }        
    }   
    
        translate( [ -10.1, 2, 23] ) rotate([0,60,0]) cube( [ 3, 5, 3] );   
    
    
    
    }

module extruder_body()
{    
difference()
{
    extruder_body_base();
    translate( [ -21, -25, 47] ) rotate([0,27,0]) cube( [ 55, 50, 5] );       
    translate( [ 19, -30, 29] ) rotate([0,70,0]) cube( [ 30, 50, 8] ); 
    
    translate([8,-9,12]) rotate([0,90,0]) cylinder( h=25, r=1.5, $fn=50 ); 
    translate( [ 15.5, -12, 9] )  cube( [ 4, 6, 6] ); 

}

}


difference()
    {

        union()
        {
        extruder_body();
        translate([0,-44,0]) mirror([0,1,0]) extruder_body();    
        }
        
        translate([22,9,20]) rotate([0,65,0]) cylinder( h=1, r=2, $fn=30 ); 
        translate([22,4,20]) rotate([0,65,0]) cylinder( h=1, r=2, $fn=30 ); 
        translate([22,-53,20]) rotate([0,65,0]) cylinder( h=1, r=2, $fn=30 ); 
}

    

 





