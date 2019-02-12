// PRUSA iteration4
// Einsy base 
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module CubicPattern(Xdim, Ydim)
{
        for (x =[0:12:Xdim-10])
        {
            for (y =[0:12:Ydim-10])
            {
                translate([x,y,-0.2])cube([10,10,0.4]);
            }
        }
}

module BottomCubic()
{
    difference()
    {
        translate([5,5,0]) CubicPattern(110,90);
        translate([11,0,-1]) cube( [ 11, 40 , 4 ] );  
        translate([0,0,-1]) cube( [ 11, 28 , 4 ] );  
        translate([0,64,-1]) cube( [ 16, 28 , 4 ] ); 
        translate([95,64,-1]) cube( [ 20, 28 , 4 ] );  
        translate([95,0,-1]) cube( [ 20, 28 , 4 ] );  
        translate([76,-10,-1]) cube( [ 20, 20 , 4 ] );  
        translate([52,76,-1]) cube( [ 12, 20 , 4 ] );  
    }
}



// main body
module main_body()

         
{
      
    
       //raspberry frame
        
        
    
        // side panel
        cube( [ 118.5 , 92 , 2 ] );  

        // upper panel
        cube( [ 1.5 , 92 , 35 ] );  
        // rear panel
        translate( [ 0 , 90 , 0 ] ) cube( [ 105.5 , 2 , 35 ] );  
         

        // upper panel frame reinforcement
        translate( [ 0 , 0 , 1 ] ) cube( [ 5 , 7 , 34 ] );  

        // side panel reinforcement
       translate( [ 0 , 0 , 1 ] ) cube( [ 9 , 92 , 3 ] );  
        translate( [ 98 , 0 , 0 ] ) cube( [ 9 , 92 , 4 ] ); 
        
        // 
        translate([21,81,0]) cylinder( h = 4.5, r = 2.5, $fn=30);   
        translate([21+58,81,0]) cylinder( h = 4.5, r = 2.5, $fn=30);
      
        
        // ziptie cable managment
     translate( [0 , 55 , 22 ] )  difference() {
           
       translate( [0 , 0 , -2 ] ) cube( [ 5 , 8 , 10 ] );
       translate( [0 , -1 , -3 ] ) rotate([0,45,0])  cube( [ 5 , 10 , 8 ] );
       translate( [5, -1 , 6 ] ) rotate([0,-60,0])  cube( [ 5 , 10 , 8 ] );
      union() {  
       translate( [1.5 , 2.5 , 3.5] ) cube( [ 2 , 3 ,10 ] );
       translate( [3 , 2.5 , 2 ] ) cube( [ 5.5 , 3 ,2 ] );
       translate( [2 , 2.5 , 6.5 ] ) cube( [ 5 , 3 ,3 ] );
       
       difference () {    
       translate( [ 3 ,5.5 , 3.5 ] ) rotate([90,0,0]) cylinder( h = 3, r = 1.5, $fn=30);  
          translate( [3.5 , 1.5 , 4 ] ) cube( [ 5 , 5 ,3 ] );  
           
       }
       
       
       
       
        difference () {    
       translate( [ 4,5.5 , 4.5 ] ) rotate([90,0,0]) cylinder( h = 3, r = 1, $fn=30);      
       translate( [ 4,5.5 , 4.5 ] ) rotate([90,0,0]) cylinder( h = 3, r = 0.5, $fn=30);  
          translate( [3.5 , 1.5 , 4.5 ] ) cube( [ 5 , 5 ,3 ] );  
          translate( [4. , 1.5 , 4 ] ) cube( [ 5 , 5 ,3 ] ); 
       }
           }
     }
     
     translate( [25 , 91.5 , 22 ] ) rotate([0,0,-90])  difference() {
           
       translate( [0 , 0 , -2 ] ) cube( [ 5 , 8 , 10 ] );
       translate( [0 , -1 , -3 ] ) rotate([0,45,0])  cube( [ 5 , 10 , 8 ] );
       translate( [5, -1 , 6 ] ) rotate([0,-60,0])  cube( [ 5 , 10 , 8 ] );
      union() {  
       translate( [1.5 , 2.5 , 3.5] ) cube( [ 2 , 3 ,10 ] );
       translate( [3 , 2.5 , 2 ] ) cube( [ 5.5 , 3 ,2 ] );
       translate( [2 , 2.5 , 6.5 ] ) cube( [ 5 , 3 ,3 ] );
       
       difference () {    
       translate( [ 3 ,5.5 , 3.5 ] ) rotate([90,0,0]) cylinder( h = 3, r = 1.5, $fn=30);  
          translate( [3.5 , 1.5 , 4 ] ) cube( [ 5 , 5 ,3 ] );  
           
       }
       
       
       
       
        difference () {    
       translate( [ 4,5.5 , 4.5 ] ) rotate([90,0,0]) cylinder( h = 3, r = 1, $fn=30);      
       translate( [ 4,5.5 , 4.5 ] ) rotate([90,0,0]) cylinder( h = 3, r = 0.5, $fn=30);  
          translate( [3.5 , 1.5 , 4.5 ] ) cube( [ 5 , 5 ,3 ] );  
          translate( [4. , 1.5 , 4 ] ) cube( [ 5 , 5 ,3 ] ); 
       }
           }
     }
     
     
     
    difference()
        {
            // bottom side reinforcement    
            translate( [ 98 , 86 , 0 ] ) cube( [ 7.5 , 6 , 35 ] ); 
            translate( [ 96 , 79 , 0 ] ) rotate([0,0,45]) cube( [ 7.5 , 6 , 36 ] ); 
        }
        translate( [ 0 , 85 , 0 ] ) cube( [ 5.5 , 7 , 35 ] ); 

        // screw mounting block
        translate( [ 54 , 84 , 0 ] ) cube( [ 9.5 , 7 , 35 ] );  

        // frame side panel
        translate( [ 20 , 0 , 0 ] ) cube( [ 80 , 3 , 5 ] );  

        // Einsy mounting holes
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
        //upper
        translate( [ 1 , 0 , 0 ] ) cube( [ 28 , 4 , 10 ] );  
        translate( [ 18.45 , 0 , 0 ] ) cube( [ 3 , 4 , 5.5] ); 

        //lower
        translate( [ 98 , 0 , 0 ] ) cube( [ 20.5 , 4 , 10 ] ); 

       

        // door closing corner
        translate( [ 102 , 88.5 , 35 ] ) cylinder( h = 3, r1=2.5, r2=1, $fn=30);   

        // doors pin upper
        translate( [ 2 , 85 , 31 ] ) cube( [ 6 , 7 , 4] ); 
        translate( [ 4 , 88.5 , 35 ] ) cylinder( h = 3, r1=2.5, r2=1, $fn=30);   

        // x-axis cables entry hole body
        translate( [ 89 , 2 , 0 ] ) cylinder( h = 5, r = 6, $fn=6);   
        
       
}
    module rambo_popout_cover () {
        
        //raspberry cover
        translate( [ 20 , 37.5 , 0] )  cube( [ 3 , 1 , 0.5] );
        translate( [ 33 , 37.5 , 0] )  cube( [ 3 , 1 , 0.5] );
        translate( [ 45.8 , 37.5 , 0] )  cube( [ 3 , 1 , 0.5] );
        translate( [ 59 , 37.5 , 0] )  cube( [ 3 , 1 , 0.5] );
        translate( [72.5 , 37.5 , 0] )  cube( [ 3 , 1 , 0.5] );
        
        
        translate( [ 20 , 71.5 , 0] )  cube( [ 3 , 1 , 0.5] );
        translate( [ 33 , 71.5 , 0] )  cube( [ 3 , 1 , 0.5] );
        translate( [ 45.8 , 71.5 , 0] )  cube( [ 3 , 1 , 0.5] );
        translate( [ 59 , 71.5 , 0] )  cube( [ 3 , 1 , 0.5] );
        translate( [72.5 , 71.5 , 0] )  cube( [ 3 , 1 , 0.5] );
       
       
        translate( [ 9 , 51.5 , 0] )  cube( [ 5 , 7 , 0.5] );
        translate( [ 81 , 53.5 , 0] )  cube( [ 1 , 3 , 0.5] );
        
        
        
        
 
        
       difference() {
        translate( [ 14 , 38.5 , 0] )  cube( [ 67 , 33 , 2] );
        
           
        translate( [ 0.5 , 0.5 , 0] ) difference() 
           {   
        translate( [ 17.5 , 42 , -1.1] )  cylinder( h = 9.2, r = 8, $fn=40);
        translate( [ 17.2 , 41.7 , -1] )  cylinder( h = 9, r = 3.7, $fn=40);
        
        translate( [ 13.5 , 41.7 , -1] )  cube( [ 12.7 , 9 , 9] );
        translate( [ 17.2 , 38 , -1] )  cube( [ 9, 5 , 9] );     
  }  
  
  
        translate( [ 60 , 0 , 0] )  difference() 
           {   
        translate( [ 17.3 , 42.2 , -1.1] )  cylinder( h = 9.2, r = 8, $fn=40);
        translate( [ 17.3 , 42.2 , -1] )  cylinder( h = 9, r = 3.7, $fn=40);
        
        translate( [ 9.0 , 42 , -1] )  cube( [ 12 , 9 , 9] );
        translate( [ 8.8 , 38.5 , -1] )  cube( [ 9, 5 , 9] );   
             
}          
        translate( [ 60 , 26 , 0] )  difference() 
           {   
        translate( [ 17.3 , 41.8 , -1.1] )  cylinder( h = 9.2, r = 8, $fn=40);
        translate( [ 17.4 , 41.8 , -1] )  cylinder( h = 9, r = 3.7, $fn=40);
        
        translate( [ 8.5 , 33.5 , -1] )  cube( [ 9 , 12 , 9] );
        translate( [ 17 , 33 , -1] )  cube( [ 4, 9 , 9] ); 
}           
           
        translate( [ 0 , 26 , 0] )  difference() 
           {   
        translate( [ 17.7 , 41.8 , -1.1] )  cylinder( h = 9.2, r = 8, $fn=40);
        translate( [ 17.7 , 41.8 , -1] )  cylinder( h = 9, r = 3.7, $fn=40);
        
        translate( [ 17.5 , 33.5 , -1] )  cube( [ 9 , 12 , 9] );
        translate( [ 14 , 33.5 , -1] )  cube( [ 5, 9 , 9] );     
              }  }}



 
    module ventilation_holes()
    {
        
        difference () {
     for ( i = [-5 : 8] ){
      translate([46 + (i*5.5),10.5,-1]) cube([3.65,19+49.0,1.2]);
      translate([46 + (i*5.5),10.5,-1]) cube([3.65,18,10]);
      translate([46 + (i*5.5),10.5+25,-1]) cube([3.65,18,10]);
      translate([46 + (i*5.5),10.5+50,-1]) cube([3.65,18,10]);
    }
    difference () {
    translate( [ 13 , 35 , 0] )  cube( [ 71 , 39 , 2] );
    translate( [ 14 , 40.5 , -0.1] )  cube( [ 63 , 29 , 2.2] );
}}
}


    
    
    


module cutouts(){
    
    
    // extruder cable holder
    translate([1.5,7,14.8]) rotate([0,45,0]) cube([3,40,5]); 
    translate([-20,28,28]) rotate([0,90,0]) cylinder( h = 40,r = 5.5,$fn=30); 
    translate([-15,0,35]) cube([30,60,15]); 
    translate([-15,24,30]) cube([30,8,8]); 
    
    translate([-15,12,28]) cube([15,30,8]); 
    translate([-12,16.5,28]) cube([15,23,8]); 
    translate([-3,28,28]) rotate([35,90,0]) cylinder( h = 24,r = 1.7,$fn=30); 
    

    
    
   
    
    
    
    // side     
    translate( [ 12 , 19 , 1 ] ) cube( [ 85.5 , 51 , 3 ] );   

    // Einsy M3 screws
    translate( [ 7.5 , 14 , -1 ] ) cylinder( h = 10, r = 1.9, $fn=30);  
    translate( [ 102.5 , 14 , -1 ] ) cylinder( h = 10, r = 1.9, $fn=30);  
    translate( [ 102.5 , 75 , -1 ] ) cylinder( h = 10, r = 1.9, $fn=30);  
    translate( [ 7.5 , 75 , -1 ] ) cylinder( h = 10, r = 1.9, $fn=30);     

    translate( [ 7.5 , 14 , 6 ] ) cylinder( h = 3, r1 = 1.9, r2=2.4, $fn=30);  
    translate( [ 102.5 , 14 , 6 ] ) cylinder( h = 3, r1 = 1.9, r2=2.4, $fn=30);  
    translate( [ 102.5 , 75 , 6 ] ) cylinder( h = 3, r1 = 1.9, r2=2.4, $fn=30);  
    translate( [ 7.5 , 75 , 6 ] ) cylinder( h = 3, r1 = 1.9, r2=2.4, $fn=30);     

    translate( [ 2 , 0 , 0 ] )ventilation_holes();
    
   
    
    // frame mounting screws
    //upper    
    translate( [ 18.5, -2 , 15.6 ] ) rotate([0,45,0]) cube( [ 15 , 10 , 10] );     
    translate( [ 16.5 , 8 , 5 ] ) rotate([90,0,0]) cylinder( h = 10, r = 1.6, $fn=30);   
    translate( [ 16.5 , 9 , 5 ] ) rotate([90,0,0]) cylinder( h = 5, r = 3, $fn=30);   
    translate( [ 15.15 , -2 , 5 ] ) cube( [ 2.7 , 15 , 10] ); 
    translate( [ 15.1 , -2 , 7 ] ) rotate([0,5,0]) cube( [ 2.8 , 15 , 10] ); 
    translate( [ 15.1 , -2 , 7 ] ) rotate([0,-5,0]) cube( [ 2.8 , 15 , 10] ); 


    //lower
    translate( [ 110.5 , 9 , 5 ] ) rotate([90,0,0]) cylinder( h = 10, r = 1.6, $fn=30);   
    translate( [ 110.5 , 9 , 5 ] ) rotate([90,0,0]) cylinder( h = 5, r = 3, $fn=30);       
    translate( [ 118.5 , -2 , 6 ] ) rotate([0,-45,0]) cube( [ 5 , 15 , 15] ); 
    translate( [ 94.5 , -2 , 8.5 ] ) rotate([0,45,0]) cube( [ 5 , 8 , 15] ); 
    translate( [ 0 , -2 , -5 ] ) cube( [ 120 , 15 , 5] ); 
    translate( [ 109.15 , -2 , 5 ] ) cube( [ 2.7 , 15 , 10] ); 
    translate( [ 109.3 , -2 , 6.5 ] ) rotate([0,5,0]) cube( [ 2.5 , 15 , 10] ); 
    translate( [ 109.2 , -2 , 6.5 ] ) rotate([0,-5,0]) cube( [ 2.5 , 15 , 10] ); 

    // USB connector hole
    translate( [ -1 , 41.5 , 11 ] ) cube( [ 5.5 , 13 , 11 ] );  

    // reset button
    translate( [ -2 , 65 , 14 ] ) rotate([0,90,0]) cylinder( h = 10, r = 2, $fn=30);  

    // door closing screw
    translate( [ 58.5 , 88 , -1 ] ) cylinder( h = 43, r = 1.9, $fn=30);  


   


    


  
    
    
 
    // nut traps HEX  
    translate( [ 7.5 , 14 , -1 ] ){
    cylinder( h = 4, r = 3.2, $fn=6);  
    rotate([0,0,0]) resize([0,2,0]) cylinder( h = 4, r = 3.5, $fn=6);  
    rotate([0,0,60]) resize([0,2,0]) cylinder( h = 4, r = 3.5, $fn=6);  
    rotate([0,0,120]) resize([0,2,0]) cylinder( h = 4, r = 3.5, $fn=6);  
    }

    translate( [ 102.5 , 14 , -1 ] ){
    cylinder( h = 4, r = 3.2, $fn=6);  
    rotate([0,0,0]) resize([0,2,0]) cylinder( h = 4, r = 3.5, $fn=6);  
    rotate([0,0,60]) resize([0,2,0]) cylinder( h = 4, r = 3.5, $fn=6);  
    rotate([0,0,120]) resize([0,2,0]) cylinder( h = 4, r = 3.5, $fn=6);  
    }

    translate( [ 102.5 , 75 , -1 ] ){
    cylinder( h = 4, r = 3.2, $fn=6);  
    rotate([0,0,0]) resize([0,2,0]) cylinder( h = 4, r = 3.5, $fn=6);  
    rotate([0,0,60]) resize([0,2,0]) cylinder( h = 4, r = 3.5, $fn=6);  
    rotate([0,0,120]) resize([0,2,0]) cylinder( h = 4, r = 3.5, $fn=6);  
    }

    translate( [ 7.5 , 75 , -1 ] ){
    cylinder( h = 4, r = 3.2, $fn=6);  
    rotate([0,0,0]) resize([0,2,0]) cylinder( h = 4, r = 3.5, $fn=6);  
    rotate([0,0,60]) resize([0,2,0]) cylinder( h = 4, r = 3.5, $fn=6);  
    rotate([0,0,120]) resize([0,2,0]) cylinder( h = 4, r = 3.5, $fn=6);  
    }

    translate( [ 7.5 , 14 , -1 ] ) cylinder( h = 1.5, r1 = 6, r2=3.2, $fn=6);  
    translate( [ 102.5 , 14 , -1 ] ) cylinder( h = 1.5, r1 = 6, r2=3.2, $fn=6);  
    translate( [ 102.5 , 75 , -1 ] ) cylinder( h = 1.5, r1 = 6, r2=3.2, $fn=6);  
    translate( [ 7.5 , 75 , -1 ] ) cylinder( h = 1.5, r1 = 6, r2=3.2, $fn=6);  
    translate( [ 58.5 , 88 , -1 ] ) cylinder( h = 4, r = 3.2, $fn=30);   

    // door closing corners
    translate( [ 8 , 80 , 28 ] ) rotate([0,0,45]) cube( [ 5 , 5 , 10] ); 
    translate( [ 106 , 81 , 4 ] ) rotate([0,0,45]) cube( [ 5 , 5 , 40] ); 

    // inner edges cutout
   translate( [ 54 , 79.5 , 2 ] ) rotate([0,0,45]) cube( [ 5 , 5 , 50] ); 
    //translate( [ 70 , 82.5 , 2 ] ) rotate([0,0,45]) cube( [ 5 , 5 , 50] ); 
    translate( [ 6 , 80 , 7 ] ) rotate([0,0,45]) cube( [ 5 , 5 , 24] ); 
   translate( [ 5.5 , 4 , 7 ] ) rotate([0,0,45]) cube( [ 3 , 5 , 29] ); 

    // x axis cable hole
    translate( [ 89 , 2 , -1 ] ) cylinder( h = 10, r = 4, $fn=6);   
    translate( [ 80 , -5 , -1 ] ) cube( [ 15, 5, 10] ); 

    // large corner coutout
    translate( [ -27 , 80 , -54 ] ) rotate([50,0,45]) cube( [ 50, 50, 50] ); 
    translate( [ 137.5 , 60 , -10 ] ) rotate([0,0,45]) cube( [ 50, 50, 50] ); 


     // screw body edge
    translate( [ 65 ,74.2 , 2] ) rotate([0,0,45]) cube( [ 10 , 10 , 50 ] );



}



 module raspberry()   
    
    {
        //raspberry pcb
        
         translate( [ 11 , 42 , -1] )  cube( [ 2.1 , 26 , 9] );
         translate( [ 81.9 , 42 , -1] )  cube( [ 2.1 , 5 , 9] );
         translate( [ 81.9 ,63 , -1] )  cube( [ 2.1 , 5 , 9] );
        
       difference() {
        translate( [ 13 , 37.5 , -1] )  cube( [ 69 , 35 , 9] );
        
           
        translate( [ 0 , 0 , 0] ) difference() 
           {   
        translate( [ 17.5 , 42 , -1.1] )  cylinder( h = 9.2, r = 8, $fn=40);
        translate( [ 17.5 , 42 , -1] )  cylinder( h = 9, r = 4.5, $fn=40);
        
        translate( [ 13 , 42 , -1] )  cube( [ 12 , 8 , 9] );
        translate( [ 17.5 , 37.5 , -1] )  cube( [ 8, 5 , 9] );     
  }  
  
  
        translate( [ 60 , 0 , 0] )  difference() 
           {   
        translate( [ 17.5 , 42 , -1.1] )  cylinder( h = 9.2, r = 8, $fn=40);
        translate( [ 17.5 , 42 , -1] )  cylinder( h = 9, r = 4.5, $fn=40);
        
        translate( [ 10 , 42 , -1] )  cube( [ 12 , 8 , 9] );
        translate( [ 9.5 , 37.5 , -1] )  cube( [ 8, 5 , 9] );   
             
}          
        translate( [ 60 , 26 , 0] )  difference() 
           {   
        translate( [ 17.5 , 42 , -1.1] )  cylinder( h = 9.2, r = 8, $fn=40);
        translate( [ 17.5 , 42 , -1] )  cylinder( h = 9, r = 4.5, $fn=40);
        
        translate( [ 9.5 , 34.5 , -1] )  cube( [ 8 , 12 , 9] );
        translate( [ 18 , 34 , -1] )  cube( [ 4, 8 , 9] ); 
}           
           
        translate( [ 0 , 26 , 0] )  difference() 
           {   
        translate( [ 17.5 , 42 , -1.1] )  cylinder( h = 9.2, r = 8, $fn=40);
        translate( [ 17.5 , 42 , -1] )  cylinder( h = 9, r = 4.5, $fn=40);
        
        translate( [ 17.5 , 34.5 , -1] )  cube( [ 8 , 12 , 9] );
        translate( [ 13 , 34 , -1] )  cube( [ 5, 8 , 9] );     
              
       
  }  }}



module rambo_cover()
{
    

    difference(){
    rambo_popout_cover ();
    cutouts();    
    }
        
    difference(){
    main_body();
        
    cutouts();
     
    raspberry();    
        
    // main hole
    translate( [ -10 , 28 , 26 ] ) rotate([0,90,0]) cylinder( h = 24, r = 6.8, $fn=30);   
    // cable opening slot
    translate( [ -15 , 25 , 30 ] ) cube( [ 30 , 6 , 10 ] ); 
        
      
     
    
    
    }
}


difference()
{
    union()
            {
            rambo_cover();
            
            
            // extruder cable holder
                
                
    difference(){
    translate([0,0,15]) cube([5,40,20]);
    translate([1.5,3,14.8]) rotate([0,45,0]) cube([3,40,5]);  
    }    
    translate([5,28,28]) rotate([0,90,0]) cylinder(h=5,r1=10,r2=8,$fn=30);  
    difference()
    {
        translate([-1.93,0,28.07]) rotate([0,45,0]) cube([9.8,25,9.8]);  
        translate([-5,-5,15]) cube([5,40,20]);  
        translate([10,-5,15]) cube([5,40,20]); 
        
        
        
        // screwdriver hole
         translate( [ 7.5 , 14 , 15 ] ) cylinder( h = 25, r = 2, $fn=30);
        translate( [ 7.5 , 12 , 15 ] ) cube( [ 8 , 4 , 25] );
        
    }
    translate([-6,28,28]) rotate([0,90,0]) cylinder(h=6,r=13.5,$fn=30);  
    translate([-10,28,28]) rotate([0,90,0]) cylinder(h=4,r1=8.5,r2=13.5,$fn=30);  
    
    difference()
    {
        translate([-5.5,23.5,16]) rotate([0,45,0]) cube([8,9,8]);  
        translate([1,0,10]) cube([5,40,20]); 
        
        
    }    
     
    
    
     // heatbed cable mounting reinforcement
    translate([63,86.0,0.5]) cube([15,5,34.5]); 
    translate([75,90,28]) rotate([90,0,0]) cylinder(h=6,r1=16.5,r2=11,$fn=30); 
    translate([75,99,28]) rotate([90,0,0]) cylinder(h=9,r=13,$fn=30); 
    translate([75,101,28]) rotate([90,0,0]) cylinder(h=2,r1=9,r2=13,$fn=30); 
    difference(){
    translate([70.3,88.5,12.7]) rotate([-45,0,0]) cube([9.5,5,10]);
    translate([70.4,85.5,10])  cube([9.5,5,9]);    
    } 
    
    
            }
            
            
            
            
      // extruder cable holder
    translate([1.5,7.1,14.8]) rotate([0,45,0]) cube([3,40,5]); 
    translate([-20,28,28]) rotate([0,90,0]) cylinder( h = 40,r = 5.5,$fn=30); 
    translate([-15,7,35]) cube([30,40,15]); 
    translate([-15,23.5,30]) cube([30,9,8]); 
    
    translate([-15,12,28]) cube([15,30,8]); 
    translate([-12,16.5,28]) cube([15,23,8]); 
    translate([-3,28,28]) rotate([35,90,0]) cylinder( h = 24,r = 1.8,$fn=30); 
    

            //screw holes
    translate([-2.7,19.5,20]) rotate([0,0,90]) cylinder( h = 33,r = 1.6,$fn=30);  
    translate([-2.7,36.5,20]) rotate([0,0,90]) cylinder( h = 33,r = 1.6,$fn=30); 
   
    
            // nuts with supports
      translate([-5.7,19.5,24.5]) difference (){
translate([0,0,-0.25]) rotate([0,0,0]) cube([12,5.7,2.7], center =true) ;
translate([-8.6,-5,0.35])  cube([10,15,0.75]);
translate([4.6,-5,0.35])  cube([4,15,0.75]);
translate([-2.6,-5.6,0.65])  cube([15,4,0.35]);
translate([-2.6,1.6,0.65])  cube([15,4,0.35]);           
          
      }
      
    
      translate([-5.7,36.5,24.5]) difference (){
 translate([0,0,-0.25]) rotate([0,0,0]) cube([12,5.7,2.7], center =true) ;
translate([-8.6,-5,0.35])  cube([10,15,0.75]);
translate([4.6,-5,0.35])  cube([4,15,0.75]);
translate([-2.6,-5.6,0.65])  cube([15,4,0.35]);
translate([-2.6,1.6,0.65])  cube([15,4,0.35]);             
      }
    

    
            
            
            
            
          
            
    translate([-2.7,36,12]) rotate([0,0,90]) cube([3,40,5]);  
     
    
    // new heatbed cable holder
    translate([61,102,28]) rotate([35,90,0]) cylinder(h=35,r=3.3,$fn=30); 


            // nuts with supports
      translate([67,90.8 -4,24.5]) difference (){
translate([0,0,-0.25]) rotate([0,0,90]) cube([10,5.7,2.7], center =true) ;
translate([-5.6,-5,0.65])  cube([4,15,0.5]);
translate([1.6,-5,0.65])  cube([4,15,0.5]);
translate([-5.6,-3.6,0.35])  cube([15,4,0.75]);
translate([-5.6,3.6,0.35])  cube([15,4,0.75]);           
          
      }
      
    
      translate([83,98,24.5]) difference (){
translate([0,0,-0.25]) rotate([0,0,90]) cube([10,5.7,2.7], center =true) ;
translate([-5.6,-5,0.65])  cube([4,15,0.5]);
translate([1.6,-5,0.65])  cube([4,15,0.5]);
translate([-5.6,-7.6,0.35])  cube([15,4,0.75]);
translate([-5.6,-0.4,0.35])  cube([15,4,0.75]);           
      }
 

 
 
    translate([67,88.8,20]) rotate([0,0,0]) cylinder(h=15,r=1.6,$fn=30); 
    translate([83,96,20]) rotate([0,0,0]) cylinder(h=15,r=1.6,$fn=30);
    translate([60,92,28]) rotate([0,0,0]) cube([30,13,14]);  
    translate([60,80,35]) rotate([0,0,0]) cube([30,13,14]);
    translate([72.5,80,30])rotate([0,0,0])  cube([5,13,14]);
    
    translate([62.5,82,28]) rotate([0,0,0]) cube([25,20,14]);
   
    
    translate( [ 58.5 , 88 , -1 ] ) cylinder( h = 43, r = 1.9, $fn=30);    
            
            
 
    translate( [ -16.2 , 28, 29 ] ) rotate([45,0,0]) cube( [ 40 , 12 , 12 ] ); 
    
    //BottomCubic();
    translate( [ 14.5, 10, -2 ] ) cube( [ 4 , 23 , 10 ] ); 
    translate( [ 16.5, 10, -2 ] ) cylinder( h = 20, r = 2, $fn=30);  
    translate( [ 16.5, 33, -2 ] ) cylinder( h = 20, r = 2, $fn=30);  
    
        
    
    // lightening slots
    translate( [ 100 ,21 , 2] ) cube( [ 5 , 48 , 5 ] );     
    translate( [ 3 ,21 , 2] ) cube( [ 4.5, 48 , 5 ] );     

    // bottom holes print supports
    translate( [ 7.5 , 14 ,0] ){
    translate( [ 0 , 0 , 2.5 ] ) cube([3.2,5.6,2], center=true);
    translate( [ 0 , 0 , 3 ] ) cube([3.2,3.8,2], center=true);
    }

    translate( [ 102.5 , 14 ,0] ){
    translate( [ 0 , 0 , 2.5 ] ) cube([3.2,5.6,2], center=true);
    translate( [ 0 , 0 , 3 ] ) cube([3.2,3.8,2], center=true);
    }

    translate( [ 102.5 , 75 ,0] ){
    translate( [ 0 , 0 , 2.5 ] ) cube([3.2,5.6,2], center=true);
    translate( [ 0 , 0 , 3 ] ) cube([3.2,3.8,2], center=true);
    }

    translate( [ 7.5 , 75 ,0] ){
    translate( [ 0 , 0 , 2.5 ] ) cube([3.2,5.6,2], center=true);
    translate( [ 0 , 0 , 3 ] ) cube([3.2,3.8,2], center=true);
    }

    translate( [ 58.5 , 88 ,0] ){
       intersection(){cylinder(r=3.2, h=10, $fn=30);
    translate( [ 0 , 0 , 2.5 ] ) cube([3.8,8,2], center=true);}
    translate( [ 0 , 0 , 3 ] ) cube([3.8,3.8,2], center=true);
    }

    translate([21,81,-5]) cylinder( h = 24, r = 0.8, $fn=30);   
    translate([21+58,81,-5]) cylinder( h = 24, r = 0.8, $fn=30);   


    translate([115,68,1.5]) rotate([0,0,90]) linear_extrude(height = 0.8) 
    { text("R3",font = "helvetica:style=Bold", size=6, center=true); }   
       
}

 module heatbed_cable_clip()
{
    
difference()
{    
    
    union()
    {
        difference()
        {
            union()
            {
                // body base
                translate([75,99,28]) rotate([90,0,0]) cylinder( h = 15, r = 13, $fn=30); 
                translate([75,101,28]) rotate([90,0,0]) cylinder( h = 2, r1=9,r2 = 13, $fn=30); 
                
            }

             
           
            
            // cut flat and shape
            translate([60,82,14]) cube([30,20,14]);  
            translate([60,72,20]) cube([30,20,30]); 
        }
         
        
        difference() {
        translate([62.75,84,28]) cube([24.5,8,7]);
        difference () {
        translate([75,85,28]) rotate([90,0,0]) cube([30,20,10], center = true);    
        translate([75,90,28]) rotate([90,0,0]) cylinder(h=6,r1=16.5,r2=11,$fn=30);   
           
        } 
    }}
    
    // cable opening
    translate([61,102,28]) rotate([35,90,0])
    
    difference (){
   
    cylinder(h=35,r=4,$fn=30);
       
    
    translate([0,0,3]) cylinder(h=5,r=4,$fn=30);
    translate([0,0,12]) cylinder(h=1,r=4,$fn=30); 
    translate([0,0,16]) cylinder(h=1,r=4,$fn=30); 
    translate([0,0,20]) cylinder(h=1,r=4,$fn=30);
   
    }
     translate([61,102,28]) rotate([35,90,0]) cylinder(h=35,r=3,$fn=30);
    
  
    
    // screw heads
    translate([67,88.8,30.5]) rotate([0,0,0]) cylinder(h=10,r=3.2,$fn=30); 
    translate([83,96,30.5]) rotate([0,0,0]) cylinder(h=10,r=3.2,$fn=30); 
    
    
    // screws
            translate([67,88.8,14]) rotate([0,0,0]) cylinder(h=35,r=1.6,$fn=50); 
            translate([83,96,14]) rotate([0,0,0]) cylinder(h=35,r=1.6,$fn=50);
    
    
    // grips
    
    
    
}


    

} 

//translate([0,0,0]) heatbed_cable_clip();


module extruder_cable_clip()
{
    
    difference(){
    difference()
    {
        union()
        {
            // body shape
            translate([-6,28,28]) rotate([0,90,0]) cylinder(h=6,r=13.5,$fn=30);  
            translate([-10,28,28]) rotate([0,90,0]) cylinder(h=4,r1=8.5,r2=13.5, $fn=30);  
            translate([0,16.6,28]) cube([2.9,22.8,7]); 
        }
        
        // bottom cut and shape
        translate([-15,7,13]) cube([30,40,15]); 
        translate([-20,28,28]) rotate([0,90,0]) cylinder(h=40,r=6, $fn=30);
        
        // screws
        translate([-2.7,19.5,25]) rotate([0,0,90]) cylinder(h= 10, r = 1.6, $fn=50); 
        translate([-2.7,36.5,25]) rotate([0,0,90]) cylinder( h = 10, r = 1.6, $fn=50); 
        translate([-2.7,36.5,32]) rotate([0,0,90]) cylinder( h = 13, r = 3.1, $fn=30);
        translate([-2.7,19.5,32]) rotate([0,0,90]) cylinder( h = 13, r = 3.1, $fn=30); 
        
        // screw heads opening
        translate([-2.7,16.4,35]) cube([10,6.2,15]); 
        translate([-2.7,33.4,35]) cube([10,6.2,15]); 
        
        
    }
    
    difference()
    {
        // cable grip
        translate([-8,28,28]) rotate([0,90,0]) cylinder( h = 10, r = 6, $fn=30);
        translate([-20,28,28]) rotate([0,90,0]) cylinder( h = 40, r = 5.5, $fn=30);
        translate([-15,7,13]) cube([30,40,15]); 
        translate([-6,7,13]) cube([2,40,25]); 
        translate([-2,7,13]) cube([2,40,25]); 
        
    }
    
    
    //nylon hole
        
        translate([-3,28,28]) rotate([35,90,0]) cylinder( h = 24,r = 1.8,$fn=30);}
    
}

//translate([0,0,0]) extruder_cable_clip();


module raspberry_cover () {
    
    
        
    //holders
         
         difference() {
             union () {
    
         translate( [ 11.5 , 42.5 , 0] )  cube( [ 2 , 4 , 3.5] );
         translate( [ 11.5 ,63.5 , 0] )  cube( [ 2 , 4 , 3.5] );
         translate( [ 81.5 , 42.5 , 0] )  cube( [ 2 , 4 , 2.5] );
         translate( [ 81.5 ,63.5 , 0] )  cube( [ 2 , 4 , 2.5] );
         
         translate( [ 10.4 , 42.5 , 2.7] ) rotate([0,45,0]) cube( [ 2 , 4 , 2] );
         translate( [ 10.4 ,63.5 , 2.7] )  rotate([0,45,0]) cube( [ 2 , 4 , 2] );
         translate( [ 81.7 , 42.5 , 1.7] ) rotate([0,45,0]) cube( [ 2 , 4 , 2] );
         translate( [ 81.7 ,63.5 , 1.7] )  rotate([0,45,0]) cube( [ 2 , 4 , 2] );}
         
         translate( [ 10.5 , 42 , 3.5] )  cube( [ 4 , 5 , 3.5] );
         translate( [ 10.5 ,63 , 3.5] )  cube( [ 4 , 5 , 3.5] );
         translate( [ 81.5 , 42 , 2.5] )  cube( [ 4 , 5 , 2.5] );
         translate( [ 81.5 ,63 , 2.5] )  cube( [ 4 , 5 , 2.5] );
    
     }
      
   //body
   
    difference() {
       translate( [ 11.5 , 36 , -3] )  cube( [ 72 , 38 , 3] );
        
        
        translate( [ -0.4 , -0.4 , 0] ) difference() 
           {   
        translate( [ 17.5 , 42 , -4.1] )  cylinder( h = 4.2, r = 8, $fn=40);
        translate( [ 17.5 , 42 , -4] )  cylinder( h = 4, r = 5.6, $fn=40);
        
        translate( [ 11.9 , 42 , -4] )  cube( [ 14 , 8 , 4] );
        translate( [ 17.5 , 36.4 , -4] )  cube( [ 8, 6 , 4] );     
  }  
  
  
        translate( [ 60.4 , -0.4 , 0] )  difference() 
           {   
        translate( [ 17.5 , 42 , -4.1] )  cylinder( h = 4.2, r = 8, $fn=40);
        translate( [ 17.5 , 42 , -4] )  cylinder( h = 4, r = 5.6, $fn=40);
        
        translate( [ 9.1 , 42 , -4] )  cube( [ 14 , 8 , 4] );
        translate( [ 9.5 , 36.4 , -4] )  cube( [ 8, 6 , 4] );   
            
}          
        translate( [ 60.4 , 26.4 , 0] )  difference() 
           {   
        translate( [ 17.5 , 42 , -4.1] )  cylinder( h = 4.2, r = 8, $fn=40);
        translate( [ 17.5 , 42 , -4] )  cylinder( h = 4, r = 5.6, $fn=40);
        
        translate( [ 8.5 , 33.6 , -4] )  cube( [ 9 , 14 , 4] );
        translate( [ 17.1 , 34 , -4] )  cube( [ 6, 8 , 4] ); 
}           
           
        translate( [ -0.4 , 26.4 , 0] )  difference() 
           {   
        translate( [ 17.5 , 42 , -4.1] )  cylinder( h = 4.2, r = 8, $fn=40);
        translate( [ 17.5 , 42 , -4] )  cylinder( h = 4, r = 5.6, $fn=40);
        
        translate( [ 17.5 , 33.6 , -4] )  cube( [ 9 , 14 , 4] );
        translate( [ 11.9 , 33.4 , -4] )  cube( [ 6, 9 , 4] );   
             
             
       
       
              
       
  } 
  
  
    // ventilation cutout   
           
           
     for ( i = [-5 : 6] ){
      
      translate([43 + (i*5.5),42.3,-5]) cube([3.65,25.2,10]);
      
      
    }       

 
 

    
    //raspberry pcb cutout
        
      
        
      translate ([0,0,-2]) difference() {
        translate( [ 13.5 , 38 , 0] )  cube( [ 68 , 34 , 9] );
        
           
        translate( [ 0 , 0 , 0] ) difference() 
           {   
        translate( [ 17.5 , 42 , -1.1] )  cylinder( h = 9.2, r = 8, $fn=40);
        translate( [ 17.5 , 42 , -1] )  cylinder( h = 9, r = 4, $fn=40);
        
        translate( [ 13.5 , 42 , -1] )  cube( [ 12 , 8 , 9] );
        translate( [ 17.5 , 38 , -1] )  cube( [ 8, 5 , 9] );     
  }  
  
  
        translate( [ 60 , 0 , 0] )  difference() 
           {   
        translate( [ 17.5 , 42 , -1.1] )  cylinder( h = 9.2, r = 8, $fn=40);
        translate( [ 17.5 , 42 , -1] )  cylinder( h = 9, r = 4, $fn=40);
        
        translate( [ 9.5 , 42 , -1] )  cube( [ 12 , 8 , 9] );
        translate( [ 9.5 , 38 , -1] )  cube( [ 8, 5 , 9] );   
             
}          
        translate( [ 60 , 26 , 0] )  difference() 
           {   
        translate( [ 17.5 , 42 , -1.1] )  cylinder( h = 9.2, r = 8, $fn=40);
        translate( [ 17.5 , 42 , -1] )  cylinder( h = 9, r = 4, $fn=40);
        
        translate( [ 9.5 , 34 , -1] )  cube( [ 8 , 12 , 9] );
        translate( [ 17.5 , 34 , -1] )  cube( [ 4, 8 , 9] ); 
}           
           
        translate( [ 0 , 26 , 0] )  difference() 
           {   
        translate( [ 17.5 , 42 , -1.1] )  cylinder( h = 9.2, r = 8, $fn=40);
        translate( [ 17.5 , 42 , -1] )  cylinder( h = 9, r = 4, $fn=40);
        
        translate( [ 17.5 , 34 , -1] )  cube( [ 8 , 12 , 9] );
        translate( [ 13.5 , 34 , -1] )  cube( [ 5, 8 , 9] );     
              
               
               
                
       
  }  }
  
  
  
  
  
  }
  
  

    

    
    
    
    
    
    
    
    
    
    
    
    
}



