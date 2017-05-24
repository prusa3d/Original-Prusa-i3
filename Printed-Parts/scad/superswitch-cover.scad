// PRUSA MM upgrade
// SuperSwitch-cover
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module holder_doors()
{
    difference()
    {
    translate([10,-20,17]) rotate([0,0,0]) cube([10,3,7]);
    translate([6,-20,14]) rotate([0,-45,0]) cube([15,5,5]);
    
    }
}
module doors()
{
    difference()
    {
        union()
        {
        translate([-65,-25,30]) rotate([0,0,0]) cube([130,53,2]);
        translate([59,5,27]) cylinder( h=5, r=5, $fn=60 );   
        }
        //corners
        translate([-67,16,1]) rotate([0,0,45]) cube([20,20,33]);
        translate([-67,-41,1]) rotate([0,0,45]) cube([20,20,33]);
        translate([67,16,1]) rotate([0,0,45]) cube([20,20,33]);
        translate([67,-41,1]) rotate([0,0,45]) cube([20,20,33]);
    
        // M3 screw
        translate([59,5,17]) cylinder( h=45, r=1.6, $fn=60 );     
        translate([59,5,29]) cylinder( h=3.5, r=3.2, $fn=60 );     
    
        translate([58.5,-0,21.3]) rotate([0,30,0]) cube([10,10,10]);   
        translate([62.8,-0,20])  cube([10,10,10]);   
       
       translate( [ 59 , 5 ,32] ) rotate([0,180,0])
        {
            intersection(){cylinder(r=3.2, h=10, $fn=30);
            translate( [ 0 , 0 , 2.5 ] ) cube([3.8,8,2], center=true);}
            translate( [ 0 , 0 , 3 ] ) cube([3.8,3.8,2], center=true);
        } 
        
        
    }

    translate([-55,-19.5,27]) cube([110,1,3]);
    translate([-55,21.5,27]) cube([110,1,3]);
    
    // holders
    difference()
    {
            union()
            {
            translate([-4.8,-2.5,7]) holder_doors();
            translate([-60.8,-2.5,7]) holder_doors();
            translate([-4.8,42.5,7]) holder_doors();
            translate([-60.8,42.5,7]) holder_doors();
            }
        translate([11,-40,23]) rotate([0,45,0]) cube([10,80,10]);
        translate([-45,-40,23]) rotate([0,45,0]) cube([10,80,10]);
    }
    
    }


doors();