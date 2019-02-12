// PRUSA iteration4
// Print fan support
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org



difference()
{
    union()
{
        translate([-4,-47,23]) rotate([0,0,0])cylinder(h = 5, r=5, $fn=50);
        translate([-2,-57,23]) rotate([0,0,0]) cube([5,15,30]);
        translate([-5,-52,23]) rotate([0,0,0]) cube([8,10,5]);
        translate([-5,-48,45]) rotate([48,0,0])cylinder(h = 10, r=6, $fn=6);
}

        translate([-5,-48,45]) rotate([48,0,0])cylinder(h = 30, r=1.65, $fn=50);
        
        
        difference()
        {
            union()
            {
                translate([-5,-48,45]) rotate([48,0,0])cylinder(h = 6, r=3.1, $fn=6);
                translate([-5,-47.9,45]) rotate([48,0,0])cylinder(h = 4, r2=3.1,r1=4, $fn=6);
            }
            translate([-2,-55,40]) rotate([0,0.6,0]) cube([10,10,10]);
        }
        translate([-5,-47,10]) rotate([0,0,0])cylinder(h = 25, r=1.65, $fn=50);
        translate([-5,-47,27]) rotate([0,0,0])cylinder(h = 1.1, r=3.1, $fn=50);
        
        translate([10,-85,15]) rotate([0,-48,90]) cube([60,50,20]);
        translate([-15,-71,15]) rotate([10,0,0]) cube([50,20,40]);
        translate([-15,-41,15]) rotate([5,0,0]) cube([50,20,40]);
        translate([-15,-39.5,44]) rotate([48,0,0]) cube([20,20,20]);
        translate([-15,-60,52.5]) rotate([0,0,0]) cube([20,20,20]);
}
