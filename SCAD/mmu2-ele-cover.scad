// PRUSA MMU2
// ele-cover
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org



module nut_cut()
{
    translate([0,0,2]) cylinder(r=3.1, r2=4, h=4, $fn=6); 
    difference()
    {
        cylinder(r=3.1, h=4, $fn=6); 
        translate([-3.65,-5,-0.4]) cube([2,10,1]);
        translate([1.65,-5,-0.4]) cube([2,10,1]);
        translate([-2,1.65,-0.7]) cube([4,4,1]);
        translate([-2,-5.65,-0.7]) cube([4,4,1]);
    }
}
module head_cut()
{
    translate([0,0,2.5]) cylinder(r=3.1, r2=4, h=4, $fn=30); 
    difference()
    {
        cylinder(r=3.1, h=4, $fn=30); 
        translate([-3.65,-5,-0.4]) cube([2,10,1]);
        translate([1.65,-5,-0.4]) cube([2,10,1]);
        translate([-2,1.65,-0.7]) cube([4,4,1]);
        translate([-2,-5.65,-0.7]) cube([4,4,1]);
    }
}

module ele_cover()
{
    
difference(){

translate([-29,-21,23]) cube([125,56,15]);

        difference()
        {
            translate([-21,-11.5,21]) cube([108,48,15]);
            translate([73,8,34]) cylinder(r=5, h=3, $fn=6); 
            translate([30,22,34]) cylinder(r=5, h=3, $fn=6); 
            translate([-10,1,34]) cylinder(r=5, h=3, $fn=6);
            translate([-14,1,34]) cylinder(r=5, h=3, $fn=6);
            translate([-19,1,34]) cylinder(r=5, h=3, $fn=6);

        }
        difference()
        {
            translate([-30,-23,22]) rotate([45,0,0]) cube([130,47,10]);
            translate([-30,-12.5,22]) rotate([0,0,0]) cube([130,30,30]);
        }

    // angled side for buttons
    translate([-17,-20,22]) rotate([55,0,0]) cube([33,13,10]);

    // LED
    for (i =[0:4])
        {
            translate([22+(i*13.716),-21,29.5]) cube([4,10,3]);
            translate([22+(i*13.716),-10,31]) rotate([90,0,0]) cylinder(r=1.5, h=18, $fn=50);
            translate([26+(i*13.716),-10,31]) rotate([90,0,0]) cylinder(r=1.5, h=18, $fn=50);
        }
        
        // buttons
        translate([11,-11,28.5]) rotate([90,0,0]) cylinder(r=2.5, h=18, $fn=50); 
        translate([-1,-11,28.5]) rotate([90,0,0]) cylinder(r=2.5, h=18, $fn=50); 
        translate([-13,-11,28.5]) rotate([90,0,0]) cylinder(r=2.5, h=18, $fn=50); 

        // reset button        
        translate([78,7.5,28.5]) rotate([0,90,0]) cylinder(r=2.5, h=20, $fn=50); 

        // usb
        translate([80,-8.5,29]) cube([20,12,7]);

        translate([78,1.5,29]) rotate([0,90,0]) cylinder(r=2, h=20, $fn=50); 
        translate([78,-6.5,29]) rotate([0,90,0]) cylinder(r=2, h=20, $fn=50); 
        translate([75,-6.5,27]) cube([25,8,3]);

        // mounting screws
        translate([73,8,28.5]) cylinder(r=1.65, h=15, $fn=50); 
        translate([30,22,28.5]) cylinder(r=1.65, h=15, $fn=50); 
        translate([-10,1,28.5]) cylinder(r=1.65, h=15, $fn=50); 


        translate([73,8,35.0]) nut_cut(); 
        translate([30,22,35.0]) nut_cut(); 
        translate([-10,1,35.0]) nut_cut(); 


        // edges
        translate([-30,-16,33]) rotate([45,0,0]) cube([130,10,10]);
        translate([-40,-16,37.5]) rotate([0,30,0]) cube([10,60,10]);
        translate([99.5,-16,30]) rotate([0,-30,0]) cube([10,60,10]);


        // ventilation
        for (i =[0:3])
            {
                translate([15-(i*6),0,30]) cube([4,23,20]);
                translate([17-(i*6),0,30]) cylinder(r=2, h=20, $fn=6);
                translate([17-(i*6),23,30]) cylinder(r=2, h=20, $fn=6);
            }
        for (i =[0:1])
            {        
                translate([-10-(i*6),8,30]) cube([4,15,20]);
                translate([-8-(i*6),8,30]) cylinder(r=2, h=20, $fn=6);
                translate([-8-(i*6),23,30]) cylinder(r=2, h=20, $fn=6);
            }

    
        // sheep ventilation
        translate([21,0,30]) cube([15,15.5,20]);        
        translate([23,0,30]) cylinder(r=2, h=20, $fn=6);        
        translate([34,0,30]) cylinder(r=2, h=20, $fn=6);        
        translate([23,15.5,30]) cylinder(r=2, h=20, $fn=6);        
        translate([34,15.5,30]) cylinder(r=2, h=20, $fn=6);        
        translate([23,-1.75,30]) cube([10,19,20]);        


        translate([-4,-2,35]) cube([35,19.5,2]);
        translate([-19,5.5,35]) cube([40,19.5,2]);
        

        // mounting screws        
        translate([-24,8,35]) head_cut();      
        translate([-24,8,10]) cylinder(r=1.65, h=30, $fn=50); 

        translate([91,14,35]) head_cut(); 
        translate([91,14,10]) cylinder(r=1.65, h=30, $fn=50); 

        for (i =[0:3])
            { 
                translate([40+(i*14),-8,37.7]) cube([10,10,10]);        
                translate([40+(i*14),22,37.7]) cube([10,10,10]);     
            }


            //version
            translate([-19,-4.5,36.5]) rotate([0,180,180]) linear_extrude(height = 0.8) 
            { text("R1",font = "helvetica:style=Bold", size=6, center=true); }            
    }
        


        difference()
        {
            translate([-21,5,34]) cube([2,6,2]);
            translate([-24,8,35]) cylinder(r=3.1, h=4, $fn=50);      
        }

}

rotate([0,180,0]) 
ele_cover();
