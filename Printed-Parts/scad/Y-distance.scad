// PRUSA iteration3
// X carriage
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

difference()
{

//body    
union()
{
    translate([3,-18,0]) cube([5,36,10]);
    translate([8,-18,0]) cube([4,36,10]);
}


union()
{
    //rods
    translate(v = [4,-10,-1]) cylinder(h = 12, r=4, $fn=50);	
    translate(v = [4,10,-1]) cylinder(h = 12, r=4, $fn=50);
    //cables
    translate([10,5,3]) cube([8,9,10]);
}

        //corners
        translate([-5,24,3]) rotate([45,0,0]) cube([20,10,10]);
        translate([-5,24,-7]) rotate([45,0,0]) cube([20,10,10]);
        translate([-5,-24,3]) rotate([45,0,0]) cube([20,10,10]);
        translate([-5,-24,-7]) rotate([45,0,0]) cube([20,10,10]);
}