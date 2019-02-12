// PRUSA iteration4
// FS cover
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module fs_cover()
{
difference()
{
    union()
    {
        translate([-17,-17,0]) cube([39,28,5]);
        
        translate([0,-10,5]) cylinder(h=1,r=5,$fn = 60);  
        translate([0,0,5]) cylinder(h=1,r=5,$fn = 60);  
        translate([-5,-10,0]) cube([10,10,6]);
    }
    
    // filament path
    translate([0,0,-1]) cylinder(h=20,r1=1.2, r2=4,$fn = 60);  
    translate([0,0,-8]) cylinder(h=10,r1=5, r2=1.2,$fn = 60);  
    
    // mounting screw
    translate([0,-10,-1]) cylinder(h=20,r=1.65,$fn = 60);  
    translate([0,-10,-1.5]) cylinder(h=2,r2=1.65, r1=3,$fn = 60);  
    translate([0,-10,3]) cylinder(h=20,r=3.1,$fn = 60);  
    
    // ir sensor place
    difference()
    {
       translate([7.5,-18,-1]) cube([10,23,4]);
       translate([3,-18,3.5]) rotate([0,45,0]) cube([5,23,5]);
       translate([15,-18,3.5]) rotate([0,45,0]) cube([5,23,5]);
    }
    
    // edges
    translate([18,-18,6]) rotate([0,45,0]) cube([7,30,7]);
    translate([-20,13,0]) rotate([45,0,0]) cube([60,7,7]); 
    translate([-25,-18,6]) rotate([0,45,0]) cube([7,30,7]);   
    
    // version
    translate([-13,-9,0.7]) rotate([180,0,90]) linear_extrude(height = 0.75) 
    { text("R4",font = "helvetica:style=Bold", size=7, center=true); }
}
}

fs_cover();