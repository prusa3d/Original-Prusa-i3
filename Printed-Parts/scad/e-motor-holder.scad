// PRUSA MM upgrade
// e-motor-holder
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module selinfill()
{
translate( [ 15, 0, 29.8] ) rotate([0,29,0]) cube( [ 14, 2, 0.5] );       

translate( [ 21, 0, 39] ) rotate([0,29,0]) cube( [ 14, 2, 0.5] );       
translate( [ 33, 0, 24.65] ) cube( [ 0.5, 2, 8] );       
translate( [ 28.2, 0, 16.15] ) rotate([0,29,0]) cube( [ 0.5, 2, 10] );       
translate( [ 25.2, 0, 20] ) rotate([0,29,0]) cube( [ 0.5, 2, 15] );  
}



module holder()
{
difference()
{
union()
{
translate( [ 16.8, -22, 35] ) rotate([0,70,0]) cube( [ 30, 18, 14] );       
translate( [ 24, -22, 5] ) cube( [ 17, 18, 35] );       
translate( [ 12, -22, 26] ) cube( [ 30, 18, 24] );       
}
translate( [ -22, -26, 52] ) rotate([0,29,0]) cube( [ 55, 55, 7] );       
translate( [ 24, -28, 0] ) rotate([0,27,0]) cube( [ 15, 55, 40] );       
translate( [ 12, -28, 48] ) rotate([0,27,0]) cube( [ 40, 55, 20] );       
translate( [ 11, -28, 42] ) cube( [ 40, 55, 20] );       
translate( [ 37, -28, 22] ) cube( [ 20, 55, 20] );       

translate([8,-9,12]) rotate([0,90,0]) cylinder( h=25, r=1.5, $fn=50 ); 
translate([27,-9,12]) rotate([0,90,0]) cylinder( h=6, r=2.8, $fn=50 ); 


// ziptie
translate( [ 7, -22, 33.8] ) rotate([0,29,0]) cube( [ 24, 2, 2.5] ); 
translate( [ 28.5, -22, 23.8] ) rotate([0,29,0]) cube( [ 2, 2, 17] ); 
translate([28.6,-20,23.6]) rotate([90,90,0]) cylinder( h=2, r=1.5, $fn=50 ); 
translate( [ 33.0, -22, 33.0] ) rotate([0,29,0]) cube( [ 5, 3, 4] );
translate( [ 5, -22, 45] ) rotate([0,21,0]) cube( [ 50, 2, 1.5] ); 
translate( [ 33.0, -19, 33.0] ) rotate([45,29,0]) cube( [ 5, 6, 4] ); 

translate([0,-7,0]) selinfill();
translate([0,-11,0]) selinfill();
translate([0,-15,0]) selinfill();
translate([0,-19,0]) selinfill();

// edges
translate( [ 20,-2, -3] ) rotate([45,0,0]) cube( [ 20, 10, 10] );       
translate( [ 10,-9, 20] ) rotate([0,0,45]) cube( [ 10, 10, 30] );       

}
}


holder();
translate([0,-44,0]) mirror([0,1,0]) holder();
