// PRUSA iteration4
// Heatbed cable cover clip MK3S
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


module clip()
{
    
    difference()
    {
        // base body
        translate([-15,15.5,-3]) cube([30,20.5,6]); 
        
        // inner angled cut
        translate([3.5,2,0]) rotate([0,0,0])  cube([10.5,15,6]);
        translate([-14,2,0]) rotate([0,0,0])  cube([10.5,15,6]);
        
        translate([3.5,15,0]) rotate([0,0,0])  cube([7,8,6]);
        translate([-10.5,15,0]) rotate([0,0,0])  cube([7,8,6]);
       
        translate([6.96,19.45,1]) rotate([0,0,45])  cube([5,10,6]);
        translate([-6.96,19.45,1]) rotate([0,0,45])  cube([10,5,6]); 
        
        translate([-0,37,3]) rotate([90,0,0]) cylinder(h = 17, r=3.5, $fn=60);
            
        translate([-7,15,0]) rotate([0,0,0])  cube([14,11,6]);
       
        translate([3,14,1]) rotate([0,0,10])  cube([7,13,6]);
        translate([-9.88,15.21,1]) rotate([0,0,-10])  cube([7,13,6]); 
        
        // cables cut
        translate([-0,36,3]) rotate([90,0,0]) cylinder(h = 187, r=4, $fn=60); 
       
        translate([-11,30,0]) rotate([0,180,30]) m3_nut();
        translate([11,30,0]) rotate([0,180,30]) m3_nut();
       
        // thermistor cable entry
        translate([-0,22,4]) rotate([115,0,0]) cylinder(h = 15, r=3, $fn=60);     
    
    
        // edges  
        translate([-18.0,32,-5]) rotate([0,0,25])  cube([11,11,15]);
        translate([18,32,-5]) rotate([0,0,65])  cube([11,11,15]);
     
    }
    
    // cable rims
    difference()
    {
        difference()
        {
            translate([-0,36,3]) rotate([90,0,0]) cylinder(h = 10, r=4.5, $fn=60); 
            translate([-0,37,3]) rotate([90,0,0]) cylinder(h = 17, r=3, $fn=60);
            
        }
        translate([-15,18,3]) cube([30,20,6]);    
        translate([-15,27,-5]) cube([30,2,16]);    
        translate([-15,30,-5]) cube([30,2,16]);    
        translate([-15,33,-5]) cube([30,2,16]); 
        translate([6.96,19.45,1]) rotate([0,0,45])  cube([5,10,6]);
        translate([-6.96,19.45,1]) rotate([0,0,45])  cube([10,5,6]); 
        translate([-4,20,0]) rotate([0,0,0])  cube([8,11,6]); 
        
    }
       
}


  


clip();






