use <main.scad>
difference(){
mirror([0,0,0])  extruder_body();
       

// carriage mount

translate([35/2+12,6.5,-0.01])cylinder(r=1.65, h=20, $fn=30);
translate([35/2-12,6.5,-0.01])cylinder(r=1.65, h=20, $fn=30);

    
translate([21,-21,0]){
           translate([-15.5,-15.5,4]) cylinder(r=1.65, h=20, $fn=30);
           translate([-15.5,15.5,4]) cylinder(r=1.65, h=20, $fn=30);
           translate([15.5,-15.5,4]) cylinder(r=1.65, h=20, $fn=30);
           translate([15.5,15.5,4]) cylinder(r=1.65, h=20, $fn=30);
           
           translate([-15.5,-15.5,-1]) cylinder(r=3.1, h=4.5, $fn=30);
           translate([-15.5,15.5,-1]) cylinder(r=3.1, h=4.5, $fn=30);
           translate([15.5,-15.5,-1]) cylinder(r=3.1, h=4.5, $fn=30);
           translate([15.5,15.5,-1]) cylinder(r=3.1, h=4.5, $fn=30);
      
           }
}