// PRUSA iteration4
// Heatbed cable cover MK3S
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module m3_nut()
{
    difference()
    {
        union()
        {
            cylinder( h = 4, r = 3.15, $fn=6);  
            translate([0,0,2.5]) cylinder( h = 4, r1 = 3.15, r2=4,$fn=6);  
            translate([0,0,-9])  cylinder( h = 12, r = 1.7, $fn=30);  
            translate([0,0,-0.49]) cylinder( h = 0.5, r1 = 1.7, r2=1.95,$fn=30);  
        }
        translate([1.7,-5,-1]) cube([5,10,2]); 
        translate([-6.7,-5,-1]) cube([5,10,2]); 
        
        translate([-5,1.7,-1.5]) cube([10,5,2]); 
        translate([-5,-6.7,-1.5]) cube([10,5,2]); 
        
    }
    
}

module m3_head()
{
      // heatbed screw
        difference()
        {
              
               
                translate([0,0,5])   cylinder(h=4,r=3.15, $fn=50);  
     
                translate([-11.7,-7.5,0.8]) cube([10,40,5.7]);
                translate([1.7,-7.5,0.8]) cube([10,40,5.7]);
                translate([-5,-4.2-7.5,0.8]) cube([10,10,6]);
                translate([-5,9.2-7.5,0.8]) cube([10,10,6]);
            
                translate([-2,-7.5,0.4]) cube([10,40,5.7]);
                
            
        }
        translate([0,0,-1]) cylinder(h = 10, r=1.7, $fn=50);    
        translate([0,0,8.2]) cylinder(h = 2, r1=3.15, r2=4, $fn=50);    
    }
  

module cover()
{
    
    
    difference()
    {
        
        

        // base block
        translate([-18,0,0]) cube([36,36,9]);
        
        // inner cut
        difference()
        {
            translate([-15,-0.5,-3]) cube([30,16,9]);
            translate([0,7.5,4]) rotate(90, v = [0,0,1]) cylinder(h = 2.2, r=2.75, $fn=50);   
        }
        translate([-0,37,3]) rotate([90,0,0]) cylinder(h = 15, r=3.3, $fn=60);    
        translate([-15,15,-6]) cube([30,22,9]);

        // inner edges
        translate([3.5,2,0]) rotate([0,0,0])  cube([10.5,15,6]);
        translate([-14,2,0]) rotate([0,0,0])  cube([10.5,15,6]);
        
        translate([2.5,15,0]) rotate([0,0,0])  cube([8,8,6]);
        translate([-10.5,15,0]) rotate([0,0,0])  cube([8,8,6]);
        
        translate([6.96,19.45,0]) rotate([0,0,45])  cube([5,10,6]);
        translate([-6.96,19.45,0]) rotate([0,0,45])  cube([10,5,6]);
        
        translate([3.96,18.45,0]) rotate([0,0,20])  cube([5,6,6]);
        translate([-3.96,18.45,0]) rotate([0,0,70])  cube([6,5,6]);
        
        
        
        translate([-0,20,0.5]) rotate([90,0,0]) cube([11,11,11], center = true);
        
        translate([2,14,-1]) rotate([0,0,10])  cube([8,13,6]);
        translate([-9.88,15.21,-1]) rotate([0,0,-10])  cube([8,13,6]);
        
        // outer edges
        translate([-18.0,32,-1]) rotate([0,0,25])  cube([11,11,11]);
        translate([18,32,-1]) rotate([0,0,65])  cube([11,11,11]);

        // heatbed terminal screw pockets
        translate([8.5,7.5,0]) cylinder(h = 8.6, r=3.25, $fn=50);    
        translate([-8.5,7.5,0]) cylinder(h = 8.6, r=3.25, $fn=50); 


        // clip nuts with print supports
        translate([11,30,0] ) m3_head();
        translate([-11,30,0] ) m3_head();
        
        // hold screw
        translate([0,7.5,0]) m3_head();

        // LED window
        translate([-2.5,-1,-4]) cube([5,3.5,10]);
        translate([-14,-4,-6]) rotate([0,0,45]) cube([5,5,10]);
        translate([14,-4,-6]) rotate([0,0,45]) cube([5,5,10]);

        // edges
        translate([-20,-0,6.5]) rotate([45,0,0]) cube([40,5,5]);
        translate([-23.3,-1,9.7]) rotate([0,45,0]) cube([6,45,6]);
        translate([14.8,-1,9.7]) rotate([0,45,0]) cube([6,45,5]);
        

}

    // heatbed pcb support
    translate([-17,0,4]) cube([3,20,2]);
    translate([14,0,4]) cube([3,20,2]);
    translate([-17,0,4]) cube([14,2,2]);
    translate([3,0,4]) cube([14,2,2]);

}


rotate([0,180,0]) cover();





