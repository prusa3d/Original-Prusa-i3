// PRUSA iteration3
// RAMBo cover base
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org



// main body
module main_body(){
cube( [ 114.5 , 92 , 2 ] );  
cube( [ 1.5 , 92 , 35 ] );  
translate( [ 0 , 90 , 0 ] ) cube( [ 105.5 , 2 , 35 ] );  
translate( [ 63 , 88.5 , 0.5 ] ) cube( [ 6.5 , 2 , 34.5 ] );  

translate( [ 0 , 0 , 1 ] ) cube( [ 5.5 , 7 , 34 ] );  
translate( [ 0 , 0 , 1 ] ) cube( [ 9 , 92 , 3 ] );  
translate( [ 98 , 0 , 0 ] ) cube( [ 9 , 92 , 4 ] );  
translate( [ 98 , 86 , 0 ] ) cube( [ 7.5 , 6 , 35 ] );  
translate( [ 0 , 85 , 0 ] ) cube( [ 5.5 , 7 , 35 ] );  
translate( [ 54 , 84 , 0 ] ) cube( [ 9.5 , 7 , 35 ] );  
translate( [ 20 , 0 , 0 ] ) cube( [ 80 , 3 , 5 ] );  

// RAMBo mounting holes
translate( [ 102.5 , 14 , 1 ] ) rotate([0,0,90]) cylinder( h = 7, r = 5.5, $fn=6); 
translate( [ 102.5 , 75 , 1 ] ) rotate([0,0,90]) cylinder( h = 7, r = 5.5, $fn=6); 
translate( [ 7.5 , 14 , 1 ] ) cylinder( h = 7, r = 5.5, $fn=6); 
translate( [ 7.5 , 75 , 1 ] ) cylinder( h = 7, r = 5.5, $fn=6); 

// corners reinforcement
translate( [ 0 , 75 , 1 ] ) cube( [ 13 , 16 , 6 ] );  
translate( [ 0 , 70.25 , 1 ] ) cube( [ 7.5 , 11 , 6 ] ); 
translate( [ 0 , 7.75 , 1 ] ) cube( [ 7.5 , 11 , 6 ] ); 
translate( [ 0 , 0 , 1 ] ) cube( [ 13 , 14 , 6 ] ); 

// frame mounting screw blocks
translate( [ 98 , 0 , 0 ] ) cube( [ 16.5 , 8 , 8 ] ); 
translate( [ 1 , 0 , 0 ] ) cube( [ 19.5 , 8 , 8 ] );  
translate( [ 16.5 , 8 , 5 ] ) rotate([90,0,0]) cylinder( h = 8, r = 5, $fn=30);   
translate( [ 110.5 , 8 , 5 ] ) rotate([90,90,0]) cylinder( h = 8, r = 5, $fn=30);
translate( [ 18.45 , 0 , 0 ] ) cube( [ 3 , 8 , 5.5] ); 

// heatbed filament holder body
translate( [ 81.6 , 90.35 , 24 ] ) rotate([0,90,0]) cylinder( h = 17, r = 5, $fn=6); 

// door closing corner
translate( [ 102 , 88.5 , 35 ] ) cylinder( h = 3, r1=2.5, r2=1, $fn=30);   

translate( [ 2 , 85 , 31 ] ) cube( [ 6 , 7 , 4] ); 
translate( [ 4 , 88.5 , 35 ] ) cylinder( h = 3, r1=2.5, r2=1, $fn=30);   
translate( [ 89 , 2 , 0 ] ) cylinder( h = 5, r = 6, $fn=6);   

}



module inside_cable_holder(){
    
translate( [ 50 , 6 , 0.5 ] ) cube( [ 30, 2, 20] ); 
difference(){
translate( [ 50 , 8 , 25 ] ) rotate([0,90,0]) cylinder( h = 30, r = 6, $fn=6);   
translate( [ 49 , 8 , 25 ] ) rotate([0,90,0]) cylinder( h = 34, r = 4, $fn=6);  
translate( [ 49 , 8 , 10 ] ) cube( [ 34, 10, 25] );     
}
    
    }

module cutouts(){
// side     
translate( [ 12 , 19 , 1 ] ) cube( [ 85.5 , 51 , 3 ] );   

// RAMBo M3 screws
translate( [ 7.5 , 14 , -1 ] ) cylinder( h = 10, r = 1.7, $fn=30);  
translate( [ 102.5 , 14 , -1 ] ) cylinder( h = 10, r = 1.7, $fn=30);  
translate( [ 102.5 , 75 , -1 ] ) cylinder( h = 10, r = 1.7, $fn=30);  
translate( [ 7.5 , 75 , -1 ] ) cylinder( h = 10, r = 1.7, $fn=30);     
    
// frame mounting screws
translate( [ 16.5 , 8 , 5 ] ) rotate([90,0,0]) cylinder( h = 10, r = 1.6, $fn=30);   
translate( [ 110.5 , 9 , 5 ] ) rotate([90,0,0]) cylinder( h = 10, r = 1.6, $fn=30);   
translate( [ 16.5 , 9 , 5 ] ) rotate([90,0,0]) cylinder( h = 5, r = 3, $fn=30);   
translate( [ 110.5 , 9 , 5 ] ) rotate([90,0,0]) cylinder( h = 5, r = 3, $fn=30);       
translate( [ 114.5 , -2 , -1 ] ) cube( [ 5 , 15 , 10] ); 

// USB connector hole
translate( [ -1 , 41.5 , 11 ] ) cube( [ 5.5 , 13 , 11 ] );  

// reset button
translate( [ -2 , 65 , 14 ] ) rotate([0,90,0]) cylinder( h = 10, r = 2, $fn=30);  

// door closing screw
translate( [ 58.5 , 88 , -1 ] ) cylinder( h = 43, r = 1.8, $fn=30);  


// heatbed cable opening hole
translate( [ 75.5 , 94 , 24 ] ) rotate([90,90,0]) cylinder( h = 5, r = 7, $fn=6); 
translate( [ 77.6 , 80 , 20.5 ] ) cube( [ 4 , 15 , 15] ); 
translate( [ 69.4 , 95 , 27.5 ] ) rotate([90,60,0]) cube( [ 5 , 10 , 10] ); 

// heatbed cable ziptie holes
translate( [ 64 , 87 , 30 ] ) cube( [ 4 , 10 , 2 ] ); 
translate( [ 64 , 87 , 16 ] ) cube( [ 4 , 10 , 2 ] );  



// heatbed filament holder hole
translate( [ 81 , 89 , 24 ] ) rotate([0,90,0]) cylinder( h = 17, r = 1.6, $fn=30); 
translate( [ 81 , 89 , 24 ] ) rotate([0,90,0]) cylinder( h = 2, r = 2, r2=1.6, $fn=30);  
translate( [ 70 , 92 , 15 ] ) cube( [ 30 , 10 , 15] ); 


// nut traps
translate( [ 7.5 , 14 , -1 ] ) cylinder( h = 4, r = 3.2, $fn=6);  
translate( [ 102.5 , 14 , -1 ] ) cylinder( h = 4, r = 3.2, $fn=6);  
translate( [ 102.5 , 75 , -1 ] ) cylinder( h = 4, r = 3.2, $fn=6);  
translate( [ 7.5 , 75 , -1 ] ) cylinder( h = 4, r = 3.2, $fn=6);  

translate( [ 7.5 , 14 , -1 ] ) cylinder( h = 1.5, r1 = 5, r2=3.2, $fn=6);  
translate( [ 102.5 , 14 , -1 ] ) cylinder( h = 1.5, r1 = 5, r2=3.2, $fn=6);  
translate( [ 102.5 , 75 , -1 ] ) cylinder( h = 1.5, r1 = 5, r2=3.2, $fn=6);  
translate( [ 7.5 , 75 , -1 ] ) cylinder( h = 1.5, r1 = 5, r2=3.2, $fn=6);  
translate( [ 58.5 , 88 , -1 ] ) cylinder( h = 4, r = 3.2, $fn=30);   


// door closing corners
translate( [ 8 , 80 , 28 ] ) rotate([0,0,45]) cube( [ 5 , 5 , 10] ); 
translate( [ 106 , 81 , 4 ] ) rotate([0,0,45]) cube( [ 5 , 5 , 40] ); 



// x axis cable hole
translate( [ 89 , 2 , -1 ] ) cylinder( h = 10, r = 4, $fn=6);   
translate( [ 80 , -5 , -1 ] ) cube( [ 15, 5, 10] ); 



// large corner coutout
translate( [ -25 , 80 , -54 ] ) rotate([50,0,45]) cube( [ 50, 50, 50] ); 
translate( [ 137.5 , 60 , -10 ] ) rotate([0,0,45]) cube( [ 50, 50, 50] ); 

}

module ext_ziptie(){
difference(){
translate( [ -6 , 28 , 27 ] ) rotate([0,90,0]) cylinder( h = 3, r = 15, $fn=30);       
translate( [ -7 , 28 , 27 ] ) rotate([0,90,0]) cylinder( h = 5, r = 7, $fn=30);       
}
}


module ext_cable_holder()
{
difference()
{
    union(){
        rotate([90,0,0]) translate([-8, 26, -28]) rotate([0,90,0]) cylinder( h = 4, r1 = 7, r2=10, $fn=6);    
        rotate([90,0,0]) translate([-4, 26, -28]) rotate([0,90,0]) cylinder( h = 4, r1 = 10, r2=10, $fn=6);    
        rotate([90,0,0]) translate( [ 1.5 , 26 , -28 ] ) rotate([0,90,0]) cylinder( h = 10, r1 = 10, r2=7, $fn=6);
        translate( [ -4.1 , 28 , 17.5 ] ) rotate([0,45,0]) cube( [ 7 , 5 , 8 ] );           
    }
    
    translate( [ -15 , 13 , 15] ) cube( [ 15 , 15 , 25 ] );  
    translate( [ 1.5 , 26 , 10] ) cube( [ 15 , 15 , 25 ] );   
 
    difference(){
        rotate([90,0,0]) translate([-4, 26, -28]) rotate([0,90,0]) cylinder( h = 3.5, r = 8,  $fn=30);    
        rotate([90,0,0]) translate([-5, 26, -28]) rotate([0,90,0]) cylinder( h = 5.5, r = 6.5,  $fn=30);    
        }
}
}







module rambo_cover()
{
    difference()
    {
    main_body();
    cutouts();
    }
}


difference(){

union(){
rambo_cover();
    translate( [ 10 , 89 , 3] ) cube( [ 6 , 1 , 32 ] ); 
    translate( [ 12 , 89 , 1] ) cube( [ 4 , 1 , 2 ] ); 
}

translate( [ 25 ,89 , 20.8] ) cube( [ 7.4 , 5 , 16 ] );  //Cube018   
translate( [ 25 , 95 , 25 ] ) rotate([90,90,0]) cylinder( h = 7, r = 8.5, $fn=6);   

// extruder cable zipties
translate( [ 11 , 87 , 30 ] ) cube( [ 4 , 10 , 2 ] );  
translate( [ 11 , 87 , 16 ] ) cube( [ 4 , 10 , 2 ] );  
    


}

module extruder_filament_holder()
{
difference(){
translate( [ 33 , 90 , 25 ] ) rotate([0,90,0]) cylinder( h = 22, r = 8, $fn=4);  
translate( [ 30 , 88 , 25 ] ) rotate([0,90,0]) cylinder( h = 22, r = 1.6, $fn=30);  
translate( [ 32 , 88 , 25 ] ) rotate([0,90,0]) cylinder( h = 3, r1 = 2, r2=1.6, $fn=30); 
translate( [ 26 ,79 , 20.8] ) cube( [ 30 , 5 , 16 ] );          
translate( [ 26 ,91 , 15] ) cube( [ 30 , 15 , 16 ] );     
}
}

extruder_filament_holder();

// print part support
translate([0,1,0])
difference(){
translate( [ 18 ,90 , 15] ) cube( [ 7 , 1 , 19 ] );    
translate( [ 17 ,90.6 , 29.4] ) rotate([0,60,0]) cube( [ 1 , 1 , 19 ] );    
translate( [ 30 ,90.6 , 13.1] ) rotate([0,-60,0]) cube( [ 1 , 1 , 19 ] );    
translate( [ 30 ,89 , 13] ) rotate([0,-60,0]) cube( [ 10 , 3 , 10 ] );    

translate( [ 20 ,100, 20 ] ) rotate([90,0,0]) cylinder( h = 33, r = 1, $fn=30);     
translate( [ 21 ,99, 31 ] ) rotate([90,0,0]) cylinder( h = 33, r = 1, $fn=30);     
}



// print part support
difference()
{
translate( [ 70 ,90.5 , 15] ) cube( [ 7.5 , 1 , 19 ] );     
translate( [ 69 ,91 , 27.8] ) rotate([0,60,0]) cube( [ 1 , 1 , 19 ] );    
translate( [ 80 ,91 , 13.9] ) rotate([0,-60,0]) cube( [ 1 , 1 , 19 ] );    
translate( [ 81.5 ,90 , 10] ) rotate([0,-60,0]) cube( [ 10 , 2 , 10 ] );    
}




















