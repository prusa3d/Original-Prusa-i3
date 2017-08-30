// PRUSA iteration3
// RAMBo base
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module CubicPattern(Xdim, Ydim){
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
module main_body(){
    // side panel
    cube( [ 118.5 , 92 , 2 ] );  

    // upper panel
    cube( [ 1.5 , 92 , 35 ] );  
    // rear panel
    translate( [ 0 , 90 , 0 ] ) cube( [ 105.5 , 2 , 35 ] );  
    // heatbed ziptie reinforcement
    translate( [ 63 , 88.5 , 0.5 ] ) cube( [ 6.5 , 2 , 34.5 ] );   

    // upper panel frame reinforcement
    translate( [ 0 , 0 , 1 ] ) cube( [ 5.5 , 7 , 34 ] );  

    // side panel reinforcement
    translate( [ 0 , 0 , 1 ] ) cube( [ 9 , 92 , 3 ] );  
    translate( [ 98 , 0 , 0 ] ) cube( [ 9 , 92 , 4 ] ); 

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
    //upper
    translate( [ 1 , 0 , 0 ] ) cube( [ 28 , 4 , 10 ] );  
    translate( [ 18.45 , 0 , 0 ] ) cube( [ 3 , 4 , 5.5] ); 

    //lower
    translate( [ 98 , 0 , 0 ] ) cube( [ 20.5 , 4 , 10 ] ); 

    // heatbed filament holder body
    translate( [ 81.6 , 90.35 , 24 ] ) rotate([0,90,0]) cylinder( h = 18, r = 5, $fn=6); 

    // door closing corner
    translate( [ 102 , 88.5 , 35 ] ) cylinder( h = 3, r1=2.5, r2=1, $fn=30);   

    // doors pin upper
    translate( [ 2 , 85 , 31 ] ) cube( [ 6 , 7 , 4] ); 
    translate( [ 4 , 88.5 , 35 ] ) cylinder( h = 3, r1=2.5, r2=1, $fn=30);   

    // x-axis cables entry hole body
    translate( [ 89 , 2 , 0 ] ) cylinder( h = 5, r = 6, $fn=6);   
}

/*
    module ventilation_holes()
    {
     for ( i = [-6 : 8] ){
      translate([46 + (i*5.5),10.5,-1]) cube([3.65,19+50,1.2]);
      translate([46 + (i*5.5),10.5,-1]) cube([3.65,19,10]);
      translate([46 + (i*5.5),10.5+25,-1]) cube([3.65,19,10]);
      translate([46 + (i*5.5),10.5+50,-1]) cube([3.65,19,10]);
    }

}
*/
module cutouts(){
    // side     
    translate( [ 12 , 19 , 1 ] ) cube( [ 85.5 , 51 , 3 ] );   

    // RAMBo M3 screws
    translate( [ 7.5 , 14 , -1 ] ) cylinder( h = 10, r = 1.9, $fn=30);  
    translate( [ 102.5 , 14 , -1 ] ) cylinder( h = 10, r = 1.9, $fn=30);  
    translate( [ 102.5 , 75 , -1 ] ) cylinder( h = 10, r = 1.9, $fn=30);  
    translate( [ 7.5 , 75 , -1 ] ) cylinder( h = 10, r = 1.9, $fn=30);     

    translate( [ 7.5 , 14 , 6 ] ) cylinder( h = 3, r1 = 1.9, r2=2.4, $fn=30);  
    translate( [ 102.5 , 14 , 6 ] ) cylinder( h = 3, r1 = 1.9, r2=2.4, $fn=30);  
    translate( [ 102.5 , 75 , 6 ] ) cylinder( h = 3, r1 = 1.9, r2=2.4, $fn=30);  
    translate( [ 7.5 , 75 , 6 ] ) cylinder( h = 3, r1 = 1.9, r2=2.4, $fn=30);     

    //translate( [ 2 , 0 , 0 ] )ventilation_holes();
    
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


    // heatbed cable opening hole
    difference()
    {
    translate( [ 75.5 , 94 , 24 ] ) rotate([90,90,0]) cylinder( h = 5, r = 7, $fn=6); 
    translate( [ 71 , 80 , 13.5 ] ) cube( [ 8 , 15 , 5] ); 
    }
    translate( [ 73 , 80 , 20.5 ] ) cube( [ 5 , 15 , 15] ); 


    // heatbed cable ziptie holes
    translate( [ 64 , 87 , 30 ] ) cube( [ 4 , 10 , 2 ] );   
    translate( [ 64 , 87 , 16 ] ) cube( [ 4 , 10 , 2 ] );   



    // heatbed filament holder hole
    translate( [ 81 , 89 , 24 ] ) rotate([0,90,0]) cylinder( h = 17, r = 1.8, $fn=30);   
    translate( [ 81 , 89 , 24 ] ) rotate([0,90,0]) cylinder( h = 2, r = 2, r2=1.8, $fn=30);   
    translate( [ 70 , 92 , 15 ] ) cube( [ 30 , 10 , 15] ); 


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
    translate( [ 70 , 82.5 , 2 ] ) rotate([0,0,45]) cube( [ 5 , 5 , 50] ); 
    translate( [ 6 , 80 , 7 ] ) rotate([0,0,45]) cube( [ 5 , 5 , 24] ); 
    translate( [ 5.5 , 4 , 7 ] ) rotate([0,0,45]) cube( [ 3 , 5 , 29] ); 

    // x axis cable hole
    translate( [ 89 , 2 , -1 ] ) cylinder( h = 10, r = 4, $fn=6);   
    translate( [ 80 , -5 , -1 ] ) cube( [ 15, 5, 10] ); 

    // large corner coutout
    translate( [ -27 , 80 , -54 ] ) rotate([50,0,45]) cube( [ 50, 50, 50] ); 
    translate( [ 137.5 , 60 , -10 ] ) rotate([0,0,45]) cube( [ 50, 50, 50] ); 


}

// extruder cable holder
module ext_cable_holder()
{
difference()
{
    // body
    union(){
        rotate([90,0,0]) translate([-8, 26, -28]) rotate([0,90,0]) cylinder( h = 4, r1 = 8, r2=11, $fn=6);    
        rotate([90,0,0]) translate([-4, 26, -28]) rotate([0,90,0]) cylinder( h = 4, r1 = 11, r2=11, $fn=6);    
        rotate([90,0,0]) translate( [ 1.5 , 26 , -28 ] ) rotate([0,90,0]) cylinder( h = 10, r1 = 13, r2=7.5, $fn=6);
        translate( [-4, 28, 16.5 ] ) rotate([0,45,0]) cube( [ 6 , 5.5 , 7 ] );          
    }
    
    // upper cut
    translate( [ -15 , 13 , 15] ) cube( [ 15 , 15 , 25 ] );  
    // lower cut
    translate( [ 1.5 , 26 , 10] ) cube( [ 15 , 15 , 26 ] );  
 
    // ziptie holder
    difference(){
        rotate([90,0,0]) translate([-4, 26, -28]) rotate([0,90,0]) cylinder( h = 3.5, r = 8.5,  $fn=30);    
        rotate([90,0,0]) translate([-5, 26, -28]) rotate([0,90,0]) cylinder( h = 5.5, r = 6.2,  $fn=30);    
        }
}
}


module rambo_cover()
{
    ext_cable_holder();   
    difference(){
    main_body();
    cutouts();
    
    }
}

difference(){
    union(){
        // extruder cable filament holder body
        translate( [ 4.5 , 25.5 , 26 ] ) rotate([0,90,0]) cylinder( h = 7, r = 3.5, $fn=6);  
        translate( [ 4.5 , 22.5 , 22.5] ) cube( [ 7 , 3 , 7 ] );   
        translate( [ 4.5 , 23.5 , 20.8] ) cube( [ 7 , 2.5 , 7 ] );   
        translate( [ 4.5 , 24.7 , 26 ] ) rotate([0,90,0]) cylinder( h = 7, r = 3, $fn=30);   
        }
    // extruder filament inner hole
    translate( [ -5 , 25 , 26 ] ) rotate([0,90,0]) cylinder( h = 20, r = 1.75, $fn=30);   
    translate( [ 4, 25 , 26 ] ) rotate([0,90,0]) cylinder( h =3, r1 = 1.9, r2=1.75, $fn=30);   
}




difference(){

rambo_cover();
    
    
    BottomCubic();
    translate( [ 14.5, 10, -2 ] ) cube( [ 4 , 24 , 10 ] ); 
    translate( [ 16.5, 10, -2 ] ) cylinder( h = 20, r = 2, $fn=30);  
    translate( [ 16.5, 34, -2 ] ) cylinder( h = 20, r = 2, $fn=30);  
    
    
    // upper extruder cable opening
    translate( [ -5 , 28 , 26 ] ) rotate([0,90,-15]) cylinder( h = 20, r = 1.4, $fn=30);  
    
    // main hole
    translate( [ -10 , 28 , 26 ] ) rotate([0,90,0]) cylinder( h = 24, r = 5.5, $fn=30);   
    // cable opening slot
    translate( [ -15 , 26.5 , 30 ] ) cube( [ 30 , 3 , 10 ] ); 
    
    // flatten on door side 
    translate( [ -15 , 20 , 35 ] ) cube( [ 30 , 20 , 20 ] );  

    // opening slot cuts
    translate( [ -2.5 , 26 , 30] ) rotate([40,0,30]) cube( [ 9 , 2 , 8 ] );  
    translate( [ -2.5 , 24 , 30] ) rotate([0,0,20]) cube( [ 9 , 2 , 8 ] );  
    translate( [ 1 , 28 , 33] ) rotate([45,0,45]) cube( [ 3 , 3 , 3 ] );  
    translate( [ -2.5 , 28 , 28] ) rotate([40,0,30]) cube( [ 9 , 2 , 8 ] );  

    // screw body edge
    translate( [ 65 ,74.2 , 2] ) rotate([0,0,45]) cube( [ 10 , 10 , 50 ] );     
    
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


}



