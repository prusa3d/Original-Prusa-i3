// PRUSA iteration4
// Z screw cover
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


translate(v=[-4.2, 0, 4.3]) rotate([0,90,0])  cylinder(r1=0.6, r2=0.4, h = 1, $fn=60);
translate(v=[4.2, 0, 4.3]) rotate([0,-90,0])  cylinder(r1=0.6, r2=0.4, h = 1, $fn=60);
translate(v=[0, 4.2, 4.3]) rotate([90,0,0])  cylinder(r1=0.6, r2=0.4, h = 1, $fn=60);
translate(v=[0, -4.2, 4.3]) rotate([-90,0,0])  cylinder(r1=0.6, r2=0.4, h = 1, $fn=60);

translate(v=[-4.2, 0.5, 4.0]) rotate([0,90,0])  cylinder(r1=0.6, r2=0.3, h = 0.8, $fn=60);
translate(v=[4.2, -0.5, 4.0]) rotate([0,-90,0])  cylinder(r1=0.6, r2=0.3, h = 0.8, $fn=60);
translate(v=[0.5, 4.2, 4.0]) rotate([90,0,0])  cylinder(r1=0.6, r2=0.3, h = 0.8, $fn=60);
translate(v=[-0.5, -4.2, 4.0]) rotate([-90,0,0])  cylinder(r1=0.6, r2=0.3, h = 0.8, $fn=60);

translate(v=[-4.2, 1, 3.7]) rotate([0,90,0])  cylinder(r1=0.5, r2=0.3, h = 0.6, $fn=60);
translate(v=[4.2, -1, 3.7]) rotate([0,-90,0])  cylinder(r1=0.5, r2=0.3, h = 0.6, $fn=60);
translate(v=[1, 4.2, 3.7]) rotate([90,0,0])  cylinder(r1=0.5, r2=0.3, h = 0.6, $fn=60);
translate(v=[-1, -4.2, 3.7]) rotate([-90,0,0])  cylinder(r1=0.5, r2=0.3, h = 0.6, $fn=60);

difference()
{
    union()
        {
            translate(v=[0, 0, 1]) cylinder(r1=8, r2=4.6, h = 4);
            cylinder(r=8, h = 1, $fn=60);
        }
        translate(v=[0, 0, -1]) cylinder(r=4.2, h = 7, $fn=60);
        cylinder(r1=4.5, r2=4.2, h = 1, $fn=60);
}