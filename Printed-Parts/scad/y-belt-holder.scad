// PRUSA iteration3
// Y belt holder
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module face_plate(){
     // face plate
    translate([ 0, 0, -1 ]) cube([ 25, 26, 4 ]); 
    translate([ -8, 22, -1 ]) cube([ 49, 4, 4 ]);
    
}

module upper_shape()
{
    union(){
        difference(){
            union(){
                //  upper body
                translate([ 18.5, 11, 2 ]) cube([ 6.5, 15, 12 ]);   
                translate([ 0, 11, 2 ]) cube([ 5.5, 15, 12 ]);   
                translate([ -8, 22, 2 ]) cube([ 49, 4, 12 ]);   
                translate([ 0, 13, 2 ]) cube([ 25, 13, 12 ]);   
                }
                translate([ 12, 18, 0 ]) cylinder( h = 14, r = 7.2, $fn=30 );  // upper belt cutaway
            }

        translate([ 5.5, 12.5, 0 ]) cylinder( h = 14, r = 1.5, $fn=30 );  
        translate([ 18.5, 12.5, 0 ]) cylinder( h = 14, r = 1.5, $fn=30 ); 
        translate([ 4.5, 7.2, 0 ]) cylinder( h = 14, r = 1.7, $fn=30 );  
        translate([ 20.5, 7.2, 0 ]) cylinder( h = 14, r = 1.5, $fn=30 );  

        translate([ 0, 0, 3 ] ) cube([ 4.5, 8.9, 11 ]);  
        translate([ 20.5, 0, 2 ] ) cube([ 4.5, 8.7, 12] );  
        translate([ 1, 0, 3 ] ) cube([ 4.5, 7, 11 ]);  
        translate([ 19.5, 0, 2 ] ) cube([ 4.5, 7, 12 ]);  
        translate([ -8, 16, -1 ]) cube([ 8, 10, 15 ]);
        }
}


module screw_holes(){
    translate( [ -4 , 28 , 7.5 ] ) rotate([90,0,0]) cylinder( h = 10, r = 1.6, $fn=30);  //screw hole
    translate( [ 37 , 28 , 7.5 ] ) rotate([90,0,0]) cylinder( h = 10, r = 1.6, $fn=30);  //screw hole
    translate( [ -4 , 22 , 7.5 ] ) rotate([90,0,0]) cylinder( h = 10, r = 2.9, $fn=30);  //screw hole
}

module belt_insert_chamfer(){
    translate([ -2, 10, 10.5 ]) rotate([45,0,0]) cube([ 28, 5, 5 ]);  
    translate([ 3, -2, 14 ]) rotate([0,45,0]) cube([ 5, 12, 5 ]);  
    translate([ 15, -2, 14 ]) rotate([0,45,0]) cube([ 5, 12, 5 ]);  

    translate([ 4, 10, 15 ]) rotate([0,45,0]) cube([ 5, 7, 5 ]);  
    translate([ 13, 10, 15 ]) rotate([0,45,0]) cube([ 5, 6, 5 ]); 
}

module belt_holders(){
    translate([ 13, 5, 0 ]) cylinder( h=11, r=3.5, $fn=30 );  // lower belt holder
    translate([ 12, 18, 0 ]) cylinder( h=11, r=3.5, $fn=30 );  // upper belt holder
    
    translate([ 13, 5, 11 ]) cylinder( h=3 , r1=3.5, r2=2.5, $fn=30 );  // lower belt holder cone
    translate([ 12, 18, 11 ]) cylinder( h=3, r1=3.5, r2=2.5, $fn=30 );  // upper belt holder cone
    
    }


module final_part(){
    union(){
    difference(){ 
        upper_shape();
        belt_insert_chamfer(); 
        screw_holes();
    }
    belt_holders();
    face_plate();
    }
}

final_part();









