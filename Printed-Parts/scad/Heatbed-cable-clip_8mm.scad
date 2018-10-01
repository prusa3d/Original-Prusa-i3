// PRUSA iteration4
// Heatbed cable clip
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


 module heatbed_cable_clip()
{
    
difference()
{    
    
    union()
    {
        difference()
        {
            union()
            {
                // body base
                translate([75,99,28]) rotate([90,0,0]) cylinder( h = 15, r = 13, $fn=30); 
                translate([75,101,28]) rotate([90,0,0]) cylinder( h = 2, r1=9,r2 = 13, $fn=30); 
                
            }

             
           
            
            // cut flat and shape
            translate([60,82,14]) cube([30,20,14]);  
            translate([60,72,20]) cube([30,20,30]); 
        }
         
        
        difference() {
        translate([62.75,84,28]) cube([24.5,8,7]);
        difference () {
        translate([75,85,28]) rotate([90,0,0]) cube([30,20,10], center = true);    
        translate([75,90,28]) rotate([90,0,0]) cylinder(h=6,r1=16.5,r2=11,$fn=30);   
           
        } 
    }}
    
    // cable opening
    translate([61,102,28]) rotate([35,90,0])
    
    difference (){
   
    cylinder(h=35,r=5,$fn=30);
       
    
    //translate([0,0,3]) cylinder(h=5,r=5,$fn=30);
    translate([0,0,12]) cylinder(h=1,r=5,$fn=30); 
    translate([0,0,16]) cylinder(h=1,r=5,$fn=30); 
    translate([0,0,20]) cylinder(h=1,r=5,$fn=30);
   
    }
     translate([61,102,28]) rotate([35,90,0]) cylinder(h=35,r=4.3,$fn=30);
    
  
    
    // screw heads
    translate([67,88.8,30.5]) rotate([0,0,0]) cylinder(h=10,r=3.2,$fn=30); 
    translate([83,96,31]) rotate([0,0,0]) cylinder(h=10,r=3.2,$fn=30); 
    
    
    // screws
            translate([67,88.8,14]) rotate([0,0,0]) cylinder(h=35,r=1.6,$fn=50); 
            translate([83,96,14]) rotate([0,0,0]) cylinder(h=35,r=1.6,$fn=50);
    

    
    
    
}


    

} 

translate([-70,-110,0]) heatbed_cable_clip();
