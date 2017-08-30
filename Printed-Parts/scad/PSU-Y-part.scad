// PRUSA iteration3
// PSU-Y reinforcement part 
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module base()
{
union(){
    difference(){
        union(){
        translate([ 5, -23, 0 ]) cube([ 25, 38, 17.5 ]);  // horizontal plate
        translate([ -23, -2, 0 ]) cube([ 28, 17, 28 ]);  // Y_Corner block    
        }
        translate( [ 4 , -25 , -1 ] ) cube( [ 9 , 23 , 20 ] );  //  holder side cut
    }
    difference(){    
        translate([ 8, -7, 0 ]) cube([ 5, 5, 17.5 ]);  // fillet block
        translate([ 8, -7, -1 ]) cylinder( h = 28, r = 5, $fn=30);  // fillet cut
        }
    }
}


module cutout()
    {

    translate([ 22, 4 , -2 ]) cylinder( h = 20, r = 1.7, $fn=30);  // M3 hole A
    translate([ 22, 4 , 8 ]) cylinder( h = 10, r1 = 1.7, r2=1.9,$fn=30);  // M3 hole A
    translate([ 22, 4 , -1 ]) cylinder( h = 5, r1 = 3.4, r2=3.2,$fn=6);  // M3 nut body A        
    translate([ 22, 4 , -1 ]) cylinder( h = 5, r2 = 0.1, r1 = 5, $fn=6);  // M3 nut hole fillet A
    #translate([ 22, 4 , 4.2 ]) cube([ 3.3 , 5.8 , 0.4 ], center = true ); // bridge force A
        
    translate([ 22, -16 , -2 ]) cylinder( h = 20, r = 1.7, $fn=30);  // M3 hole B
    translate([ 22, -16 , 8 ]) cylinder( h = 10, r1 = 1.7, r2=1.9, $fn=30);  // M3 hole B
    translate([ 22, -16 , -1 ]) cylinder( h = 5, r1 = 3.4, r2=3.2, $fn=6);  // M3 nut body B
    translate([ 22, -16 , -1 ]) cylinder( h = 5, r2 = 0.1, r1 = 5, $fn=6);  // M3 nut hole B fillet
    #translate([ 22, -16 , 4.2 ]) cube([ 3.3 , 5.8 , 0.4 ], center = true ); // bridge force B

    translate([ -13, 14 , 14 ]) rotate([90,0,0]) cylinder( h = 25, r = 5.2, $fn=30);  // threaded rod
    
    translate([ -13, 0 , 14 ]) rotate([90,0,0]) cylinder( h = 4, r = 13, $fn=30);  // washer
    translate([ -29, -7 , 14 ])  cube([ 29, 7, 18 ]);  // washer upper cut
    
    translate([ -24, 13 , -1 ]) cube([ 20, 15, 30 ]);  // Y_Corner cutaway

    //vertical corners 45 degree cut
    translate( [ 12, -31 , -2 ] ) rotate( [0,0,45] ) cube([ 10 , 10 , 21 ]);  
    translate([ 31,  9, -2 ])  rotate( [0,0,45] ) cube([ 10, 10, 21 ]);  
    translate([ 31, -31, -2 ]) rotate( [0,0,45] ) cube([ 10, 10, 21 ]);  

    // horizontal corners 45 degree cut
    translate([ -8.5, -8, 31 ]) rotate( [0,45,0] ) cube([ 19, 40, 20 ]);  
    translate([ -31, -6, 30 ]) rotate( [0,45,0])  cube([ 10, 35, 10 ]);  
    translate([ -31, -6, -2 ]) rotate( [0,45,0] ) cube([ 10, 35, 10 ]);  
    translate([ -26, -4,  2.5 ]) rotate( [45,0,0] ) cube([ 5, 5, 5 ]);  
    translate([ -1, -4, 16.5 ]) rotate( [45,0,0] ) cube([ 5, 5, 5 ]);  
    translate([ -1, -5, 20 ]) cube([ 5, 5, 5 ]);  
    translate([ -5, 16.6, 20.5 ]) rotate( [45,0,0] ) cube([ 6, 5, 5 ]);  
    translate([ -5, 13, 24 ]) cube([ 6, 5, 5 ]);  
    translate([ -30, 15, -5 ]) rotate( [45,0,0] ) cube([ 70, 5, 5 ]);  
    
    translate([ 31, -7, -1 ]) rotate([0,0,45]) cylinder( h = 25, r = 3, $fn=30);  
    translate([ -12, 6.5, 27 ]) rotate([0,0,45]) cylinder( h = 25, r = 4, $fn=30);  
    
    translate([ -5, 9, 1.5 ]) cube([ 21, 0.5, 14 ]);  
    translate([ -5, 6, 1.5 ]) cube([ 20, 0.5, 14 ]);  
    translate([ -5, 3, 1.5 ]) cube([ 19, 0.5, 14 ]);  
    translate([ -21, 2, 5 ]) cube([ 0.5, 9, 18 ]);  
    }

module final_part(){
difference()
{
    base();
    cutout();
    }
}

final_part();
    
