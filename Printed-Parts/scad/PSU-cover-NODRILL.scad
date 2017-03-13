// PRUSA iteration3
// PSU Cover
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module CubeAdjust(Xdim, Zdim){
    for (x =[6:11.2:Xdim-12]){
        for (z =[6:11.2:Zdim-12]){
        
        translate([x,-0.2,z])cube([10,0.4,10]);
        }
        }
    
        
}

module nuttrap(){
    rotate([0, 180, 0]) difference(){
        union(){ 
            translate([-4.25,-7.5,0]) difference(){
            translate([0,0,0]) cube([8.5, 9, 3]);
            rotate([45,0,0]) cube([11.5,5.7,5.7]);
        }
    }
    translate([0,0, -0.2])rotate([0,0,30]) cylinder(r=3.5,h=15-1.5, $fn=6);
  }
}

module PSU_COVER()
{
difference(){
union(){
    
translate([0,0,-0.46])cube([95,50+15,54.25]); // Base

translate([0,0,-3.5])cube([14-0.5,50+15,5]); // Back pillar 1

translate([60-0.5,0,-3.5])cube([14,50+15,5]); // Back pillar 2

translate([91+4,0,-0.46])cube([6,50+15,54.25]); // Base for bracket

translate([-2,45.4-4.6,19])cube([2,3,15]); // nipple on the right


translate([-1.6,0,0])cube([1.65,65,2]); // Frame skirt 1
translate([-1.6,0,0])cube([1.65,30,53.78]); // Frame skirt 2
translate([-1.6,0,51.32])cube([1.65,65,2.46]); // Frame skirt 3
  
}


//pretty corners
translate([-11,-2,-2])rotate([0,0,-45])cube([10,10,58]);
translate([95-3+5+1,-2,-2])rotate([0,0,-45])cube([10,10,58]);

translate([-3,-9,-4.46])rotate([-45,0,0])cube([130,10,10]);
translate([-3,-12,54.78])rotate([-45,0,0])cube([130,10,10]);

translate([-3,45+15,-4.46])rotate([-45,0,0])cube([130,10,10]);
translate([-3,48+15,54.78])rotate([-45,0,0])cube([130,10,10]);

translate([95-3+3,70,-2])rotate([0,0,-45])cube([10,10,58]);


translate([95,0-10,-20])rotate([0,-45,-45])cube([20,20,20]);
translate([95,0-10,45])rotate([0,-45,-45])cube([20,20,20]);


translate([95,60,-10])rotate([-35,-45,-45])cube([20,20,20]);
translate([95,60,65])rotate([-55,48,-48])cube([20,20,20]);

translate([79,-5,67.28])rotate([0,45,0])cube([20,90,20]);

translate([79,-5,-13.96])rotate([0,45,0])cube([20,90,20]);


translate([-14,-5,67.28])rotate([0,45,0])cube([20,90,20]);

translate([3,2,2])cube([89.02,50.02+15,50.02-0.7]); // main cutout

translate([-3,50-16.4+15,2])cube([100,16.5,50-0.7]); // insert cutout

translate([-3,50-16.4-15.6+15,2])cube([10,100,17]); // right bottom cutout

translate([85+2,50-16.4-17.6+15+0.9,2])cube([10,100,50-0.7]); // left bottom cutout

translate([85+2,10,2])rotate([0,0,45]) cube([10*sqrt(2),10*sqrt(2),50-0.7]);
translate([85+2,2,2]) cube([10,18,50-0.7]);

translate([-3,50-16.4-17.6+15+0.9,2])cube([100,100,10]); //  bottom cutout

translate([5.5,0,0]){
translate([45,2,40])cube([27.5,31.9,30]); // socket cutout
translate([45-4.5,2+15.6,40])cylinder(r=2,h=50, $fn=8); // socket right hole cutout
translate([45-4.5+37-0.5,2+15.6,40])cylinder(r=2,h=50, $fn=8); // socket left hole cutout

translate([1,2,44])cube([20,14,30]); // switch cutout

translate([45-4.5+37-0.5,2+15.6,39.1]) rotate([0,0,30]) cylinder(r=3.25,h=15-2.8, $fn=6); // socket left hole cutout nuttrap
translate([45-4.5,2+15.6,39.1]) rotate([0,0,30]) cylinder(r=3.25,h=15-2.8, $fn=6); // socket left hole cutout nuttrap
}

translate([7-0.5-0.5,40-1+15+0.7,-10])cylinder(r=2,h=50,$fn=15); //  left back mounthole cutout
translate([7-0.5-0.5,40-1+15+0.7,-3.7])cylinder(r2=2, r1=3.5,h=1.5,$fn=15);

translate([67.5-0.7-0.5,43.5-1+15+0.5,-10])cylinder(r=2,h=50,$fn=15); //  right back mounthole cutout
translate([67.5-0.7-0.5,43.5-1+15+0.5,-3.7])cylinder(r2=2, r1=3.5,h=1.5,$fn=15);


translate([130,32+26,55-4-25])rotate([0,-90,0])cylinder(r=2.5,h=50,$fn=35); // Left side bracket screw hole
translate([101.1,32+26,55-4-25])rotate([0,-90,0])cylinder(r2=2.5, r1=4.1,h=3,$fn=15);
translate([-0.3,0,-1.2])CubeAdjust(102,54.25);

for(i=[0:9]){
translate([20+i,6.5,-10])cylinder(r=3.5,h=50); //  left back mounthole cutout
}


}
}

module PSU_Y_REINFORCEMENT()
{
difference()
{
    union()     // base shape
        {
            translate([ 59.5, 0, -18 ]) cube([ 33, 6, 19 ]);  // reinforcement plate
            translate([ 73.5, 5, -18 ]) cube([ 5, 16, 19 ]);  // vertical_reinforcement    
        }
    union ()    // cutouts
        {
            
            
            // corner cuts
            translate([ 87.5, -8, -20 ]) rotate([ 0, 45, 0 ]) cube([ 10, 20, 10 ]);  //corner cut
            translate([ 52.5, -8, -20 ]) rotate([ 0, 45, 0 ]) cube([ 10, 20, 10 ]);  //corner cut
            
            // angled vertical support
            translate([ 68.5, 20, -34 ]) rotate([ 45, 0, 0 ]) cube([ 15, 23, 20 ]);  //vertical reinf cutout
            
            // bottom surface cuts
            translate([ 66.2, -0.2, -5])cube([23.6, 0.4, 5.6]);
            translate([ 68 + 1.8 +2.6, -0.2, -7.7 -5.6])cube([11.2, 0.4, 5.6]);
            
            
            translate([ 88, 8, -11.5 ]) rotate([ 90, 0, 0]) cylinder( h = 10, r = 1.8, $fn=30 );  //hole A
            translate([ 68, 8, -11.5 ]) rotate([ 90, 0, 0 ]) cylinder( h = 10, r = 1.8, $fn=30 );  //hole B
            
            translate([ 88, 8, -9.5 ]) rotate([ 90, 0, 0]) cylinder( h = 10, r = 1.8, $fn=30 );  //hole A
            translate([ 68, 8, -9.5 ]) rotate([ 90, 0, 0 ]) cylinder( h = 10, r = 1.8, $fn=30 );  //hole B
            
            translate([ 86.2, -10, -11.5 ]) cube([ 3.6, 20, 2 ]);  // hole cut extension
            translate([ 66.2, -10, -11.5 ]) cube([ 3.6, 20, 2 ]);  // hole cut extension
            
            
            
        }
}
}


module FINAL_PART(){
    union()
        {
            PSU_COVER();
            PSU_Y_REINFORCEMENT();
            translate([82.5,2+15.6,39.1+13.5]) nuttrap();
            translate([46,2+15.6,39+13.5]) nuttrap();
        }   
}

FINAL_PART();

