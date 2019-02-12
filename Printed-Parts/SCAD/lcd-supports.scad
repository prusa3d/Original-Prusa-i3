// PRUSA iteration4
// lcd supports
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org




module body()
{

    difference() 
        {
        // base block
        translate([-55,-2,0]) cube([69,81,10]); 

            union ()
            {
                // outer body shape
                translate([-69.6,32,-1]) rotate([0,0,45]) cube([60,53,15]); 
                translate([13.7,89.7,-1]) rotate([0,0,135]) cube([60,42,15]);
                translate([-19,-9,-1]) cube([60,9,15] );   
                translate([7,-3,-1]) cube([60,68,16]);  
                translate([-16,60,-1]) cube([60,50,15] );
                translate([-41, -45,-1]) rotate([0,0,45]) cube([60,80,13]);  
                
                // pcb cout out
                translate([4,1.5,-1]) cube([1.8,56.5,17]); 
                translate([0,7.5,-1]) cube([5.8,44.5,17]); 
                translate([4.8,3.5,-1]) cube([5.8,52.5,17]);
                translate([8,-5,-1] ) rotate([0,0,45]) cube([5,5,17]);
                translate([8,58,-1]) rotate([0,0,45]) cube([5,5,17]);
            }

            // pcb inserts
            translate([4,3,8]) rotate([45,0,0]) cube([1.8,5,5]); 
            translate([4,56.5,8]) rotate([45,0,0]) cube([1.8,5,5]);     
            translate([4,3,-5]) rotate([45,0,0]) cube([1.8,5,5]); 
            translate([4,56.5,-5]) rotate([45,0,0]) cube([1.8,5,5]);     
        }
}



module support()
{
    difference() 
    {
    
        union()
        {
            rotate([0,0,45]) body();
            // screw block
            translate([-72,22,0])  cube([30,16,10]);    
        }
        
        // lower angled part cut
        translate([-75,-2,-1])  cube([20,14,15]);    
        translate([-70,-2,-1]) cube([20,14,15]);    
        translate([-50,-16.3,-1]) rotate([0,0,45]) cube([20,20,15]);    
        
        translate([-76.5,-2,-1]) cube([15,40,15]);    
        
        difference()
        {
            translate([-28,0,-1]) rotate([0,0,45]) cube([10,40,15]);    
            translate([-38,-12,-1]) cube([20,20,15]);    
            translate([-58,23.5,-1]) cube([25,25,15]);    
        }
        
        // screw holes
        translate([-71,18+4,5]) rotate([0,90,0]) cylinder(h=22, r=1.75, $fn=30);  
        translate([-70,29+4,5]) rotate([0,90,0]) cylinder(h=22, r=1.75, $fn=30);  
        
        // nut traps
        translate([-58,15.1+4,5-2.8]) cube([2.2,5.8,29.7]);    
        translate([-58,26.1+4,5-2.8]) cube([2.2,5.8,29.7]); 
     
        // version
        translate([-20,2,9.5]) rotate([0,0,0]) linear_extrude(height = 0.6) 
        { text("R1",font = "helvetica:style=Bold", size=5, center=true); }   
    }
}


module left_lcd_support()
{
    support();
     
    rotate([0,0,45]) difference()
    {
        // sd card shield
        translate([-3,3,10])  cube([2,55,10]); 
        translate([-4,3,20]) rotate([0,90,0]) cylinder( h=4, r=7, $fn=30); 
        translate([-4,58,20]) rotate([0,90,0]) cylinder( h=4, r=7, $fn=30); 
    }
}

translate([-60,-2,0]) rotate([0,0,180]) support();
left_lcd_support();

 















