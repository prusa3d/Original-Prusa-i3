// PRUSA iteration4
// nozzle-fan
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module fan()
    {
    cube([19.5,15,50]);
    translate([0,9.5,0]) cube([19.5,5.5,50]);
    translate([0,0,0]) cube([19.5,6,50]);
    translate([-1.50,6,0]) cube([1.5,3,50]);
    translate([9,-5,40]) cube([1,5.5,10]);
    }
   
module inner_half()
{
    difference()
    {
    union()
    {
        // outlets
        difference()
        {
            union()
            {
                translate([-8,12,-63]) rotate([25,0,0]) cube([18,30,6]);
                translate([-6,10.2,-60]) rotate([25,0,60]) cube([9,20,4]);
            }
            translate([-28,0,-55]) rotate([0,0,70]) cube([65,20,15]);
        }
        
        // inner body
        difference()
        {
            // base shape
            translate([-25,14,-52]) rotate([0,0,0]) cube([25,37,7]);
            translate([-14,2,-55]) rotate([0,0,60]) cube([10,20,15]);
            
            translate([-28,0,-55]) rotate([0,0,70]) cube([65,20,15]);
            difference()
            {
                // heatblock cut
                translate([-13,10,-55]) rotate([0,0,0]) cube([20,20,15]);
                translate([-16,21.7,-55]) rotate([0,0,45]) cube([20,20,15]);
            }
            
            // front shape
            translate([-8,15,-55]) rotate([25,0,0]) cube([16,30,6]);
            translate([-25,0,-55]) rotate([25,0,0]) cube([16,30,6]);
            translate([-15,51,-58]) rotate([45,0,0]) cube([16,30,6]);
        }
    }

        difference()
        {
            translate([-16.8,19.5,-55])cylinder(r=6,h = 12, $fn=30);         
            translate([-16.8,19.5,-55])cylinder(r=4,h = 30, $fn=30);         
            translate([-25,21,-58]) cube([20,20,16]);    
            translate([-18,11,-58]) cube([20,220,16]);    
        }    
        
        translate([-6,9,-56]) rotate([25,-15,60]) cube([20,25,5]);
        translate([-20,50,-54]) rotate([50,0,0]) cube([21,10,20]);
        translate([-14,2,-48]) rotate([0,50,60]) cube([10,25,18]);
        translate([-12,3.4,-60]) rotate([25,0,60]) cube([9,20,7]);
    }
}


module inner()
{
    difference()
    {
    union()
    {
    inner_half();
    mirror([1,0,0]) inner_half();

        // fan cut
        translate([9.8,48,-53]) rotate([40,0,180]) fan();
        difference()
            {
                translate([-9.7,41.65,-60.7]) rotate([50,0,0]) cube([9.75*2,20,15]);
                translate([-10,32,-67]) rotate([0,0,0]) cube([20,20,15]);
            }
    }
    translate([-20,44,-57])  cube([40,10,5]);
}
}

module outer_half()
{
    difference()
    {
        union()
        {
            translate([-25,13,-53]) rotate([0,0,0]) cube([25,39,9]);
            translate([-18,45,-55]) rotate([50,0,0]) cube([18,10,15]);
        }
        
        // front shape
        translate([-14,0,-55]) rotate([0,0,60]) cube([10,20,15]);
        
        // sides
        translate([-30,0,-55]) rotate([0,0,70]) cube([65,20,15]);
        difference()
        {
            translate([-12,9,-55]) rotate([0,0,0]) cube([20,20,15]);
            translate([-16,20.7,-55]) rotate([0,0,45]) cube([20,20,15]);
        }
        
        translate([-25,-2,-55]) rotate([25,0,0]) cube([16,30,6]);
        translate([-15,54,-58]) rotate([60,0,0]) cube([16,30,6]);
        translate([-6,8,-54]) rotate([25,-15,60]) cube([20,25,5]);
        
        translate([-20,51,-52]) rotate([50,0,0]) cube([21,10,20]);
        translate([-20,40,-63]) cube([21,10,10]);
    }
    
}


module outer()
{
    outer_half();
    mirror([1,0,0]) outer_half();
    translate([-11.2,50.5,-52]) rotate([50,0,0]) cube([22.5,2,1.3]);
    translate([9.5,50.5,-52]) rotate([50,0,0]) cube([1.8,2,17.3]);
    translate([-11.5,37.7,-42]) rotate([50,0,0]) cube([23,2.6,1.05]);
}



module nozzle_fan()
{
difference()
    {
        union()
        {
            outer();
            translate([10.5,35,-53]) cube([8,5,17]); 
        }
        inner();
        translate([14.5,46,-40.5]) rotate([90,0,0]) cylinder(r=3,h=8,$fn=30); 
        translate([14.5,45,-40.5]) rotate([90,0,0]) cylinder(r=1.6,h=30,$fn=30); 
        
        translate([-25,30,-44]) cube([50,5,17]); 
    }

    // center fin
    difference()
    {
        translate([-0.3,29,-53]) cube([0.6,20,11]);
        translate([-2.5,35.5,-41]) rotate([-45,0,0]) cube([5,20,9]);
        translate([-2.5,26,-44]) cube([5,10,9]);
        translate([-2.5,26.5,-43]) cube([5,10,9]);
    }

    // right fin
    difference()
    {
        translate([-8,29,-53]) cube([0.6,20,11]);
        translate([-9,31,-42]) rotate([-45,0,0]) cube([5,20,14]);
        translate([-9,26,-44]) cube([5,10,9]);
        translate([-9,26.5,-43]) cube([5,10,9]);
    }

    // left fin
    difference()
    {
        translate([7.4,29,-53]) cube([0.6,20,11]);
        translate([7,31,-42]) rotate([-45,0,0]) cube([5,20,14]);
        translate([7,26,-44]) cube([5,10,9]);
        translate([7,26.5,-43]) cube([5,10,9]);
    }
    
        // front sides
        translate([-13,13,-53]) cube([1,12,3]);
        translate([12,13,-53]) cube([1,12,2]);
        translate([-13,17,-52]) cube([1,8,3]);
        translate([12,17,-52]) cube([1,8,3]);
}



nozzle_fan();





