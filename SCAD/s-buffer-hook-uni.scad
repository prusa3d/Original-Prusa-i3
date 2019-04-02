// PRUSA iteration4
// s-buffer-hook-uni
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module buffer_spacer_hook_uni()
{
    difference()
    {
        union()
        {
            // base block
            translate([-8,-4,-6]) cube([13,41.5,12]);
            
            // hook
            translate([-35,-4,-6]) cube([28,9,12]);
            translate([-35,-4,-6]) cube([8,12,12]);
            translate([-7,-4,-6]) rotate([0,0,45]) cube([8,8,12]);
        }
        
        // hook edges
        translate([-13,2,-7]) rotate([0,0,10]) cube([2,13,14]); 
        

        
        // hold together screw
        translate([0,-3.4,0]) rotate([-90,0,0]) cylinder(r=1.8, h=40, $fn=30);
        translate([0,-7,0]) rotate([-90,0,0]) cylinder(r1=3.6, r2=3.15, h=6, $fn=6);
        translate([0,36.5,0]) rotate([-90,0,0]) cylinder(r=3.5, h=6, $fn=30);
        
        // plates
        for(i = [0 : 5])
        {
            translate([-5,6.5*i,-10]) cube([50,1.8,20]); 
        }
        
        
        // MK3 frame cut
        translate([-13,-0,-6.5]) cube([5,7,13]);
        
        // cut
        translate([3,1,-10]) cube([20,33,20]); 
        
        // edges
        translate([2,-5,7]) rotate([0,45,0]) cube([20,70,20]); 
        translate([2,-5,-7]) rotate([0,45,0]) cube([20,70,20]); 
        translate([-2,1,-8]) rotate([0,45,0]) cube([20,32,20]); 
        translate([-2,1,8]) rotate([0,45,0]) cube([20,32,20]); 
        
        
        translate([-27,5.5,-7]) rotate([0,0,0]) cylinder(r=4.5, h=40, $fn=30);
        translate([-31.5,5,-7]) cube([8,11,15]);
        
        
        // hook edges
        translate([-31.5,5,-7]) rotate([0,0,10]) cube([2,13,14]); 
        translate([-33,-8,-7]) rotate([0,0,40]) cube([5,13,14]); 
        
        // selective infill
        translate([-6.75,-3,0]) cube([0.5,8,1]); 
        translate([-6.75,-3,-3]) cube([0.5,8,1]); 
        translate([-6.75,-3,3]) cube([0.5,8,1]); 
        
    }
}

buffer_spacer_hook_uni();


