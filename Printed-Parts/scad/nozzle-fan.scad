// PRUSA iteration4
// Nozzle fan
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module outer_shape()
{
    difference()
    {    
        union()
        {
            // fan entry block
            translate([-18,-53,-52]) cube([36,9,22]);    
            difference()
            {
                // nozzle base shape
                translate([0,-44,-15]) rotate([90,0,0]) cylinder( h=9, r=24, $fn=30 );
                translate([0,-43,-15]) rotate([90,0,0]) cylinder( h=11, r=14, $fn=30 );
                translate([-25,-54,-17]) cube([50,11,30]);    
            }

            // tips
            translate([-23.8,-53,-17]) cube([10,9,6]);  
            translate([13.8,-53,-17]) cube([10,9,6]);  
        }

        // upper angle cut
        translate([-25,-44,-30]) rotate([10,0,0]) cube([50,10,20]);  
        
        // angled front sides
        translate([-19.8,-54,-57]) rotate([0,-30,0]) cube([10,11,20]);    
        translate([11.2,-54,-52]) rotate([0,30,0]) cube([10,11,20]);    

        // right round edge
        translate([10.2,0,3]) difference()
        {
            translate([-28,-44,-20]) rotate([90,0,0]) cylinder( h=10, r=12, $fn=30 );    
            translate([-28,-43,-20]) rotate([90,0,0]) cylinder( h=12, r=6, $fn=30 );    
            translate([-50,-43,-60]) rotate([90,0,0]) cube([40,40,40]);    
            translate([-28,-43,-40]) rotate([90,0,0]) cube([40,40,40]);    
        }

        // left round edge
        translate([45.8,0,3]) difference()
        {
            translate([-28,-44,-20]) rotate([90,0,0]) cylinder( h=10, r=12, $fn=30 );    
            translate([-28,-43,-20]) rotate([90,0,0]) cylinder( h=12, r=6, $fn=30 );    
            translate([-50,-43,-60]) rotate([90,0,0]) cube([40,40,40]);    
            translate([-68,-43,-40]) rotate([90,0,0]) cube([40,40,40]);    
        }


        
    }

    // mounting block
    difference()
    {
        translate([10.5,-53,-40.5]) cube([8,17,5]);   
        translate([14.5,-40.5,-41]) rotate([0,0,0]) cylinder( h=15, r=1.65, $fn=30 );    
        translate([14.5,-40.5,-42]) rotate([0,0,0]) cylinder( h=4, r=3.1, $fn=30 );    
    }
}



module inner_shape()
{
    difference()
    {    
        union()
        {
            // base block
            translate([-17,-52,-51]) cube([34,7,21]);    
            
            // nozzle inner shape
            difference()
            {
                translate([0,-45,-15]) rotate([90,0,0]) cylinder( h=7, r=23, $fn=30 );
                translate([0,-43,-15]) rotate([90,0,0]) cylinder( h=11, r=16, $fn=30 );
                translate([-25,-54,-17]) cube([50,11,30]);    
            }

            translate([-22.8,-52,-17]) cube([7,7,5]);  
            translate([15.8,-52,-17]) cube([7,7,5]);  
        }
        
        // upper angled cut
        translate([-25,-44,-35]) rotate([10,0,0]) cube([50,10,30]);  
        
        // angled front sides
        translate([-19.2,-54,-56]) rotate([0,-24,0]) cube([10,11,20]);    
        translate([10.5,-54,-51]) rotate([0,24,0]) cube([10,11,20]);    
        
        // smooth entry
        difference()
        {
            translate([-30,-46,-45]) rotate([0,90,0]) cylinder( h=60, r=9, $fn=30 );
            translate([-30,-46,-45]) rotate([0,90,0]) cylinder( h=60, r=6, $fn=30 );
            translate([-30,-46,-52]) cube([60,11,20]);    
            translate([-30,-53,-45]) cube([60,11,20]);    
        }
     
        // left round edge
        translate([10.2,0,3]) difference()
        {
            translate([-28,-44,-20]) rotate([90,0,0]) cylinder( h=10, r=12, $fn=30 );    
            translate([-28,-43,-20]) rotate([90,0,0]) cylinder( h=12, r=5, $fn=30 );    
            translate([-50,-43,-60]) rotate([90,0,0]) cube([40,40,40]);    
            translate([-28,-43,-40]) rotate([90,0,0]) cube([40,40,40]);    
        }

        // right round edge
        translate([45.8,0,3]) difference()
        {
            translate([-28,-44,-20]) rotate([90,0,0]) cylinder( h=10, r=12, $fn=30 );    
            translate([-28,-43,-20]) rotate([90,0,0]) cylinder( h=12, r=5, $fn=30 );    
            translate([-50,-43,-60]) rotate([90,0,0]) cube([40,40,40]);    
            translate([-68,-43,-40]) rotate([90,0,0]) cube([40,40,40]);    
        }
     
     
        
    }

    // fan cut
    translate([-10.25,-46,-51]) cube([20.5,10,15.5]);    
    translate([10.25,-52,-44]) cube([2,15,3]);    

}

 
module base_shape()
{
    difference()
    {
        outer_shape();
        inner_shape();
        // air slot
        translate([0,-49,-15]) rotate([90,0,0]) cylinder( h=7, r=17, $fn=30 );    
    }
}


module fan_nozzle()
{
    difference()
    {
        base_shape();
        
        // nozzle tips cut
        translate([8.7,-53,-15]) rotate([0,20,0]) cube([5,15,15]);    
        translate([-13.6,-53,-16]) rotate([0,-20,0]) cube([5,15,15]);    
    }

    // fins
    translate([8.1,0,-11]) rotate([0,80,0]) translate([0,-53,-25.5]) cube([1,5,3]);    
    translate([-8.1,0,-11.2]) rotate([0,-80,0]) translate([-1,-53,-25.5]) cube([1,5,3]);    
    translate([4.8,0,-11.5]) rotate([0,55,0]) translate([0,-53,-24]) cube([1,5,4]);    
    translate([-4.8,0,-11.5]) rotate([0,-55,0]) translate([-1,-53,-24]) cube([1,5,4]);    
    translate([-0.5,0,-8.6]) rotate([0,15,0]) translate([0,-53,-24]) cube([1,5,4]);    
    translate([0.5,0,-8.6]) rotate([0,-15,0]) translate([-1,-53,-24]) cube([1,5,4]);    


    translate([-0.4,-53,-35.4]) rotate([0,0,0]) cube([0.8,8.8,6.4]); 
    translate([5.4,-53,-34.8]) rotate([0,50,0]) cube([0.8,9,8.5]); 
    translate([-6.2,-53,-35.4]) rotate([0,-50,0]) cube([0.8,9,8.5]); 

    translate([10.4,-53,-40.4]) rotate([0,30,0]) cube([0.8,9,4.5]); 
    translate([-11.2,-53,-41.0]) rotate([0,-30,0]) cube([0.8,9,4.5]); 


    translate([10,-51,-50.8]) rotate([0,180,0]) linear_extrude(height = 2) 
    { text("HOT!2",font = "helvetica:style=Bold", size=5, center=true); }
}

rotate([90,0,0]) fan_nozzle();

