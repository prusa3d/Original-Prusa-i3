// PRUSA iteration4
// Y belt holder
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module y_belt_holder()
{

    difference()
    {
        // base block
        union()
        {
            translate([-7,-24,44.5]) cube([14,48,8]);
            translate([-5,-15,29]) cube([12,30,17]);
        }

        // belt entry 
        translate([-7.5,-16,39.9]) rotate([0,45,0]) cube([3,32,3]);
        translate([-7.5,-16,34.9]) rotate([0,45,0]) cube([3,32,3]);
        
        // lower belt slot
        translate([-8.5,-16,34.2]) cube([11.5,32,0.75]);
        translate([-8.5,-16,35.4]) rotate([0,5,0]) cube([11.5,32,0.2]);
        translate([-8.5,-16,33.6]) rotate([0,-5,0]) cube([11.5,32,0.2]);
        for (_step =[-16:2:16])
        {
            translate([-8.5,_step,33]) cube([11.5,1,1.5]);
        }
        
        // upper belt slot
        translate([-8.5,-16,39.2]) cube([11.5,32,0.75]);
        translate([-8.5,-16,40.4]) rotate([0,5,0]) cube([11.5,32,0.2]);
        translate([-8.5,-16,38.6]) rotate([0,-5,0]) cube([11.5,32,0.2]);
        for (_step =[-17:2:16])
        {
            translate([-8.5,_step,38.2]) cube([11.5,1,1.5]);
        }
        
        // nice edges
        translate([-8,-20,21.8]) rotate([45,0,0]) cube([16,10,10]);
        translate([-8,20,21.8]) rotate([45,0,0]) cube([16,10,10]);

        translate([-8,-30,37]) rotate([45,0,0]) cube([16,10,10]);
        translate([-8,30,37]) rotate([45,0,0]) cube([16,10,10]);
        translate([-12.2,-30,44.4]) rotate([0,45,0]) cube([5,60,5]);
        
        // mounting screw holes
        translate([0,-19.50,40]) cylinder( h=30, r=1.65, $fn=50 );
        translate([0,19.50,40]) cylinder( h=30, r=1.65, $fn=50 );
        translate([0,-19.25,40]) cylinder( h=30, r=1.65, $fn=50 );
        translate([0,19.25,40]) cylinder( h=30, r=1.65, $fn=50 );
        translate([0,-19.0,40]) cylinder( h=30, r=1.65, $fn=50 );
        translate([0,19.0,40]) cylinder( h=30, r=1.65, $fn=50 );
        
        translate([0,-19.5,43.5]) cylinder( h=7, r=3.1, $fn=50 );
        translate([0,19.5,43.5]) cylinder( h=7, r=3.1, $fn=50 );
        translate([0,-19.25,43.5]) cylinder( h=7, r=3.1, $fn=50 );
        translate([0,19.25,43.5]) cylinder( h=7, r=3.1, $fn=50 );
        translate([0,-19.0,43.5]) cylinder( h=7, r=3.1, $fn=50 );
        translate([0,19.0,43.5]) cylinder( h=7, r=3.1, $fn=50 );
        
    
    }
 

}

difference()
{
    translate([-40,0,7]) rotate([0,90,0]) y_belt_holder();
    //version   
    translate([8.5,3.5,0.5]) rotate([0,180,90]) linear_extrude(height = 0.6) 
    { text("R2",font = "helvetica:style=Bold", size=4, center=true); }
}
    
