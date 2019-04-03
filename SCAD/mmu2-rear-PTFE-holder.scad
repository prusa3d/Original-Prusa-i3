// PRUSA MMU2
// rear-PTFE-holder
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module rear_PTFE_holder()
{
    difference()
    {
        // base shape
        translate([-1.8,15.2,0]) cube([64.6,20.8,7]);
    
        for (i =[10:14:52])
        {
            translate([i,14,-30]) rotate([-20,0,0]) cylinder(r=1.7, h=46, $fn=50); 
            translate([i,26.75,5]) rotate([-20,0,0]) cylinder(r=3.1, h=46, $fn=50); 
        }

        for (i =[0:4])
        {
            translate([3+(i*14),15,4]) rotate([90,0,0]) cylinder(r=1.1, h=15, $fn=50); 
            translate([3+(i*14),22,4]) rotate([90,0,0]) cylinder(r=2.05, h=15, $fn=50); 
            translate([3+(i*14),36.4,1.4]) rotate([80,0,0]) cylinder(r=2, h=15, $fn=50); 
        }
        
        difference()
            {
            translate([-2,15,-4]) cube([65,30,10]);
            translate([-2,15,4]) cube([65,30,10]);
            translate([-2,15,5]) rotate([-10,0,0]) cube([65,30,10]);  
            }
            
        // markers
        difference()
        {
            translate([5,17,6.5]) cube([10,10,10]);
            translate([5,18,5.5]) rotate([0,0,45]) cube([10,10,12]);
            translate([8,25,5.5]) rotate([0,0,-45]) cube([10,10,12]);
        }
        //version
        translate([49,17,6.6]) rotate([0,0,0]) linear_extrude(height = 0.8) 
        { text("R1",font = "helvetica:style=Bold", size=5, center=true); }    
    
    }
    

}
rotate([0,180,0]) 
rear_PTFE_holder();