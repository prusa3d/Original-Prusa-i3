// PRUSA MM upgrade
// SuperSwitch-case
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module holder_box()
{
    difference()
    {
    translate([0,-20,18]) rotate([0,0,0]) cube([10,3,7]);
    translate([6,-20,14]) rotate([0,-45,0]) cube([15,5,5]);
    translate([-1,-17,14]) rotate([45,0,0]) cube([15,6,5]);
    }
}

module box()
{


difference()
{

union()
{
    //back plate
    translate([-65,-25,0]) rotate([0,0,0]) cube([130,53,2]);

    difference()
    {
        translate([-65,-25,0]) rotate([0,0,0]) cube([130,53,30]);
        translate([-63,-23,0]) rotate([0,0,0]) cube([126,49,32]);
    }
    
    translate([-50,-13.5,0]) cube([100,2,5]);
    translate([-50,13.5,0]) cube([100,2,5]);

    translate([-46,-12.5,0]) cylinder( h=6, r=5, $fn=60 );
    translate([-46,14.5,0]) cylinder( h=6, r=5, $fn=60 );
    translate([46,-12.5,0]) cylinder( h=6, r=5, $fn=60 );
    translate([46,14.5,0]) cylinder( h=6, r=5, $fn=60 );
    translate([-12,-21,0]) cylinder( h=4, r=3, $fn=60 );
    translate([-12,22,0]) cylinder( h=4, r=3, $fn=60 );
    
    //corners
    translate([-65,14,0]) rotate([0,0,45]) cube([20,20,30]);
    translate([-65,-39,0]) rotate([0,0,45]) cube([20,20,30]);
    translate([65,14,0]) rotate([0,0,45]) cube([20,20,30]);
    translate([65,-39,0]) rotate([0,0,45]) cube([20,20,30]);
    
}


    //corners cut
    translate([-67,16,-1]) rotate([0,0,45]) cube([20,20,33]);
    translate([-67,-41,-1]) rotate([0,0,45]) cube([20,20,33]);
    translate([67,16,-1]) rotate([0,0,45]) cube([20,20,33]);
    translate([67,-41,-1]) rotate([0,0,45]) cube([20,20,33]);

    translate([65,-41,-1]) rotate([0,0,0]) cube([20,90,35]);
    translate([-85,-41,-1]) rotate([0,0,0]) cube([20,90,35]);
    translate([-80,-45,-1]) rotate([0,0,0]) cube([150,20,35]);
    translate([-80,28,-1]) rotate([0,0,0]) cube([150,20,35]);


    translate([-46,-12.5,-1]) cylinder( h=10, r=1.5, $fn=60 );
    translate([-46,14.5,-1]) cylinder( h=10, r=1.5, $fn=60 );
    translate([46,-12.5,-1]) cylinder( h=10, r=1.5, $fn=60 );
    translate([46,14.5,-1]) cylinder( h=10, r=1.5, $fn=60 );

    translate([-46,-12.5,-1]) cylinder( h=5, r=3.2, $fn=60 );
    translate([-46,14.5,-1]) cylinder( h=5, r=3.2, $fn=60 );
    translate([46,-12.5,-1]) cylinder( h=5, r=3.2, $fn=60 );
    translate([46,14.5,-1]) cylinder( h=5, r=3.2, $fn=60 );

    translate([-46,-12.5,-1]) cylinder( h=2, r1=4, r2=3, $fn=60 );
    translate([-46,14.5,-1]) cylinder( h=2, r1=4, r2=3, $fn=60 );
    translate([46,-12.5,-1]) cylinder( h=2, r1=4, r2=3, $fn=60 );
    translate([46,14.5,-1]) cylinder( h=2, r1=4, r2=3, $fn=60 );

    // frame mounting holes
    translate([-12,-21,-1]) cylinder( h=15, r=1.7, $fn=60 );
    translate([-12,22,-1]) cylinder( h=15, r=1.7, $fn=60 );
    translate([-12,-21,4]) cylinder( h=8, r=3, $fn=60 );
    translate([-12,22,4]) cylinder( h=4, r=3, $fn=60 );
    translate([-12,-21,-4]) cylinder( h=5, r1=4, r2=1.7,$fn=60 );
    translate([-12,22,-4]) cylinder( h=5, r1=4, r2=1.7,$fn=60 );
    
    // cut off
    translate([-25,0,-1]) cylinder( h=15, r=11, $fn=6 );
    translate([-15,0,-1]) cylinder( h=15, r=11, $fn=6 );
    translate([30,0,-1]) cylinder( h=15, r=11, $fn=6 );
    translate([15,0,-1]) cylinder( h=15, r=11, $fn=6 );
    translate([20,0,-1]) cylinder( h=15, r=11, $fn=6 );
    
    translate([54,0,-1]) cylinder( h=15, r=8, $fn=6 );
    translate([-53,0,-1]) cylinder( h=15, r=8, $fn=6 );
    
    // M3 nut
    translate([71,2,21]) rotate([0,0,90]) cube([6,15,2.5]);
    
    // wires to rambo hole
    difference()
    {
    translate([-74,2,8]) rotate([0,90,0]) cylinder( h=15, r=8, $fn=6 );
    translate([-80,-10,6]) rotate([0,90,0]) cube([20,30,30]);
    }
    
    // wires to motor hole
    translate([60,-7,18]) rotate([0,90,0]) cylinder( h=15, r=7, $fn=6 );
    
     translate( [ -46 , -12.5 ,1] ) 
        {
            intersection(){cylinder(r=3.2, h=10, $fn=30);
            translate( [ 0 , 0 , 2.5 ] ) cube([3.8,8,2], center=true);}
            translate( [ 0 , 0 , 3 ] ) cube([3.8,3.8,2], center=true);
        } 
    translate( [ -46 , 14.5 ,1] ) 
        {
            intersection(){cylinder(r=3.2, h=10, $fn=30);
            translate( [ 0 , 0 , 2.5 ] ) cube([3.8,8,2], center=true);}
            translate( [ 0 , 0 , 3 ] ) cube([3.8,3.8,2], center=true);
        } 
    translate( [ 46 , -12.5 ,1] ) 
        {
            intersection(){cylinder(r=3.2, h=10, $fn=30);
            translate( [ 0 , 0 , 2.5 ] ) cube([3.8,8,2], center=true);}
            translate( [ 0 , 0 , 3 ] ) cube([3.8,3.8,2], center=true);
        } 
    translate( [ 46 , 14.5 ,1] ) 
        {
            intersection(){cylinder(r=3.2, h=10, $fn=30);
            translate( [ 0 , 0 , 2.5 ] ) cube([3.8,8,2], center=true);}
            translate( [ 0 , 0 , 3 ] ) cube([3.8,3.8,2], center=true);
        } 
        
    translate([53.7,5,27]) cylinder( h=5, r=10, $fn=60 );
}

    // wires to rambo hole shield
    difference()
    {
        translate([-74,2,8]) rotate([0,90,0]) cylinder( h=11, r=10, $fn=6 );
        translate([-80,2,8]) rotate([0,90,0]) cylinder( h=25, r=8, $fn=6 );
        translate([-80,-10,6]) rotate([0,90,0]) cube([20,30,30]);
        translate([-80,-10,17]) rotate([0,70,0]) cube([20,30,10]);
    }
    
    

    // door mounts
    translate([0,-3,5]) holder_box();
    translate([-56,-3,5]) holder_box();
    translate([-56,6,5]) mirror([0,1,0]) holder_box();
    translate([0,6,5]) mirror([0,1,0]) holder_box();
    
    
    // M3 screw for doors
    difference()
    {
        union()
        {
            translate([59,5,2]) rotate([0,0,90]) cylinder( h=25, r=5, $fn=6 );
            translate([63,0,2]) rotate([0,0,90]) cube([10,4,25]);
        }
        translate([59,5,17]) cylinder( h=25, r=1.6, $fn=60 );
        translate([59,5,29]) cylinder( h=5, r1=1.6, r2=3, $fn=60 );
        translate([58,-5,-5]) rotate([0,-30,0]) cube([10,20,25]);
        translate([71,2,21]) rotate([0,0,90]) cube([6,15,2.5]);
    }
    

}




 
 
box();







 




