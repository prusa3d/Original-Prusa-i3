// PRUSA iteration3
// LCD Knob
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

difference () {

// main body

translate([0,0,0]) rotate(a=[0,0,0]) cylinder(h = 7.5, r1=10, r=7.25, $fn=60);

translate([0,0,20]) rotate(a=[0,0,0]) sphere(14);

// knob cutout
translate([0,0,-0.1]) rotate(a=[0,0,0]) cylinder(h = 4.6, d=6.1, $fn=60);
    
translate([0,0,-0.1]) rotate(a=[0,0,0]) cylinder(h = 0.6, d1=7.1, d2=6.1 , $fn=30); 
    
translate([0,0.75,-0.1]) rotate(a=[0,0,-90]) cube([1.5,5.3,4.6]);

// first layer correction
union () {

difference (){    
translate([0,0,-0.1]) rotate(a=[0,0,0]) cylinder(h = 2,d1= 11.5, d2=10.5, $fn=60);
translate([0,0,-0.15]) rotate(a=[0,0,0]) cylinder(h = 2,d1= 9.5, d2=10.5, $fn=60);
translate([0,0,1]) rotate(a=[0,0,0]) cylinder(h = 2,d= 13, $fn=30);
    translate([-13.5,-6,-0.1]) rotate(a=[0,0,0]) cube([10,12,4.6]);
}
}      
    

difference () {

translate([0,0,-0.1]) rotate(a=[0,0,0]) cylinder(h = 4.6, d=11, $fn=60);
translate([0,0,-0.1]) rotate(a=[0,0,0]) cylinder(h = 4.6, d= 10, $fn=60);
translate([-13.5,-6,-0.1]) rotate(a=[0,0,0]) cube([10,12,4.6]);
    
    }    
    
    
    
    }

// handle
 
difference () {

translate([-2.1,6.5,0]) rotate(a=[0,0,0]) cube([4.2,12,7.5]);
translate([-2.5,15,7.7]) rotate(a=[-67,0,0]) cube([5.5,11,7.5]);
translate([-2.2,18.22,-0.1]) rotate(a=[0,0,0]) cube([4.4,12,0.21]);    
    
}

