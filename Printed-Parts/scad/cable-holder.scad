// PRUSA iteration3
// Cable holder
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module cable_holder()
{
    
    difference()
    {
    
    union()
    {
        // body
        translate([-21.1,3,35]) cube([2.5,13,13]);
        difference()
        {
        translate([-21.1,3,35]) rotate([-15,0,0]) cube([2.5,7,35]);
        rotate([-15,0,0]) translate([-21,0,38]) rotate([0,0,45]) cube([2.5,2.5,35]);
        }
        
        //round reinforcement
        difference()
        {
        translate([-21.1,16,50]) rotate([0,90,0])cylinder(r=4, h=2.5, $fn=50); 
        translate([-22,16,50]) rotate([0,90,0])cylinder(r=1.7, h=4, $fn=50); 

        translate([-21.6,16,45]) cube([4,10,10]);        
        translate([-21.6,12,50]) cube([4,10,10]);        
            
        }
    }
    
    // side angle cut
    translate([-22,-1.5,38]) rotate([-11,0,0]) cube([5,7,45]);
    
    // side cut
    translate([-22,-2,33]) cube([8,8,12]);

    // angled side cut
    rotate([-15,0,0]) translate([-18,-8,39]) rotate([0,0,45]) cube([3.5,2.5,35]);
    
    //zipties
    translate([-25,15,42]) rotate([0,0,-45]) cube([3,10,3]);
    translate([-20,2,42]) rotate([0,0,45]) cube([3,10,3]);
    translate([-25,15,36]) rotate([0,0,-45]) cube([3,10,3]);
    translate([-20,2,36]) rotate([0,0,45]) cube([3,10,3]);
    
    // M3 screw
    translate([-18.5,11,19]) rotate([0,0,0])cylinder(r=1.52, h=23, $fn=50); 
    translate([-18.5,11,42]) rotate([0,0,0])cylinder(r=3, h=3, $fn=50);     
    
    // bottom cut
    translate([-21.6,-9,25]) cube([4,26,10]);
    
    
    //selective infill
    translate([-20.8,11.5,46]) rotate([-15,0,0]) cube([2,0.4,10]);
    translate([-20.8,10,46]) rotate([-15,0,0]) cube([2,0.4,18]);
    translate([-20.8,8.5,46]) rotate([-15,0,0]) cube([2,0.4,10]);
    
    }
    
    
    
    
       
}

 
 

cable_holder();
translate([0,40,0]) rotate([0,180,180]) mirror([0,0,1]) cable_holder();