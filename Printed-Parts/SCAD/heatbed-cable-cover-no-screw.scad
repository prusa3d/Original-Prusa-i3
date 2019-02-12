// PRUSA iteration4
// Heatbed cover
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org



module cover()
{
    difference()
    {
        // base block
        translate([-18,0,0]) cube([36,32,8.6]);
        
        // inner cut
        translate([-15,-0.5,-3]) cube([30,16.5,9]);
        translate([-0,33,3]) rotate([90,0,0]) cylinder(h = 15, r=3.3, $fn=60);    
        translate([-15,15,-6]) cube([30,19,9]);

        // inner edges
        translate([-4,4.5,0]) rotate([0,0,45])  cube([15,15,6]);
        translate([4.0,4.51,0]) rotate([0,0,45])  cube([15,15,6]);
        
        // outer edges
        translate([-18.0,25,-1]) rotate([0,0,45])  cube([11,11,10]);
        translate([18,25,-1]) rotate([0,0,45])  cube([11,11,10]);

        // screw holes for clip
        translate([-10,25,0]) cylinder(h = 10, r=1.7, $fn=50);    
        translate([10,25,0]) cylinder(h = 10, r=1.7, $fn=50);    


        // clip nuts entry
        translate([-10,25,8]) cylinder(h = 4, r1=3.15, r2=6, $fn=6);    
        translate([10,25,8]) cylinder(h = 4, r1=3.15, r2=6, $fn=6);    

        // clip nuts with print supports
        difference()
        {
        union()
            {
                
             
             translate( [ -10 , 25 , 5.65 ] ){
    cylinder( h = 4, r = 3.15, $fn=6);  
   
             }
 
 
 
 translate( [ 10 , 25 , 5.65 ] ){
    cylinder( h = 4, r = 3.15, $fn=6);  
    }  
 
 
    
            }
            translate([-8.3,0,0.25]) cube([16.6,40,5.7]);
            translate([-16.7,0,0.25]) cube([5,40,5.7]);
            translate([11.7,0,0.25]) cube([5,40,5.7]);
            translate([-20,13.3,0.25]) cube([70,10,6]);
            translate([-20,26.7,0.25]) cube([70,10,6]);
        
        }
    // pcb nut     
        difference()
        {
        union()
            {  
                
                translate( [ 0 , 7.5 , 5.5 ] ){
    cylinder( h = 4, r = 3.15, $fn=6);  
     
    }  
              
                
            }
            translate([-11.7,0,0.8]) cube([10,40,5.5]);
            translate([1.7,0,.8]) cube([10,40,5.5]);
            translate([-5,-4.2,1.1]) cube([10,10,5.5]);
            translate([-5,9.2,1.1]) cube([10,10,5.5]);
        }
         
        
    // heatbed screw    
    translate([0,7.5,8]) cylinder(h = 4, r1=3.15, r2=6, $fn=6);    
    translate([0,7.5,3]) cylinder(h = 6, r=1.7, $fn=50);    

    // LED window
    translate([-2.5,-1,-4]) cube([5,3.5,10]);
    translate([-14,-4,-6]) rotate([0,0,45]) cube([5,5,10]);
    translate([14,-4,-6]) rotate([0,0,45]) cube([5,5,10]);

    // edges
    translate([-20,-0,6.5]) rotate([45,0,0]) cube([40,5,5]);
    translate([-23,-1,8.5]) rotate([0,45,0]) cube([5,45,6]);
    translate([15.8,-1,8.7]) rotate([0,45,0]) cube([6,45,5]);
    translate([30,12,8.7]) rotate([0,45,45]) cube([6,45,5]);
    translate([-40.6,12,9.7]) rotate([0,45,-45]) cube([6,45,5]);
}

    // heatbed pcb support
    translate([-17,0,4]) cube([3,20,2]);
    translate([14,0,4]) cube([3,20,2]);
    translate([-17,0,4]) cube([14,2,2]);
    translate([3,0,4]) cube([14,2,2]);


    // heatbed screw body
    difference()
    {
        translate([0,7.5,4]) cylinder(h = 2.1, r=5, $fn=6);    
        translate([0,7.5,6.05]) cylinder(h = 4, r=3.15, $fn=6);    
        translate([0,7.5,3]) cylinder(h = 7, r=1.7, $fn=50);    
    }

 
}





module clip()
{
    
    difference()
    {
        // base body
        translate([-15,15.5,-3]) cube([30,16.5,6]);    
        
        // cables cut
        translate([-0,33,3]) rotate([90,0,0]) cylinder(h = 15, r=4, $fn=60); 
    
        // screws
        translate([-10,25,-3]) cylinder(h = 10, r=1.7, $fn=50);    
        translate([10,25,-3]) cylinder(h = 10, r=1.7, $fn=50);
        translate([-10,25,-5.5]) cylinder(h = 3, r2=3.1, r1=5, $fn=50);    
        translate([10,25,-5.5]) cylinder(h = 3, r2=3.1, r1=5,$fn=50);
       
    // print support for nut heads    
    difference()
    {
        union()
        {
            translate([-10,25,-3.5]) cylinder(h = 3, r=3.1, $fn=50);    
            translate([10,25,-3.5]) cylinder(h = 3, r=3.1, $fn=50);
        }
        translate([-30,13.3,-0.8]) cube([60,10,2]);
        translate([-30,26.7,-0.8]) cube([60,10,2]);
        translate([-8.3,20,-1.1]) cube([16.6,10,2]);
        translate([-21.7,20,-1.1]) cube([10,10,2]);
        translate([11.7,20,-1.1]) cube([10,10,2]);
    }    
    
    // thermistor cable entry
    translate([-0,22,4]) rotate([115,0,0]) cylinder(h = 15, r=3.3, $fn=60);     
    
    
    // edges    
    translate([-18.0,25,-5]) rotate([0,0,45])  cube([11,11,15]);
    translate([18,25,-5]) rotate([0,0,45])  cube([11,11,15]);

    // inner angled cut
        difference()
        {
            translate([-15,15,0]) cube([30,11,4]);
            translate([-14.5,14.5,-1]) rotate([0,0,45])  cube([17,17,6]);
            translate([14.5,14.5,-1]) rotate([0,0,45])  cube([17,17,6]);
                
            translate([-13,11,-1]) rotate([-45,0,45])  cube([20,20,6]);
            translate([13,11,-1]) rotate([0,45,45])  cube([20,20,6]);
            translate([-10,16,-10]) rotate([30,0,0])  cube([20,20,6]);
        }
        
    }
    
    // cable rims
    difference()
    {
        difference()
        {
            translate([-0,32,3]) rotate([90,0,0]) cylinder(h = 7, r=4.5, $fn=60); 
            translate([-0,34,3]) rotate([90,0,0]) cylinder(h = 17, r=3, $fn=60); 
        }
        translate([-15,17,3]) cube([30,20,6]);    
        translate([-15,26,-5]) cube([30,2,16]);    
        translate([-15,29,-5]) cube([30,2,16]);    
        
        
    }
}

 
translate([0,0,8.6]) rotate([0,180,0])
{
translate([0,20,5.6]) rotate([0,180,0]) clip();
cover();
}





