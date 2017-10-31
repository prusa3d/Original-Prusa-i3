// PRUSA MM upgrade
// SuperSwitch-cover-v2
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

$fn=50;
heightY=94;
widthX=51;
wall=1.5;
txt="Y";
pcb = 14;   // pcb height over bottom

boxtop(51,heightY,2,3,1.5);


module triangle(long, width, ukos){
   translate([0,8,-0.5]) cube([width,long,8+0.5], center=false);
    difference() {
        cube([width,8,8], center=false);
        translate([-1,3,-5]) rotate([30,0,0])cube([6,6,13], center=false);
        if (ukos==1) { 
        }
    }
}

module boxtop(x,y,z,zz,s){
difference() {
    union() {    
        box(x,y,s,zz,s);
        translate([1.1*s,1.1*s,0]) box(x-2.5*s,y-2.5*s,2*s,zz,s);
        translate([widthX/2,heightY-5,0]) rotate([0,0,180]) cylinder(h=s+3, r=4, center=false);
    }
    translate([widthX/2,heightY-5,-2]) rotate([0,0,180]) cylinder(h=10, r=1.6, center=false);
        translate([widthX/2,heightY-5,-1]) rotate([0,0,180]) cylinder(h=4, r=3, center=false);
        translate([widthX/2,heightY-5,1]) rotate([0,0,180]) cube([5.2,3.2,5], center=true); 
    
        translate([widthX/2,92.2,8.6]) rotate([45,0,0])cube([widthX,8,12], center=true);           
        // TXT
        translate([widthX/2,heightY/2-12,3]){rotate([0,180,0]){
            linear_extrude(height = wall+2, center = false, convexity = 5, twist = 0, slices = 20, scale = 1.0) {

        }}}
}
    difference() {
        union() {    
        translate([0.15,heightY/2-7,1]) rotate([0,0,0]) triangle(4,3,0);
        translate([0.15,7,1]) rotate([0,0,0]) triangle(4,3,0);

        translate([widthX-3.6,heightY/2-7,1]) rotate([0,0,0]) triangle(4,3,0);
        translate([widthX-3.6,7,1]) rotate([0,0,0]) triangle(4,3,0);
        }
        translate([widthX/2,20,8]) rotate([45,0,0])cube([widthX,8,12], center=true);           
        translate([widthX/2,55,8]) rotate([45,0,0])cube([widthX,8,12], center=true);           
        translate([widthX/2,90,8]) rotate([45,0,0])cube([widthX,8,12], center=true);           
    }
}

module box(x,y,z,zz,s){   // x y z - round edges
    difference() {
        union() {
            hull() {
                translate([zz,zz,0]) cylinder(h=z, r=zz+s, center=false, $fn=4);
                translate([x-zz,zz,0]) cylinder(h=z, r=zz+s, center=false, $fn=4);
                translate([zz,y-zz,0]) cylinder(h=z, r=zz+s, center=false, $fn=4);
                translate([x-zz,y-zz,0]) cylinder(h=z, r=zz+s, center=false, $fn=4);
            }
        }
        hull() {
            translate([zz,zz,s]) cylinder(h=z, r=zz, center=false, $fn=4);
            translate([x-zz,zz,s]) cylinder(h=z, r=zz, center=false, $fn=4);
            translate([zz,y-zz,s]) cylinder(h=z, r=zz, center=false, $fn=4);
            translate([x-zz,y-zz,s]) cylinder(h=z, r=zz, center=false, $fn=4);
        }
    }
}

