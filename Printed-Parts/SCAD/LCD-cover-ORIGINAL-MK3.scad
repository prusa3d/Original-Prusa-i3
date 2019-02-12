// PRUSA iteration4
// LCD cover
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module main_body()
{
    difference() 
    {
        union() 
        {
            // main body
            translate( [ -77 , -4.5 , 0 ] ) cube( [ 155 , 59.8 , 2 ] ); 
            translate( [ -77 , -4.5 , 0 ] ) rotate([35,0,0]) cube( [ 155 , 2 , 20.08 ] );
            translate( [ -77 , -3.5 , -1 ] ) rotate([35,0,0]) cube( [ 7 , 5 , 15 ] );
            translate( [ 71 , -3.5 , -1 ] ) rotate([35,0,0]) cube( [ 7 , 5 , 15 ] );
            translate( [ -77 , -14.7 , 14.2 ] )  cube( [ 155 , 2 , 11.8 ] );
            translate( [ -77 , 54 , 0 ] ) cube( [ 155 , 2 , 17 ] );
            
            // M3 hole body
            translate( [ 73.5 , 43.3 , 0.5 ] ) rotate([0,0,90])  cylinder( h = 14, r = 4, $fn=6);  
            translate( [ -72.5 , 43.5 , 0.5 ] ) rotate([0,0,90])  cylinder( h = 14, r = 4, $fn=6);  
        }
        
        // LCD window
        translate( [ -61.5 , 1 , 1.2 ] ) cube( [ 98.5 , 42 , 10 ] ); 
        translate( [ -54.5 , 8 , -1 ] ) cube( [ 85 , 30.5 , 10 ] );  

        // buzzer holes
        translate( [ 55 , 1.5 , -1 ] ) cube( [ 1.3 , 4 , 10 ] );  
        translate( [ 57 , 1.5 , -1 ] ) cube( [ 1.3 , 4 , 10 ] );  
        translate( [ 59 , 1.5 , -1 ] ) cube( [ 1.3 , 4 , 10 ] );  
        translate( [ 61 , 1.5 , -1 ] ) cube( [ 1.3 , 4 , 10 ] );  
        translate( [ 63 , 1.5 , -1 ] ) cube( [ 1.3 , 4 , 10 ] );  
        translate( [ 65 , 1.5 , -1 ] ) cube( [ 1.3 , 4 , 10 ] );  
        translate( [ 67 , 1.5 , -1 ] ) cube( [ 1.3 , 4 , 10 ] );  

        // buzzer holes corners
        translate( [ 66.25 , 1.5 , -0.5 ] ) rotate([0,45,0]) cube( [ 2 , 4 , 2 ] );  
        translate( [ 64.25 , 1.5 , -0.5 ] ) rotate([0,45,0]) cube( [ 2 , 4 , 2 ] );  
        translate( [ 62.25 , 1.5 , -0.5 ] ) rotate([0,45,0]) cube( [ 2 , 4 , 2 ] );  
        translate( [ 60.25 , 1.5 , -0.5 ] ) rotate([0,45,0]) cube( [ 2 , 4 , 2 ] );  
        translate( [ 58.25 , 1.5 , -0.5 ] ) rotate([0,45,0]) cube( [ 2 , 4 , 2 ] );  
        translate( [ 56.25 , 1.5 , -0.5 ] ) rotate([0,45,0]) cube( [ 2 , 4 , 2 ] );  
        translate( [ 54.25 , 1.5 , -0.5 ] ) rotate([0,45,0]) cube( [ 2 , 4 , 2 ] );  

        // knob hole
        translate( [ 62.5 , 21 , -1 ] ) cylinder( h = 10, r = 6, $fn=30);
        translate( [ 62.5 , 21 , -1.2 ] ) cylinder( h = 2, r1 = 7, r2 = 6, $fn=30);

        // reset button cutout
        translate( [ 44 , 26 , -1 ] ) cube( [ 1 , 6 , 9 ] );  
        translate( [ 48 , 26 , -1 ] ) cube( [ 1 , 2.5 , 9 ] );  
        translate( [ 68.5 , 36 , -1 ] ) cube( [ 1 , 8 , 9 ] );  
        translate( [ 56 , 43 , -1 ] ) cube( [ 13.5 , 1 , 9 ] ); 
        translate( [ 50.5 , 30 , -1 ] ) cube( [ 13 , 1 , 9 ] ); 
        translate( [ 44.7 , 31.28 , -1 ] ) rotate([0,0,45]) cube( [ 17 , 1 , 9 ] );  
        translate( [ 63.5 , 30 , -1 ] ) rotate([0,0,45]) cube( [ 8.5 , 1 , 9 ] );  
        translate( [ 48.7 , 27.8 , -1 ] ) rotate([0,0,45]) cube( [ 3.55 , 1 , 9 ] );

        // rear support cutout
        translate( [ -64.5 , -12.7 , 14 ] ) cube( [ 10 , 3 , 16 ] );  
        translate( [ 55.5 , -12.7 , 14 ] ) cube( [ 10 , 3 , 16 ] );  

    }
}

module pcb_clip()
{
    difference()
    {
    union()
        {
            translate( [ -3 , -12 , 17.5 ] ) cube( [ 7 , 4 , 5 ] ); 
            translate( [ -3 , -10.6 , 12.5 ] ) cube( [ 1 , 2.6 , 7 ] );  
            translate( [ 3 , -10.6 , 12.5 ] ) cube( [ 1 , 2.6 , 7 ] );  
        }
        translate( [ -4 , -8 , 18.5 ] ) rotate([30,0,0]) cube( [ 10 , 6 , 6 ] );  
        translate( [ 2.5 , -12 , 14.5 ] ) cube( [ 1 , 4 , 0.2 ] );  
        translate( [ -2.5 , -12 , 14.5 ] ) cube( [ 1 , 4 , 0.2 ] );  
        translate( [ 2.5 , -12 , 17.3 ] ) cube( [ 1 , 4 , 0.2 ] );  
        translate( [ -2.5 , -12 , 17.3 ] ) cube( [ 1 , 4 , 0.2 ] );          
    }
}



difference()
{
    union()
    {

    pcb_clip();
    main_body();

    // reset button
    translate( [ 62.5 , 37.3 , 0 ] ) cylinder( h = 7.2, r = 3.5, $fn=30); 

    //left side
    translate( [ -77 , -14.7 , 0 ] ) cube( [ 1.5 , 70.7 , 26 ] );  
    translate( [ -76.5 , -15 , 0 ] ) cube( [ 4 , 70 , 14.6 ] );  

    //right side
    translate( [ 76.5 , -14.7 , 0 ] ) cube( [ 1.5 , 70.7 , 26 ] ); 
    translate( [ 73.5 , -14 , 0 ] ) cube( [ 4 , 70 , 14.5 ] );  

    //rear side reinforcement
    translate( [ -54.5 , -11.7 , 8 ] ) cube( [ 110 , 4 , 6.5 ] );  
    translate( [ 65.5 , -11.7 , 8 ] ) cube( [ 12 , 4 , 6.5 ] );  
    translate( [ 65.5 , -13 , 14 ] ) cube( [ 12 , 2 , 12 ] );  
    translate( [ -76.5 , -11.7 , 8 ] ) cube( [ 12 , 4 , 6.5 ] );  
    translate( [ -76.5 , -14.7 , 14.5 ] ) cube( [ 12 , 4 , 11.5 ] );  
    translate( [ -44 , -14.7 , 14.5 ] ) cube( [ 89 , 4 , 11.5 ] );  
    translate( [ -43.5 , -10.7 , 15 ] ) rotate([90,0,0]) cylinder( h = 2, r = 11, $fn=60);  
    translate( [ 44.5 , -10.7 , 15 ] ) rotate([90,0,0]) cylinder( h = 2, r = 11, $fn=60);  

    //front left side reinforcement
    difference()
    {
        union()
            {
                translate( [ -77 , 41.3 , 0 ] ) cube( [ 15 , 14 , 25 ] );  
                translate( [ -77 , 46.3 , 14 ] ) cube( [ 15 , 9 , 3 ] );    
            }
        translate( [ -64.5 , 40 , -3 ] ) cube( [ 4 , 8 , 40 ] );  
        translate( [ -75.5 , 40.3 , 14.5 ] ) cube( [15 , 6.5 , 25 ] ); 
    }


    //front right side reinforcement
    difference()
        {
            translate( [ 38 , 41.2 , 0 ] ) cube( [ 40 , 14 , 26 ] );  
            translate( [ 55 , 44.5 , 0 ] ) cube( [ 10.5 , 3.7 , 30 ] );  
            translate( [ 44 , 39.5 , 0 ] ) cube( [ 25.5 , 5 , 30 ] );  
            translate( [ 35 , 39.3 , 14.5 ] ) cube( [ 42.5 , 7 , 15 ] );  
            translate( [ 49 , 43.2 , 25 ] ) rotate([0,60,0]) cube( [ 12 , 5 , 10 ] );  
        }
    }

    // SD card opening
    translate( [ -80 , 9 , 16.5 ] ) cube( [ 10 , 28 , 4.5 ] );  

    // front and rear angle
    translate( [ -81 , -9.3 , -17 ] ) rotate([35,0,0]) cube( [ 164 , 14 , 54.08 ] );  
    translate( [ -78 , 72.7 , -3 ] ) rotate([45,0,0]) cube( [ 160 , 14 , 54.08 ] );  

    // M3 screw thread
    translate( [ 72.5 , 43.2 , 3 ] ) cylinder( h = 20, r = 1.4, $fn=30);  
    translate( [ -72.5 , 42.7 , 3 ] ) cylinder( h = 20, r = 1.4, $fn=30); 
    translate( [ 72.5 , 43.2 , 11.7 ] ) cylinder( h = 3, r1 = 1.4, r2=2.2, $fn=30);  
    translate( [ -72.5 , 42.7 , 11.7 ] ) cylinder( h = 3, r = 1.4, r2=2.2, $fn=30); 

    // ORIGINAL PRUSA text
    translate([-67,51,0.6]) rotate([180,0,0]) linear_extrude(height = 2) 
    { text("ORIGINAL",font = "helvetica:style=Bold", size=7, center=true); }
    translate([-18,51,0.6]) rotate([180,0,0]) linear_extrude(height = 2) 
    { text("PRUSA",font = "helvetica:style=Bold", size=11, center=true); }
    translate( [ -66 , 40.5 , -0.4 ] )  cube( [ 45 , 1.6 , 1 ] );  
    translate( [ -66 , 41.3 , -0.4 ] ) cylinder( h = 1, r = 0.8, $fn=30);  
    translate( [ -21 , 41.3 , -0.4 ] ) cylinder( h = 1, r = 0.8, $fn=30);  

    // front cleanup
    translate( [ -100 , -64 , 0 ] ) cube( [ 200 , 50 , 50 ] ); 

    // X sign on reset button
    translate( [ 63 , 34 , -1 ] ) rotate([0,0,45]) cube( [ 2, 8, 2 ] );  
    translate( [ 57.5 , 35.5 , -1 ] ) rotate([0,0,-45]) cube( [ 2, 8, 2 ] );  

    // corners
    translate( [ 73 , -5 , -1 ] ) rotate([0,45,0]) cube( [ 7, 80, 7 ] );  
    translate( [ -82 , -5 , -1 ] ) rotate([0,45,0]) cube( [ 7, 80, 7 ] );  

    translate( [ -82 , 58 , -5 ] ) rotate([45,0,0]) cube( [ 200, 7, 7 ] );  
    translate( [ -77 , 51 , -4 ] ) rotate([0,0,45]) cube( [ 8, 8, 50 ] );  
    translate( [ 78 , 51 , -4 ] ) rotate([0,0,45]) cube( [ 8, 8, 50 ] );  
    translate( [ 78 , -19 , -4 ] ) rotate([0,0,45]) cube( [ 5, 5, 50 ] );  
    translate( [ -77 , -19 , -4 ] ) rotate([0,0,45]) cube( [ 5, 5, 50 ] );  

    // LCD corners
    translate( [ -54.5 , 9.5 , -5.2 ] ) rotate([45,0,0]) cube( [ 85 , 5 , 5 ] );  // LCD window
    translate( [ -54.5 , 37 , -5.2 ] ) rotate([45,0,0]) cube( [ 85 , 5 , 5 ] );  // LCD window
    rotate([35,0,0]) translate( [ -78 , -8 , -4 ] ) rotate([0,0,45]) cube( [ 6, 6, 50 ] );  
    rotate([35,0,0]) translate( [ 79 , -8 , -4 ] ) rotate([0,0,45]) cube( [ 6, 6, 50 ] );  
    translate( [ -100 , -40 , -50 ] ) cube( [ 200 , 50 , 50 ] ); 

    // version
    translate([-73,15,4]) rotate([90,0,90]) linear_extrude(height = 2) 
    { text("R2",font = "helvetica:style=Bold", size=7, center=true); }
    
    
}

// print support for SD card opening
translate( [ -76.5 , 15 , 16.70 ] ) cube( [ 1 , 5 , 4.1 ] );
translate( [ -76.5 , 25 , 16.70 ] ) cube( [ 1 , 5 , 4.1 ] );

