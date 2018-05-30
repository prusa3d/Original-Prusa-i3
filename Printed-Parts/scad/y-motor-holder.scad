    
// Y motor holder
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module holder()
{
    difference()
    {
        // base body
        translate([-7,-1.5,0]) cube([20,42,47]);

        // shape cuts
        translate([-20,19.5,26]) rotate([0,90,0]) cylinder( h=35, r=11.5, $fn=50 );   
        translate([-11,20,15]) cube([26,23,22.5]);
        translate([-20,5.5,-1]) cube([26,41,38.5]);
        translate([-20,32.1,37]) cube([34,30,20]);
        
        // lower motor screw
        translate([-20,35 ,10.5]) rotate([0,90,0]) cylinder( h=40, r=1.65, $fn=50 ); 
        translate([-7,35,10.5]) rotate([0,90,0]) cylinder( h=15, r=3.1, $fn=50 );         
        
        // upper motor screw    
        translate([-20,4,41.5]) rotate([0,90,0]) cylinder( h=40, r=1.65, $fn=50 );         
        translate([-8,4,41.5]) rotate([0,90,0]) cylinder( h=16, r=3.1, $fn=50 );         
        
        // lower frame screw    
        translate([0,12,7]) rotate([90,0,0]) cylinder( h=40, r=1.6, $fn=50 ); 
        translate([0,7,7]) rotate([90,0,0]) cylinder( h=5, r=3.1, $fn=6 ); 
        translate([0,6.6,7]) rotate([90,0,0]) cylinder( h=2, r2=3.1, r1=4, $fn=6 ); 
        
        // upper frame screw    
        translate([0,12,29]) rotate([90,0,0]) cylinder( h=40, r=1.6, $fn=50 ); 
        translate([0,7,29]) rotate([90,0,0]) cylinder( h=5, r=3.1, $fn=6 ); 
        translate([0,6.6,29]) rotate([90,0,0]) cylinder( h=2, r2=3.1, r1=4, $fn=6 );

        // corners
        translate([-10,-5,42]) rotate([45,0,0]) cube([60,10,10]);        
        translate([-10,38,-7]) rotate([45,0,0]) cube([60,20,10]);        
        translate([-10,43,10]) rotate([45,0,0]) cube([60,20,20]);  
        translate([-14,-10,-2]) rotate([0,45,0]) cube([10,50,10]);        
        translate([-14,33,28]) rotate([45,0,0]) cube([28,10,10]);        
        translate([18,-10,-5]) rotate([0,0,45]) cube([10,10,60]);        
    }
    
    // reinforcement
    translate([7.8,1.9,0]) rotate([0,0,55]) cube([5,5,18]);
    translate([-7,4.5,34]) rotate([45,0,0]) cube([18,6,2.5]);
    difference()
        {
            translate([7.8,1.9,13.6]) rotate([0,0,55]) cube([5,5,24]);
            translate([-20,19.5,26]) rotate([0,90,0]) cylinder( h=35, r=12, $fn=30 );   
        }
   
}
 
module y_motor_holder()
{
    rotate([0,90,0])
    difference()
        {
        holder();
       
        // selective infill
        translate([-0,1,33]) cube([12,0.5,2]);        
        translate([-3,1,2]) cube([15,0.5,1]);        
        translate([-5,1.5,13]) cube([17,0.5,8]);        
        
        //version
        translate([-1,-1,15]) rotate([90,0,0]) linear_extrude(height = 0.6) 
        { text("R2",font = "helvetica:style=Bold", size=5, center=true); }
        }
}    
    
y_motor_holder();    
    
    
    
