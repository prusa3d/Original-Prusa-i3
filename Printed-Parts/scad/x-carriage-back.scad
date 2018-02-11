// PRUSA iteration4
// X carriage back
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module m3head()
{
    intersection()
    {
        translate([30,5,9])cylinder(r=3.1,h = 25, $fn=30); // head cut
        translate([30,5,17-3.5]) cube([6.2,3.4,1], center=true);
    }
    translate([30,5,17-4]) cube([3.4,3.4,1], center=true);
    translate([30,5,17-3.5])cylinder(r=3.1,h = 20, $fn=30); // head cut
}
    
    
module x_carriage_back()
{
    difference()
    {
        union()
        {
            // base block
            translate([-16,-39.0,15.1]) cube([33,72,8]);
            translate([-25.5,-5,15.1]) cube([52,39.5,8]);
        }
        
        // lower bearing cut
        translate([-17,-22,7.5]) cube([35,4,10]);
        
        // cables opening
        translate([-4.5,-18,15]) cube([10,4,10]);
        translate([0.5,-18,10]) rotate([0,0,90]) cylinder( h=32, r=5, $fn=30 );
        translate([0.5,-14,10]) rotate([0,0,90]) cylinder( h=32, r=5, $fn=30 );
        translate([-20,-19.5,9]) cube([50,7.5,10]);
        
        // bearings
        translate([-15,-25,11.75]) rotate([0,90,0]) cylinder( h=31, r=7.6, $fn=30 );
        translate([-30,20,11.75]) rotate([0,90,0]) cylinder( h=60, r=7.6, $fn=30 );
        translate([-17,-25,11.75]) rotate([0,90,0]) cylinder( h=60, r=7, $fn=30 );
        translate([-32,20,11.75]) rotate([0,90,0]) cylinder( h=80, r=7, $fn=30 );
      
        // hold together screws
        translate([-9.5,-36,10]) rotate([0,0,0]) cylinder( h=50, r=1.65, $fn=50 );
        translate([10.5,-36,10]) rotate([0,0,0]) cylinder( h=50, r=1.65, $fn=50 );
        translate([1,4,10]) rotate([0,0,0]) cylinder( h=50, r=1.65, $fn=50 );
        translate([13,31,10]) rotate([0,0,0]) cylinder( h=50, r=1.65, $fn=50 );
        translate([-10.5,31,10]) rotate([0,0,0]) cylinder( h=50, r=1.65, $fn=50 ); 
        translate([13,31,19]) cylinder( h=50, r=3.1, $fn=30 );
        translate([-10.5,31,19]) cylinder( h=50, r=3.1, $fn=30 ); 
        
        // lower screw heads
        translate([-9.5,-36,19]) cylinder( h=6, r=3.1, $fn=30 );
        translate([10.5,-36,19]) cylinder( h=50, r=3.1, $fn=30 );
        translate([-12.6,-46,18]) cube([6.2,10,10]);
        translate([7.4,-46,18]) cube([6.2,10,10]);
        
        // center screw head
        translate([1,4,18]) cylinder( h=7, r=3.1, $fn=30 );
        
        // heat cables cut
        translate([0.5,-42.5,0]) rotate([-5,0,0]) cylinder( h=50, r=6, $fn=30 );
        
        // cable holder screw
        translate([0.5,-27,11]) rotate([0,0,90]) cylinder( h=40, r=1.6, $fn=30 );
        translate([0.5,-27,16.5]) rotate([0,0,0]) cylinder( h=5, r=3.1, $fn=6 );
        
        // x-carriage screws in belt holders
        translate([11.5,-0.5,10]) rotate([0,0,90]) cylinder( h=40, r=3, $fn=30 );
        translate([-11.5,-0.5,10]) rotate([0,0,90]) cylinder( h=40, r=3, $fn=30 );

        // nice edges
        translate([-20.8,-46.1,10]) rotate([0,0,45]) cube([10,10,15]);
        translate([21.8,-46.1,10]) rotate([0,0,45]) cube([10,10,15]);
        translate([-24.4,15.2,10]) rotate([0,0,45]) cube([14,10,15]);
        translate([26.9,15.2,10]) rotate([0,0,45]) cube([10,14,15]);
        translate([-19.55,28,10]) rotate([0,0,45]) cube([10,10,15]);
        translate([22.05,28,10]) rotate([0,0,45]) cube([10,10,15]);
        translate([-22,35,21]) rotate([30,0,0]) cube([44,10,10]);
        translate([-22,35,17]) rotate([30,0,0]) cube([14.5,10,10]);
        translate([10,35,17]) rotate([30,0,0]) cube([14.5,10,10]);
        
        // upper side cuts
        translate([17,25,10]) rotate([0,0,0]) cube([10,10,15]);
        translate([-29.5,25,10]) rotate([0,0,0]) cube([15,15,15]);
        translate([17,22,13]) rotate([0,0,0]) cube([10,10,5]);
        translate([-24.5,22,13]) rotate([0,0,0]) cube([10,10,5]);

        // side edges
        translate([27,-20,16]) rotate([0,-30,0]) cube([10,50,10]);
        translate([-34.2,-20,21]) rotate([0,30,0]) cube([10,50,10]);
        translate([19.5,-55,16]) rotate([0,-30,0]) cube([10,50,10]);
        translate([-27.1,-55,21]) rotate([0,30,0]) cube([10,50,10]);
        
        // inner cable cleanup
        translate([-1,-19.5,14]) rotate([0,30,0]) cube([10,7.5,10]);
        translate([-5,-19.5,10]) rotate([0,-30,0]) cube([10,7.5,10]);
        
        
        // filament sensor cable
        translate([4.5,28.5,12]) rotate([0,0,0]) cube([3.5,4,20]);
        translate([0.5,28.5,12]) rotate([0,0,0]) cube([4.5,7,20]);
        translate([4.5,-5,19.5]) rotate([0,0,0]) cube([3.5,35,4.3]);
        translate([4.5,17.5,16.5]) rotate([0,0,0]) cube([3.5,5,4.3]);
        translate([-1.55,-9.60,19.5]) rotate([0,0,-45]) cube([3.5,10,4]);
        translate([-1.9,-9.95,15]) rotate([45,0,-45]) cube([3.5,10,4]);
        translate([4.5,29,16]) rotate([45,0,0]) cube([3.5,5,5]);
        translate([3.5,-4.60,19.5]) rotate([0,0,-15]) cube([3,4,4]);
        
        // version
        translate([-14.5,13,22.8]) rotate([0,0,0]) linear_extrude(height = 0.4) 
        { text("MK3",font = "helvetica:style=Bold", size=6, center=true); }
        translate([-15,3,15.8]) rotate([0,180,0]) linear_extrude(height = 0.8) 
        { text("R2",font = "helvetica:style=Bold", size=4, center=true); }
        translate([-23,2.3,14.3]) cube([9,5.0,1]);

        // upper ziptie left
        translate([-21.5,-25,0])difference()
        {
            translate([1,45,12]) rotate([0,90,0]) cylinder(r=8.5, h=4, $fn=25);   
            translate([0,45,12]) rotate([0,90,0]) cylinder(r=7, h=6, $fn=25);
        }
        translate([19.5,8,14.5]) rotate([-60,0,0]) cube([4,3,10]);
        translate([-20.5,8,14.5]) rotate([-60,0,0]) cube([4,3,10]);
        
        // upper ziptie right
        translate([19,-25,0])difference()
        {
        translate([0.5,45,12]) rotate([0,90,0]) cylinder(r=8.5, h=4, $fn=25);   
        translate([0,45,12]) rotate([0,90,0]) cylinder(r=7, h=6, $fn=25);
        }
        
        // supports
        translate([-17,26,5]) m3head();
        translate([-40.5,26,5]) m3head();
        translate([-29,-1,4]) m3head();
        translate([-19.5,-41,5]) m3head();
        translate([-39.5,-41,5]) m3head();
    
    }
}

rotate([0,180,0]) x_carriage_back();

