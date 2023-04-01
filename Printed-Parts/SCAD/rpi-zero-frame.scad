// PRUSA iteration4
// RaspberryPi Zero and RaspberryPi Zero 2 frame
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

$fn=30;

for (x=[0, 58])
    for (y=[0, -23]) {
        translate([x, y, 0])
            cylinder(d=2.4, h=1.5);
        translate([x, y, -3])
            cylinder(d=6, h=3.01);
    }

for (x=[0, 58])
    hull(){
        for (y=[0, -23]) {
            translate([x, y, -3])
                 cylinder(d=6, h=1);
        }
    }

hull(){
    translate([25, -23, -4.5/2+0.75])
        cube([0.1, 6, 3], true);
    translate([58, -23, -3])
        cylinder(d=6, h=3);
}

translate([21, 1, -4.5/2])
    cube([2, 4, 4.5], true);

translate([32, 1, -4.5/2])
    cube([4, 4, 4.5], true);

difference() {
    union(){
        hull(){
            for (x=[0, 58])
                for (y=[0, -23]) {
                    translate([x, y, -4.5])
                        cylinder(d=6, h=2);
                }
        }
        translate([45, -3, -4.5])
            cube([10,8,2]);
    }

    translate([3, -23+3, -4.55])
        cube([58-6, 23-6, 2.1]);

    // pin holes
    for (x=[7.4:2.54:17]){
        translate([x, -24.3, -4.55])
            cylinder(d=1.8, h=2.1);
    }
    translate([7.4+6*2.54, -24.3+2.54, -4.55])
        cylinder(d=1.8, h=2.1);

    translate([6+3, 0, -4.5/2-0.7])
        cube([12, 6.1, 1], true);

    // holes for EINSY pins
    hull(){
        for (x=[1.4, -1.2])
            for (y=[-15.2, -17.2])
                translate([x, y, -4.55])
                    cylinder(d=2, h=2.1);
    }

    hull(){
        for (x=[0, -2])
            translate([x, -24.3, -4.55])
                cylinder(d=2, h=2.1);   // not valid manifold ?
    }

    hull(){
        for (x=[30.4:2.54:41])
            for (y=[-22.79, -20.25])
                translate([x, y, -4.55])
                    cylinder(d=2, h=2.1);
    }

    hull(){
        for (x=[49.4, 51.94])
            for (y=[-25.33, -22.79, -20.25])
                translate([x, y, -4.55])
                    cylinder(d=2, h=2.1);
    }

    hull(){
        for (y=[-0.8, 1.74, 4.28])
            translate([51.2, y, -4.55])
                cylinder(d=2, h=1.8);
    }

    hull(){
        for (y=[-3.34, -0.8])
            translate([45, y, -4.55])
                cylinder(d=2, h=1.8);
    }
    translate([45, 4.28, -4.55])
        cylinder(d=2, h=1.8);

    for (y=[-2.3, -4.84]){
        translate([-3.5, y, -4.55])
            cylinder(d=2, h=2.1);
    }
}
