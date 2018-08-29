// PRUSA MMU2
// selector-finda
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module blade()
{
        difference()
        {
            translate([0,0,0]) cube([17,0.5,9]);
            translate([11.5,-0.5,10]) rotate([0,61,0]) cube([21,1.5,9]);
            translate([-9.3,-0.5,9]) rotate([0,61,0]) cube([21,1.5,9]);
        }
}



module selector()
{
    difference()
    {
        union()
        {
            // base shape
            translate([40,-61,-23.5]) cube([25,30.5,44.5]);
            translate([40,-57.75,5.1]) cube([25,30,15.9]);
            translate([50,-61,21]) cube([15,22,10]);
            translate([59,-51,22]) cylinder(r=9.2, h=9, $fn=50);
        }
        
        // filament path
        translate([59,-30,4]) rotate([90,0,0]) cylinder(r=1.3, h=40, $fn=50); 
        translate([59,-27,4]) rotate([90,0,0]) cylinder(r2=1.3, r1=1.4,h=15, $fn=50); 
        translate([59,-60,4]) rotate([90,0,0]) cylinder(r2=2.5, r1=1.3,h=2, $fn=50);
       
        translate([59,-55,4]) rotate([90,0,0]) cylinder(r2=1.3, r1=2.5,h=3, $fn=50);
        translate([59,-52,4]) rotate([90,0,0]) cylinder(r2=2.5, r1=1.3,h=3, $fn=50);
       
        // cutter space
        translate([39,-39,2.1]) cube([16,12,3]);
        translate([39,-39,2]) rotate([-20,0,0]) cube([16,10,3.2]);
        difference()
        {
            translate([37,-38,-3.5]) rotate([-30,-30,0]) cube([13,10,5]);
            translate([39,-39,5]) cube([16,12,3]);
            translate([39,-48,-10]) cube([16,12,30]);
        }
        
        // TR nut screws
        translate([55,-33.5,-3]) rotate([0,90,0]) cylinder(r=1.65, h=12, $fn=50); 
        translate([9,-52.5,-3]) rotate([0,90,0]) cylinder(r=1.65, h=180, $fn=50); 
        
        // TR nut nuts
        translate([58,-33.5-2.8,-5.8]) cube([2.1,7,5.6]);
        translate([40,-52.5,-3]) rotate([0,90,0]) cylinder(r=3.1, h=21, $fn=6); 
        translate([36,-52.5,-3]) rotate([0,90,0]) cylinder(r=3.3, h=21, $fn=6);
        
        // TR nut
        translate([9,-43,-3]) rotate([0,90,0]) cylinder(r=4.6, h=180, $fn=50); 
        translate([9,-38.8,-3]) rotate([0,90,0]) cylinder(r=1, h=180, $fn=50); 
        translate([63.5,-43,-3]) rotate([0,90,0]) cylinder(r=12.8, h=5, $fn=50); 
        translate([37,-43,-3]) rotate([0,90,0]) cylinder(r2=4.6, r1=6, h=5, $fn=50); 
        translate([63.5,-50,-8]) cube([4,50,10]);
        translate([63.5,-45,-18]) cube([4,4,10]);
        
        // linear rods
        translate([-28,-43,16]) rotate([0,90,0]) cylinder(r=3.05, h=130, $fn=50); 
        translate([-28,-43,-19]) rotate([0,90,0]) cylinder(r=3.05, h=130, $fn=50); 

        translate([30,-43-6,-19.25]) cube([40,12,0.5]);
        translate([30,-41.5,-19.25-1.9]) rotate([45,0,0]) cube([40,3,3]);
        translate([30,-43-4,15.75]) cube([40,10,0.5]);
        translate([30,-41.5,15.75-1.9]) rotate([45,0,0]) cube([40,3,3]);
        
        translate([39,-43,16]) rotate([0,90,0]) cylinder(r2=3.05,r1=3.5, h=4, $fn=50); 
        translate([45,-43,16]) rotate([0,90,0]) cylinder(r1=3.05,r2=3.3, h=4.01, $fn=50); 
        translate([49,-43,16]) rotate([0,90,0]) cylinder(r2=3.05,r1=3.3, h=4, $fn=50); 
        translate([54,-43,16]) rotate([0,90,0]) cylinder(r1=3.05,r2=3.3, h=4.01, $fn=50); 
        translate([58,-43,16]) rotate([0,90,0]) cylinder(r2=3.05,r1=3.3, h=4, $fn=50); 
        
        translate([39,-43,-19]) rotate([0,90,0]) cylinder(r2=3.05,r1=3.5, h=4, $fn=50); 
        translate([45,-43,-19]) rotate([0,90,0]) cylinder(r1=3.05,r2=3.3, h=4.01, $fn=50); 
        translate([49,-43,-19]) rotate([0,90,0]) cylinder(r2=3.05,r1=3.3, h=4, $fn=50); 
        translate([54,-43,-19]) rotate([0,90,0]) cylinder(r1=3.05,r2=3.3, h=4.01, $fn=50); 
        translate([58,-43,-19]) rotate([0,90,0]) cylinder(r2=3.05,r1=3.3, h=4, $fn=50); 
        
        // blade holder
        difference()
            {
                translate([39.4,-28.15,6.0]) rotate([0,10.0,0]) blade();
                translate([40.5,-29,3.1]) rotate([0,-24,0]) cube([4,2,11]);
            }
            
        // blade holder screws
        translate([45,-27,16]) rotate([90,0,0]) cylinder(r=1.7, h=10, $fn=50); 
        translate([55,-27,12]) rotate([90,0,0]) cylinder(r=1.7, h=10, $fn=50); 
        
        // blade holder nuts
        translate([55-2.9,-33,12-2.95]) cube([5.8,2.0,13]);
        translate([55-2.9,-34,17]) cube([5.8,4,13]);
        translate([45-2.9,-33,16-2.95]) cube([5.8,2.0,13]);
        
        // edges
        translate([39,-37,-30]) rotate([-20,0,0]) cube([40,12,30]);
        translate([39,-54,-35]) rotate([50,0,0]) cube([40,12,40]);

       
        
        // front cover mount
        translate([59,-48,-8]) rotate([90,0,0]) cylinder(r=1.65, h=30, $fn=50);
        translate([59,-59,-8]) rotate([90,0,0]) cylinder(r1=1.65, r2=2.2,h=3, $fn=50);
        translate([59-2.8,-58.5,-8-2.8]) cube([10,2.1,5.6]);
        
        translate([59,-48,15]) rotate([90,0,0]) cylinder(r=1.65, h=30, $fn=50);
        translate([59,-59,15]) rotate([90,0,0]) cylinder(r1=1.65, r2=2.2,h=3, $fn=50);
        translate([59-2.8,-58.5,15-2.8]) cube([10,2.1,5.6]);
                
        // F.I.N.D.A.
        translate([59,-47.5,4.5]) cylinder(r=1, h=30, $fn=60);
        translate([59,-51,6.5]) cylinder(r=4.05, h=30, $fn=60);
        translate([59,-51,6.5]) cylinder(r2= 4.05,r1=4.2, h=5, $fn=60);
        translate([59,-51,29]) cylinder(r1=4.05, r2=5, h=10, $fn=60);
        translate([59,-51,6.70]) sphere(4.2, $fn=100); 
        
        translate([58.5,-65,21]) cube([1,15,30]);
        translate([58.5,-65,21]) cube([10,15,1]);
        
        translate([49,-57,26.5]) rotate([0,90,0]) cylinder(r=1.65, h=15, $fn=50);
        translate([62,-57,26.5]) rotate([0,90,0]) cylinder(r=3.2, h=6, $fn=50);
        translate([53,-67+2.9,21+2.8]) cube([2.2,10,5.6]);
        
        // edges
        translate([47,-45,32]) rotate([-45,0,0]) cube([20,15,10]);
        translate([30,-82,32]) rotate([-50,0,0]) cube([20,30,30]);
        
        // better printing
            // blade holder
            translate([55-2.9,-33,12-1.7]) cube([5.8,2.35,3.4]);
            translate([55-1.7,-33,12-1.7]) cube([3.4,2.6,3.4]);
            translate([45-2.9,-33,16-1.7]) cube([5.8,2.35,3.4]);
            translate([45-1.7,-33,16-1.7]) cube([3.4,2.6,3.4]);
        
            // front plate holder
            translate([59-1.65,-58.5,-8-2.8]) cube([3.3,2.4,5.6]);
            translate([59-1.65,-58.5,15-2.8]) cube([3.3,2.4,5.6]);
            translate([59-1.65,-58.5,-8-1.65]) cube([3.3,2.7,3.3]);
            translate([59-1.65,-58.5,15-1.65]) cube([3.3,2.7,3.3]);
            
            
        //version
        translate([49,-40,-23.3]) rotate([0,180,180]) linear_extrude(height = 0.8) 
        { text("M1",font = "helvetica:style=Bold", size=5, center=true); } 
        
    }
}


rotate([90,0,0]) 
selector();









