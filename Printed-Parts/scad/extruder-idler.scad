module idler(){
difference(){
union(){
translate([0,4,6])rotate([0,90,0]) cylinder(r=4, h=14, $fn=200, center=true);
translate([0,4,4])rotate([0,90,0]) cylinder(r=4, h=14, $fn=200, center=true);

translate([(-14/2) ,4,0])cube([19-5,10,10]);
translate([-14/2,0,4])cube([14,32,2]);
translate([-5,4,3])cube([10,48,7]);


translate([0,48+4,3.5+3])rotate([0,0,0]) cylinder(r=5, h=7, $fn=200, center=true);
//translate([0,48+4,3.5+3])rotate([0,0,0]) sphere(r=5, h=14, $fn=200, center=true);    


translate([-11,11,0])cube([22,28,10]);
translate([-9,11,0])cube([18,30,10]);
    
    translate([7+2,39,0])cylinder(r=2, h=10, $fn=25);
    translate([-7-2,39,0])cylinder(r=2, h=10, $fn=25);
}

translate([0,4,6])rotate([0,90,0]) cylinder(r=1.7, h=20, $fn=200, center=true);

//bolt holes
translate([7.5,35.8,-1])cylinder(r=1.75, h=12, $fn=20);
translate([7.5,36.5,-1])cylinder(r=1.75, h=12, $fn=20);
translate([7.5,37.2,-1])cylinder(r=1.75, h=12, $fn=20);

translate([-7.5,35.8,-1])cylinder(r=1.75, h=12, $fn=20);
translate([-7.5,36.5,-1])cylinder(r=1.75, h=12, $fn=20);
translate([-7.5,37.2,-1])cylinder(r=1.75, h=12, $fn=20);

translate([0,20,3]){
rotate([0,90,0]){
cylinder(r=17/2, h=7.5, $fn=200, center=true);
%cylinder(r=16/2, h=7.5, $fn=200, center=true);
cylinder(r=2.5, h=17, $fn=200, center=true);
}
translate([0,0,-5])cube([17,5,10], center=true);
translate([0,0,-5])cube([7.5,17,10], center=true);
}
}
}

translate([0,0,10]) mirror([0,0,1]) idler();