

module part_body(){
    
    //bottom round edge
    translate([ -7, 4, 6 ]) rotate([0,90,0]) cylinder(r=4, h=21.5, $fn=200 );
    translate([ -7, 4, 4 ]) rotate([0,90,0]) cylinder(r=4, h=21.5, $fn=200 );

    translate([ 11, 8, 4 ])  cube([3.5,4,6]);
    
    difference()
    {
        translate([ -7, 0, 4 ])  cube([21.5,5,6]);
        translate([ -8, -1, 8 ])  rotate([45,0,0]) cube([25,5,6]);
    }
    
    translate([ -7, 8, 4 ]) rotate([0,90,0]) cylinder(r=4, h=21.5, $fn=200 );

    translate([ 11, 0, 4]) cube([3.5,12,2]);
    
    translate([ 11, 4, 8]) cube([3.5,4,2]);
    translate([ 11, 4, 0]) cube([3.5,4,2]);
    

    // body
    translate([ -7, 4, 0 ]) cube([18,10,10]);
    translate([ -7, 0, 4 ]) cube([18,32,2]);
    translate([ -5, 4, 3 ]) cube([10,48,7]);
    translate([ -11, 11, 0 ]) cube([22,28,10]);
    translate([ -9, 11, 0 ]) cube([18,30,10]);

    // upper round edges    
    translate([ 9, 39, 0 ]) cylinder(r=2, h=10, $fn=25);
    translate([ -9, 39, 0 ]) cylinder(r=2, h=10, $fn=25);
        
    // upper round piece
    translate([ 0, 52, 6.5 ]) rotate([0,0,0]) cylinder(r=5, h=7, $fn=200, center=true);
    }    

module cut_away(){

    // axis
    translate([ 0, 4, 6 ]) rotate([0,90,0]) cylinder(r=1.7, h=30, $fn=200, center=true); 

    // bolt holes
    translate([ 7.5, 35.8, -1 ]) cylinder(r=1.75, h=12, $fn=20);
    translate([ 7.5, 36.5, -1 ]) cylinder(r=1.75, h=12, $fn=20);
    translate([ 7.5, 37.2, -1 ]) cylinder(r=1.75, h=12, $fn=20);

    translate([ -7.5, 35.8, -1 ])cylinder(r=1.75, h=12, $fn=20);
    translate([ -7.5, 36.5, -1 ])cylinder(r=1.75, h=12, $fn=20);
    translate([ -7.5, 37.2, -1 ])cylinder(r=1.75, h=12, $fn=20);
    
    translate([0,52,0]) sphere(r=5, $fn=20);
    
    //bearing hole
    translate([ 0, 20, 3 ]){
        rotate([0,90,0]){
            cylinder(r=8.5, h=7.5, $fn=200, center=true);
            %cylinder(r=8, h=7.5, $fn=200, center=true);
            cylinder(r=2.5, h=17, $fn=200, center=true);
            }
        translate([0,0,-5]) cube([17,5,10], center=true);
        translate([0,0,-5]) cube([7.5,17,10], center=true);
    }
}

module idler(){
    
    // final part
    translate([0,0,10]) mirror([0,0,1])
    difference(){
        part_body();
        cut_away();
    }    
}
    
idler();