// PRUSA MM upgrade
// Y-Splitter
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

 module festo_cut()
 {
    translate([0,0,-37]) cylinder( h=72, r=1.0, $fn=30 );
    translate([0,0,-23]) cylinder( h=25, r1=1.65, r2=2,$fn=30 );  
    translate([0,0,-25]) cylinder( h=2.2, r1=1, r2=1.4,$fn=30 );  
    
    translate([0,0,-3]) cylinder( h=3, r1=1.25, r2=1.5, $fn=30 );  
    translate([0,0,0]) cylinder( h=6, r=2.15, $fn=30 );
    translate([0,0,5]) cylinder( h=1.5, r=5, $fn=30 );
    translate([0,0,2]) cylinder( h=3.1, r=3.75, $fn=30 ); 
    translate([0,0,4]) cylinder( h=3, r1=3.75, r2=4.25, $fn=30 ); 
    
    translate([-10,-10,5]) cube([20,20,5]) ;
 }
  module festo_bottom_cut()
 {
    
    translate([0,0,-1]) cylinder( h=4.5, r=2.15, $fn=30 );
    translate([0,0,3]) cylinder( h=0.8, r=2.15, r2=2.3,, $fn=30 );
    translate([-15,-15,3.5]) cube([30,30,5]) ;
 }
 
 
module final_part()
{
     
 difference()
 {
    
        union()
        { 
            translate([-11,-11,-18.2]) cube([22,22,30]);
            translate([-11,0,-38]) cube([22,11,30]);  
            difference()
            {
                translate([-7,-4,-35]) cube([14,15,17]) ;         
                
                translate([-15,-20,-36]) rotate([0,0,45]) cube([20,20,20]) ;         
                translate([15,-20,-36]) rotate([0,0,45]) cube([20,20,20]) ;         

                translate([15,1,-36]) rotate([0,0,45]) cube([20,20,20]) ;                     
                translate([-15,1,-36]) rotate([0,0,45]) cube([20,20,20]) ;                     
            }
        }
            
        
    translate([-4.4,-4.4,5]) rotate([7,-7,0]) festo_cut();
    translate([4.4,-4.4,5]) rotate([7,7,0]) festo_cut();
    translate([-4.4,4.4,5]) rotate([-7,-7,0]) festo_cut();
    translate([4.4,4.4,5]) rotate([-7,7,0]) festo_cut();
     
    translate([0,0,-34]) cylinder( h=7, r=1.15, r2=1.3, $fn=30 );
    translate([0,0,-41]) cylinder( h=10, r=2.15, $fn=30 );
    translate([0,0,-38]) cylinder( h=5, r1=3, r2=2.15, $fn=30 );
    translate([0,0,-39]) cylinder( h=4, r=7, $fn=30 );


    translate([-14,-20,-30]) rotate([0,0,45]) cube([10,10,50]);   
    translate([-14,6,-40]) rotate([0,0,45]) cube([10,10,50]);   
    translate([14,-20,-30]) rotate([0,0,45]) cube([10,10,50]);   
    translate([14,6,-40]) rotate([0,0,45]) cube([10,10,50]);   


    translate([-3,0,0]) rotate([0,-5,0]) translate([-13,-1,-40]) rotate([0,0,60]) cube([20,10,60]);      
    translate([-4.5,18,0]) rotate([0,5,0]) translate([10,-1,-40]) rotate([0,0,-60]) cube([20,10,60]);      
    
   translate([-25,-6,-14]) rotate([0,90,0]) cylinder( h=50, r=1.5, $fn=30 );
   translate([10.5,5,5]) rotate([0,90,0]) cylinder( h=2, r=1.5, $fn=30 );
   translate([10.5,1,5]) rotate([0,90,0]) cylinder( h=2, r=1.5, $fn=30 );
   translate([-12.5,5,5]) rotate([0,90,0]) cylinder( h=2, r=1.5, $fn=30 );
   translate([-12.5,1,5]) rotate([0,90,0]) cylinder( h=2, r=1.5, $fn=30 );

 }
 }
 
  
final_part();
 