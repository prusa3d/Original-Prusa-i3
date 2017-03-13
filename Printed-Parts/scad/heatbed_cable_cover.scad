// PRUSA iteration3
// Heatbed cable cover
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module cover()
{
    translate([ -17.5, 0, 0 ]) cube([ 35, 21, 8 ]);  // cover
    translate([ -7, 19, 0 ]) cube([ 3, 6.5, 3 ]);  // tube reinforcement
    translate([ 4, 19, 0 ]) cube([ 3, 6.5, 3 ]);  // tube reinforcement
    translate( [ 0 , 32 , 3 ] ) rotate( [90,0,0] ) cylinder( h = 12, r = 7, $fn=6);  // cable tube outer
}

module inside_cut(){
    translate([ -15, -1, -1 ]) cube( [30,20,5] );     // inside cut
    translate([ -14, 2, 4 ])  cube( [28,17,2.5 ] );     // inside cut
    
    translate( [ 0 , 32 , 2 ] ) rotate( [90,0,0] ) cylinder( h = 16, r = 4.5, $fn=30);  // cable tube inner
    
    translate([ -14, 10, -5 ])  cube( [28,25,5 ] );     // inside cut
    translate([ -14, 10, 8 ])  cube( [28,25,3 ] );     // inside cut
    
    translate([ -2.5, -6, 1 ])  rotate([15,0,0]) cube( [5,10,3 ] );     // LED
    
    translate([ -22, -5, 7 ]) rotate([0,25,0])  cube( [5,40,6 ] );     // corners
    translate([ 15, -5, 9 ]) rotate([0,60,0])  cube( [6,40,5 ] );     // corners
    translate([ 20, -5, 7 ]) rotate([0,25,90])  cube( [5,40,5 ] );     // corners
    
    translate([ 15, -5, -1 ]) rotate([0,0,45])  cube( [5,5,5 ] );     // corners
    translate([ -15, -5, -1 ]) rotate([0,0,45])  cube( [5,5,5 ] );     // corners
    
    
    translate([ 8, 13, -10]) rotate([0,-45,45])  cube( [10,10,10 ] );     // corners
    translate([ -8, 13, -10]) rotate([0,-45,-45])  cube( [10,10,10 ] );     // corners

    }

    module ziptie(){
        difference(){
        translate( [ 0 , 29 , 3 ] ) rotate( [90,0,0] ) cylinder( h = 3.5, r = 10, $fn=30);  // cable tube outer
        translate( [ 0 , 29 , 3 ] ) rotate( [90,0,0] ) cylinder( h = 3.5, r = 5.8, $fn=30);  // cable tube outer
        }
        }

    module filament_holder(){
        difference(){
        #translate([ -3.5,15, 2 ]) rotate([0,0,0])  cube( [7,7,6 ] );     // body ; previous translate([ -2.5,15, 2 ]) cube( [5,7,6 ] );
        translate( [ 0 , 24 , 4.5 ] ) rotate( [90,0,0] ) cylinder( h = 10, r = 1.4, $fn=12);  // filament
        translate( [ 0 , 22.1 , 4.5 ] ) rotate( [90,0,0] ) cylinder( h = 1.5, r1 = 1.8, r2=1.4, $fn=12);  // filament

        #translate([ -6,15, 2 ]) rotate([0,45,0])  cube( [4,15,3 ] );     // corners ; previous ([ -5,15, 1 ]) cube( [3,15,3 ] )           
        #translate([ 1,15, 1 ]) rotate([0,45,0])  cube( [3,15,4 ] );     // corners ; previous  cube( [3,15,3 ] ) 
        }
    }
    module m3_screw(){
        
    translate( [ 0 , 7.5 , 6 ] ) rotate( [0,0,90] ) cylinder( h = 2.5, r = 3.3, $fn=6);  // M3 HEAD
    translate( [ 0 , 7.5 , 7.8] ) rotate( [0,0,90] ) cylinder( h = 0.8, r1 = 3.3, r2=5, $fn=6);  // M3 HEAD
    translate( [ 0 , 7.5 , -10 ] ) rotate( [0,0,0] ) cylinder( h = 20, r = 1.5, $fn=30);  // M3 thread
    }
    
    module nut_trap(){
    translate( [ 0 , 7.5 , 4.5 ] ) rotate( [0,0,90] ) cylinder( h = 2.5, r = 4.6, $fn=6);  // M3 HEAD
    translate( [ 0 , 7.5 , 4 ] ) rotate( [0,0,0] ) cylinder( h = 1, r = 3, $fn=30);    
    
    }
    
    difference(){
    union(){
        difference(){
        cover();
        inside_cut();
            ziptie();
        }
        nut_trap();
    }   
    m3_screw();
      translate( [ 0 , 7.5 , 6.2 ] ) rotate( [0,0,0] ) cube( [5.7,3,1], center=true);   
    translate( [ 0 , 7.5 , 5.7 ] ) rotate( [0,0,0] ) cube( [3,3,1], center=true); 
    }
    
    filament_holder();
    