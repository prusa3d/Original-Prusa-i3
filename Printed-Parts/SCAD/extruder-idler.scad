// PRUSA iteration4
// extruder idler
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module nut_bp(diameter,head,layer)
{
    difference()
    {
        cylinder(h = 2, r=head, $fn=6);
        
        translate([-5-diameter,-5,2-layer*2])cube([5,10,2]);
        translate([diameter,-5,2-layer*2])cube([5,10,2]);
        translate([-5,-5-diameter,2-layer])cube([10,5,2]);
        translate([-5,diameter,2-layer])cube([10,5,2]);
    }
    cylinder(h = 5, r=diameter, $fn=40);
}
    

module idler()
{
    difference()
    {
        union()
        {
            translate([6,-33.5,-15]) cube([10.5,30,25.5]); 
            translate([11.5,-5,-16.5]) cylinder(h = 27, r=5, $fn=60); 
            translate([11.5,-4,-10]) cube([5,4,20.5]); 
            
            translate([4,-24.7,-15]) cube([10.5,8.4,16]); 
            translate([4,-24.70,-9]) cube([10.5,8.4,16]); 
            translate([4,-20.5,-15]) cylinder(h = 18, r=4.2, $fn=60);
            translate([4,-20.5,2]) cylinder(h = 5, r=4.2, $fn=60);
        }
        
        // turn around screw
        translate([11.5,-5,-25]) cylinder(h = 40, r=1.7, $fn=60); 
        
        // bondtech shaft
        translate([4,-20.5,-25]) cylinder(h = 40, r=1.5, $fn=60);
        
        // bontech space
        translate([4,-20.5,-11.2]) cylinder(h = 14.4, r=5, $fn=60);
        translate([4,-20.5,-11.2]) cylinder(h = 5, r=5.5, $fn=60);
        
        translate([-13.8,-13,-20]) rotate([0,0,-8]) cube([20,20,35]);  
        translate([-5.76,-40.88,-20]) rotate([0,0,-36]) cube([20,20,35]);  
        
        translate([-2,-44.7,-20]) cube([10,20,35]);  
 
        
        // tension screw
        translate([-20,-28,-4]) rotate([0,90,0]) cylinder(h = 60, r=1.7, $fn=60);
        translate([0,-28,-4]) rotate([0,90,0]) cylinder(h = 10, r2=1.7, r1=3, $fn=60);
        translate([2,-27,-4]) rotate([5,90,0]) cylinder(h = 10, r2=1.7, r1=3, $fn=60);
        
        translate([13.2,-28,-4]) rotate([0,90,0]) cylinder(h = 5, r=3.1, $fn=6);
        translate([14.6,-28,-4]) rotate([0,-90,0]) nut_bp(1.7,3.1,0.3);
        
        translate([15,-28,-4]) rotate([0,90,0]) cylinder(h = 2.5, r1=3.1,r2=3.6, $fn=6);
        translate([5.5,-28,-4]) rotate([0,90,0]) cylinder(h = 7, r2=1.7, r1=2.5, $fn=30);
        
        translate([0,-16,-2.9]) rotate([0,90,0]) rotate([0,0,90])cylinder(h = 25, r=7, $fn=6);
        
        translate([11.5,-5,-17]) cylinder(h = 7, r=5.5, $fn=60); 
        translate([5,-9,-17]) cube([15,10,7]); 
        translate([-3,-10.5,-17]) cube([15,10,7]); 
        
        //edge
        translate([19,-5,-18]) rotate([0,0,45]) cube([20,20,30]);
                
        // motor rim
        translate([-4,-20.5,7]) cylinder(h = 4, r=13.0, $fn=60);  
        
        // cleanup
        translate([-12,-30,-11.2]) cube([20,10,14.4]);
    }
    
    difference()
    {
        union()
        {
            translate([8,-28,-4]) rotate([0,90,0]) cylinder(h = 8, r=4, $fn=60);
            translate([15.0,-32.5,-15]) cube([1.5,2,25.5]);  
        }
        
        translate([13.2,-28,-4]) rotate([0,90,0]) cylinder(h = 5, r=3.1, $fn=6);
        translate([14.6,-28,-4]) rotate([0,-90,0]) nut_bp(1.7,3.1,0.3);
        
        translate([15,-28,-4]) rotate([0,90,0]) cylinder(h = 2.5, r1=3.1,r2=3.6, $fn=6);
        translate([-5,-46,-20]) rotate([0,0,-36]) cube([20,20,35]);  
        
        translate([2,-28,-4]) rotate([0,90,0]) cylinder(h = 10, r2=1.7, r1=3, $fn=60);
        translate([2,-27,-4]) rotate([5,90,0]) cylinder(h = 10, r2=1.7, r1=3, $fn=60);
        
    }
    
}
rotate([0,90,0]) idler();