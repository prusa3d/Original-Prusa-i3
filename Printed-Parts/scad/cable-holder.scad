// PRUSA iteration4
// cable holder
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module zip_main()
{
    // ziptie cut for upper cables
    
    translate([-10,-30.5,24]) cube([20,2,3]);
    translate([-6,-30.5,24]) cube([2,20,3]);
    translate([5,-30.5,24]) cube([2,20,3]);
    
    difference()
    {
        translate([0.5,-26,24]) rotate([0,0,90]) cylinder( h=3, r=6, $fn=30 );
        translate([0.5,-26,23]) rotate([0,0,90]) cylinder( h=5, r=4.6, $fn=30 );
        translate([-10,-35.5,23]) cube([20,5,5]);        
        translate([-10,-27,23]) cube([20,10,5]);        
    }
}
    
    
module zip_ext_cables()    
{
    // ziptie cut for lower cables
    
    translate([-10,-25.5,24]) cube([20,2,3]);
    translate([-4.5,-45.5,24]) cube([2,20,3]);
    translate([3.5,-45.5,24]) cube([2,20,3]);
}


module cable_holder()
{    
    difference()
    {
        union()
        {
            // base block
            translate([0.5,-26,24]) rotate([0,0,90]) cylinder( h=39.5, r=5, $fn=30 );
            translate([-4.5,-26,24]) cube([10,9,39.5]);
            translate([-3,-35,24]) cube([7,10,39.5]);
        }
        
        // screw 
        translate([0.5,-27,19.5]) rotate([0,0,90]) cylinder( h=42, r=1.75, $fn=30 );
        translate([0.5,-27,19.5+41]) rotate([0,0,90]) cylinder( h=5, r=3.15, $fn=30 );

        // upper cables cut
        translate([0.5,-18,23]) rotate([0,5,90]) cylinder( h=41, r=5, $fn=30 );
        translate([-10,-20,23]) rotate([-5,0,0]) cube([20,9,45]);
        
        // lower angled cut
        translate([-10,-44,23]) rotate([-4,0,0]) cube([20,9,45]);
        
        // wires
        translate([-0.8,-35,23]) rotate([0,4,90]) cylinder( h=41, r=1.25, $fn=30 );
        translate([1.8,-35,23]) rotate([0,4,90]) cylinder( h=41, r=1.25, $fn=30 );


        // ziptie openings
        translate([0,0,5]) zip_main();
        translate([0,0,18]) zip_main();
        translate([0,0,32]) zip_main();
        translate([0,0,11]) zip_ext_cables();
        translate([0,0,25]) zip_ext_cables();

        // round edge cut
        translate([0,1.8,-1.5])
        difference()
        {
            translate([-10,-32,63]) rotate([0,90,0]) cylinder( h=41, r=4, $fn=30 );
            translate([-10,-32,63]) rotate([0,90,0]) cylinder( h=41, r=2, $fn=30 );
            translate([-10,-36,53]) rotate([0,0,0]) cube([20,9,10]);
            translate([-10,-32,58]) rotate([0,0,0]) cube([20,9,10]);
        }

    }
}

cable_holder();