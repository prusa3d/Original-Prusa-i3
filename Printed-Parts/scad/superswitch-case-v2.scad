// PRUSA MM upgrade
// SuperSwitch-case-v2
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
s=0;

cambox();
module cambox(){
    difference() {
        translate([0,-heightY/2,0]) box(widthX,heightY,30,3,1.5);
        // M3
        translate([4,0,-1]) cylinder(h=5, r=1.75, center=false);
        translate([47,0,-1]) cylinder(h=5, r=1.75, center=false);
        // wire
        hull(){
            translate([15.5,heightY/2-5,30]) rotate([-90,0,0]) cylinder(h=10, r=3.5, center=false);;
            translate([15.5,heightY/2-5,23]) rotate([-90,0,0]) cylinder(h=10, r=3.5, center=false);;
        }
        hull(){
            translate([25.5,-heightY/2-5,30]) rotate([-90,0,0]) cylinder(h=10, r=1.75, center=false);;
            translate([25.5,-heightY/2-5,25]) rotate([-90,0,0]) cylinder(h=10, r=1.75, center=false);;
        }
        translate([widthX/2-5,0,-2]) rotate([0,0,0])  cylinder(20,20,20,$fn=3);
        translate([widthX/2+5,25,-2]) rotate([0,0,180])  cylinder(20,20,20,$fn=3);
        translate([widthX/2+5,-25,-2]) rotate([0,0,180])  cylinder(20,20,20,$fn=3);

        translate([widthX/2-13,heightY/2-14,0.5]) {rotate([0,0,0]){
            linear_extrude(height = wall+2, center = false, convexity = 5, twist = 0, slices = 20, scale = 1.0) {
            text(text = "UP", font = "Marsh:style=Stencil", halign="center", size=7);
        }}}
        translate([widthX/2-12,-heightY/2+10,-2]) rotate([0,0,0])  cylinder(8,8,8,$fn=3);
    }
    translate([4,0,1.5]) rotate([0,0,180])support(3.5,3,1); 
    translate([47,0,1.5]) rotate([0,0,0])support(3.5,3,1);
    difference() {
        union() {
            
            translate([4,0.9,20]) rotate([0,0,180]) triangle(0,4,1);
            translate([4,-heightY/2+14.9,20]) rotate([0,0,180]) triangle(0,4,1);
            translate([widthX,0.9,20]) rotate([0,0,180]) triangle(0,4,1);
            translate([widthX,-heightY/2+14.9,20]) rotate([0,0,180]) triangle(0,4,1);
        }
        translate([4.3,0,20]) rotate([0,45,0])cube([6,heightY-6,6], center=true);           
        translate([widthX-4.3,0,20]) rotate([0,45,0])cube([6,heightY-6,6], center=true);           
    }

    difference() {
        translate([widthX/2,heightY/2-5,12]) rotate([0,0,90])support(2.8,15,2);
        translate([widthX/2,heightY/2-8,13]) rotate([0,45,90]) cube([15,10,10], center=true);
    }    
}



module triangle(long, width, ukos){
   translate([0,8,-0.5]) cube([width,long,8+0.5], center=false);
    difference() {
        cube([width,8,8], center=false);
        translate([-1,3,-5]) rotate([30,0,0])cube([6,6,13], center=false);
        if (ukos==1) { 
        }
    }
}

module support(mx,v,d){   // M3 height
    difference() {
        hull() {
           cylinder(h=v, r=mx, center=false);
           translate([mx+d,-mx,s]) cube([1,mx*2,v], center=false);
        }
        translate([0,0,-0.1]) cylinder(h=v+0.2, r=mx/2, center=false);
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


