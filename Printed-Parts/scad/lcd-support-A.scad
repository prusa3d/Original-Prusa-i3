// PRUSA iteration3
// lcd-support-A
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org




module body(){

difference() {
    
    union(){
        translate( [ -55, -2 , 0 ] ) cube( [ 69 , 81 , 10 ] ); 
    }
    
    union (){

    // outer body shape
    translate( [ -69.6, 32, -1 ] ) rotate([0,0,45]) cube( [ 60 , 53 , 15 ] ); 
    translate( [ 13.7, 89.7, -1 ] ) rotate([0,0,135]) cube( [ 60 , 42 , 15 ] );
    translate( [ -19, -9, -1 ] ) cube( [ 60 , 9 , 15 ] );   
    translate( [ 7, -3, -1 ] ) cube( [ 60 , 68 , 16 ] );  
    translate( [ -16, 60, -1 ] ) cube( [ 60 , 50 , 15 ] );
    translate( [ -41, -45, -1 ] ) rotate([0,0,45]) cube( [ 60 , 80 , 13 ] );  
        
    // threaded rods opening
    translate( [ -44 , 57.5 , -1 ] ) cylinder( h = 17, r = 4.2, $fn=30);  
    translate( [ -29 , 71.9 , -1 ] ) cylinder( h = 17, r = 4.2, $fn=30);  

    // pcb cout out
    translate( [ 4 , 1.5 , -1 ] ) cube( [ 1.8 , 56.5 , 17 ] ); 
    translate( [ 0 , 7.5 , -1 ] ) cube( [ 5.8 , 44.5 , 17 ] ); 
    translate( [ 4.8 , 3.5 , -1 ] ) cube( [ 5.8 , 52.5 , 17 ] );

    translate( [ 8 , -5 , -1 ] ) rotate([0,0,45]) cube( [ 5 , 5 , 17 ] );
    translate( [ 8 , 58 , -1 ] ) rotate([0,0,45]) cube( [ 5 , 5 , 17 ] );
        
    }

    // pcb inserts
    translate( [ 4, 3 , 8 ] ) rotate([45,0,0]) cube( [ 1.8 , 5 , 5 ] ); 
    translate( [ 4, 56.5 , 8 ] ) rotate([45,0,0]) cube( [ 1.8 , 5 , 5 ] );     
    translate( [ 4, 3 , -5 ] ) rotate([45,0,0]) cube( [ 1.8 , 5 , 5 ] ); 
    translate( [ 4, 56.5 , -5 ] ) rotate([45,0,0]) cube( [ 1.8 , 5 , 5 ] );     
    
}

 
difference(){
    union(){
        translate( [ -44 , 57.5 , 0 ] ) cylinder( h = 10, r = 7, $fn=30); 
        translate( [ -29 , 71.9 , 0 ] ) cylinder( h = 10, r =7 , $fn=30); 
    }
        translate( [ -44 , 57.5 , -1 ] ) cylinder( h = 17, r = 4.2, $fn=30);
        translate( [ -29 , 71.9 , -1 ] ) cylinder( h = 17, r = 4.2, $fn=30);
}
}



module ziptie()
{
difference()
{
  union(){
    difference(){
        translate( [ -72 , 29 , 3 ] ) cylinder( h = 4, r = 7, $fn=30);
        translate( [ -72 , 29 , 3 ] ) cylinder( h = 4, r = 5, $fn=30);
    }
    difference(){
        translate( [ -72 , 9.5 , 3 ] ) cylinder( h = 4, r = 7, $fn=30);
        translate( [ -72 , 11 , 3 ] ) cylinder( h = 4, r = 5, $fn=30); 
    }
    }
    translate( [ -80 , 9.1 , 3 ] )  cube( [ 15 , 19.8 , 4 ] );  
    }
    
    translate( [ -67 , 9 , 3 ] )  cube( [ 2 , 20 , 4 ] ); 
}
    




difference() {
    
rotate([0,0,45]) body();

// lightening holes
translate( [ -42 , 15 , -1 ] ) cylinder( h = 15, r = 14, $fn=6);  
translate( [ -24 , 7 , -1 ] ) cylinder( h = 15, r = 5, $fn=6);  
translate( [ -60 , 7 , -1 ] ) cylinder( h = 15, r = 5, $fn=6);  
translate( [ -60 , 23 , -1 ] ) cylinder( h = 15, r = 5, $fn=6);  
    
// threaded rods corners
translate( [ -71 , 28.5 , -1 ] ) rotate([0,0,70]) cube( [ 5 , 10 , 15 ] );   
translate( [ -71 , 7.5 , -1 ] ) rotate([0,0,70]) cube( [ 5 , 10 , 15 ] );      
translate( [ -80 , 29, -1 ] ) rotate([0,0,-70]) cube( [ 5 , 10 , 15 ] );   
translate( [ -82 , 7.5 , -1 ] ) rotate([0,0,-70]) cube( [ 5 , 10 , 15 ] );      
translate( [ -86 , 0 , -1 ] ) cube( [ 12 , 50 , 15 ] );  
translate( [ -83 , -16 , -1 ] ) rotate([0,0,45]) cube( [ 20 , 20 , 15 ] );  

ziptie();
// ziptie head cutout
translate( [ -74 , 38 , 5 ] ) rotate([90,0,0]) cylinder( h = 5, r = 3, $fn=30);  
    


}























