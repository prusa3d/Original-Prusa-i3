//translate([0,0,0]) cylinder(r=1.5, h=40, $fn=30); 
//translate([0,0,20]) cylinder(r=3.1, h=4, $fn=30); 

//translate([0,-4,0]) cube([3,10.0,25]);
module zip()
{
translate([-5,-8,0]) cube([10,4,4]);    
translate([-12.5,-5,0]) cube([10,20.0,4]);    
translate([2.5,-5,0]) cube([10,20.0,4]);     
translate([2,-6,0]) rotate([0,0,45]) cube([5,2,4]);    
translate([-6,-2.4,0]) rotate([0,0,-45]) cube([5,2,4]);    
}

difference()
{
    union()
    {
        translate([0,5,0]) cylinder(r=10, h=25, $fn=30); 
        translate([-3,-9,0]) cube([6,10,25]);    
    }
    
    translate([0,10,-1]) cylinder(r=6, h=50, $fn=30); 
    translate([0,0,-1]) cylinder(r=1.6, h=50, $fn=30);
    translate([3,-5,-1]) cube([10,20.0,50]);    
    translate([-13,-5,-1]) cube([10,20.0,50]);    
    
    translate([-10,-18,-1]) rotate([-10,0,0]) cube([20,10,50]);    
    
    translate([0,-3.1,3]) rotate([-10,0,0]) zip();   
    translate([0,-1.8,10.5]) rotate([-10,0,0]) zip();  
    translate([0,-0.5,18]) rotate([-10,0,0]) zip();  

    translate([-13,-9,-10]) rotate([45,0,0]) cube([30,10.0,10]);    
    translate([-13,-9,20.5]) rotate([35,0,0]) cube([30,10.0,10]);    
    
}