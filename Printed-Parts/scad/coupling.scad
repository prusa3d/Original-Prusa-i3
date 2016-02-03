center=6;
line=0.65;
dia = (center+6*line)/2;
difference(){
cylinder(r=dia, h=30, $fn=65);
translate([0,0,-1])cylinder(r=center/2, h=32, $fn=65);
translate([0.5,0.5,-1])cube([10,10,40]);
}