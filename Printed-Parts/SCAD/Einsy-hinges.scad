// PRUSA iteration4
// Einsy cover hinges
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module upper_hinge()
{
difference()    
{
    union(){
     // body
     cylinder( h = 26, r = 2.4, $fn=30); 
     translate([0,0,26]) cylinder( h = 2, r1 = 2.4, r2 = 1.8, $fn=30); 
     translate( [ -5 , -10.7 , 0 ] ) cube( [ 7 , 10.7 , 21 ] );  
    }
     // M3 screw hole
     translate( [ -12.5 , -2.5 , 17 ] ) rotate( [0,90,0] ) cylinder( h = 20, r = 1.75, $fn=30);  
     translate( [ -1.5 , -2.5 , 17 ] ) rotate( [0,90,0] ) cylinder( h = 9, r = 3, $fn=30); 
     // angle cut
     translate([-2.9,-20,-1]) rotate([0,0,60]) cube([25,5,26]);   
}
}

module lower_hinge()
{
difference()
{   
   union(){ 
    // body   
    translate( [ 0 , 6 , 0 ] ) cylinder( h = 15, r = 2.4, $fn=30); 
    translate( [ 0 , 6 , 0 ] ) cylinder( h = 10, r = 2.8, $fn=30);  
    translate( [ 0 , 6 , 15 ] ) cylinder( h = 2, r1 = 2.4, r2=1.8, $fn=30);  
    translate( [ -5 , 6 , 0 ] ) cube( [ 7 , 10.7 , 10 ] ); 
   }
    // M3 screw
    translate( [ -0.5 , 8.5 , 4 ] ) rotate( [0,90,0] ) cylinder( h = 20, r = 3, $fn=30); 
    translate( [ -12 , 8.5 , 4 ] ) rotate( [0,90,0] ) cylinder( h = 20, r = 1.75, $fn=30); 
    // angle cut
    translate([-5,20,-1]) rotate([0,0,-60]) cube([20,5,20]);   
}
}


upper_hinge();
lower_hinge();