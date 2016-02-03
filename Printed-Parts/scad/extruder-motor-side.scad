use <main.scad>
difference(){
mirror([1,0,0]) extruder_body();
// carriage mount

translate([-35/2+12,6.5,3.5])cylinder(r=1.65, h=20, $fn=30);
translate([-35/2-12,6.5,3.5])cylinder(r=1.65, h=20, $fn=30);

translate([-35/2+12,6.5,-0.01])cylinder(r=3.1, h=3, $fn=30);
translate([-35/2-12,6.5,-0.01])cylinder(r=3.1, h=3, $fn=30);
    
translate([-21,-21,0]){
           translate([-15.5,-15.5,-1]) cylinder(r=1.65, h=20, $fn=30);
           translate([-15.5,15.5,-1]) cylinder(r=1.65, h=20, $fn=30);
           translate([15.5,-15.5,-1]) cylinder(r=1.65, h=20, $fn=30);
           translate([15.5,15.5,-1]) cylinder(r=1.65, h=20, $fn=30);
           }
}

//use <idler.scad>
//translate([-11,-1,15]) rotate([0,90,0]) rotate([0,0,180]) idler();