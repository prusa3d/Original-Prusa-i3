// PRUSA iteration4
// spool-buffer-spacer
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module buffer_spacer()
{
    difference()
    {
        // base block
        translate([-8,-4,-6]) cube([13,41.5,12]);
        
        // hold together screw
        translate([0,-3.4,0]) rotate([-90,0,0]) cylinder(r=1.8, h=40, $fn=30);
        translate([0,-7,0]) rotate([-90,0,0]) cylinder(r1=3.6, r2=3.15, h=6, $fn=6);
        translate([0,36.5,0]) rotate([-90,0,0]) cylinder(r=3.5, h=6, $fn=30);
        
        // plates
        for(i = [0 : 5])
        {
            translate([-5,6.5*i,-10]) cube([50,1.8,20]); 
        }
        
        // cut
        translate([3,1,-10]) cube([20,33,20]); 
        
        // edges
        translate([2,-5,7]) rotate([0,45,0]) cube([20,70,20]); 
        translate([2,-5,-7]) rotate([0,45,0]) cube([20,70,20]); 
        translate([-34,-5,7]) rotate([0,45,0]) cube([20,70,20]); 
        translate([-34,-5,-7]) rotate([0,45,0]) cube([20,70,20]); 
       
        translate([-2,1,-8]) rotate([0,45,0]) cube([20,32,20]); 
        translate([-2,1,8]) rotate([0,45,0]) cube([20,32,20]); 
        
    }
}


rotate([0,-90,0]) buffer_spacer();