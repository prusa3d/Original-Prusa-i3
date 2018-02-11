// PRUSA iteration4
// Extruder idler
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org
 

module part()
{
 
    difference()
    {
        union()
        {
            // base shape
            translate([-11.5,42.5,-31.5])  cylinder( h=25, r=5, $fn=50 ); 
            translate([-17,12,-31.5]) cube([8,34,25.0]);   
            
            // pulley holders
            translate([-4,27,-22.75])  cylinder(h=1, r1=4, r2=3, $fn=50); 
            translate([-4,27,-27])  cylinder(h=4.25, r=4, $fn=50); 
            translate([-14,22,-26.75]) cube([10.5,10,4]);   
            translate([-16.5,22,-6.5]) cube([13,10,3]);   
            translate([-4,27,-6.5])  cylinder(h=3, r=4, $fn=50); 
            translate([-4,27,-7.25])  cylinder(h=0.75, r1=3, r2=4, $fn=50); 
        }

        // motor rim cut
        translate([7,27,-32.75])  cylinder( h=6, r=18, $fn=80 ); 
        
        // axis
        translate([-4,27,-32])  cylinder( h=40, r=1.45, $fn=50 ); 
    
        translate([-11.5,42.5,-32])  cylinder( h=30, r=1.65, $fn=50 ); 
        translate([-18,44,-32]) rotate([0,0,30]) cube([15,10,30]);   
        translate([-18,47,-32]) cube([15,10,30]);   
        translate([-16,0.5,-32]) rotate([0,0,30]) cube([15,10,30]);   
        translate([-18,3,-33]) cube([15,10,30]);   
        
        // idler nuts
        translate([-15,15.7,-39.4]) cube([2.1,5.6,16]);   
        translate([-15,15.7,-14.6]) cube([2.1,5.6,16]); 
        // better printing
        translate([-14.7,15.6,-28.2]) cube([2.1,5.8,3.4]);   
        translate([-14.4,16.8,-28.2]) cube([2.1,3.4,3.4]);   
        translate([-14.7,15.6,-13.2]) cube([2.1,5.8,3.4]);   
        translate([-14.4,16.8,-13.2]) cube([2.1,3.4,3.4]);   
        
        // idler screws
        translate([-18,18.5,-26.5]) rotate([0,90,0]) cylinder( h=45, r=1.7, $fn=50 );  
        translate([-18,18.5,-11.5]) rotate([0,90,0]) cylinder( h=45, r=1.7, $fn=50 );    
        translate([-18,18.5,-26.5]) rotate([0,90,0]) cylinder( h=2.5, r1=3, r2=1.7, $fn=50 );  
        translate([-18,18.5,-11.5]) rotate([0,90,0]) cylinder( h=2.5, r1=3, r2=1.7, $fn=50 );    

        translate([-12,18.5,-26.5]) rotate([0,90,0]) cylinder( h=4, r1=1.7, r2=2.2, $fn=50 );  
        translate([-12,18.5,-11.5]) rotate([0,90,0]) cylinder( h=4, r1=1.7, r2=2.2, $fn=50 );    

        translate([-5.3,16.2,-33]) rotate([0,0,30]) cube([5,5,40]); 
        translate([-7.8,33.5,-33]) rotate([0,0,-30]) cube([5,5,40]); 
        
        translate([-18,29,-17.6]) rotate([90,0,0]) rotate([0,90,0]) cylinder( h=10, r1=9, r2=6, $fn=6 );  
        
        // nice edges
        translate([-26,10,-2]) rotate([0,45,0]) cube([10,40,10]); 
        translate([-26,10,-35.5]) rotate([0,45,0]) cube([10,40,10]); 
        translate([-10,2,-35]) cube([20,20,50]); 
        
        //selective infill
        translate([-11,24,-5]) cube([5,6,0.2]); 
        translate([-11,24,-26]) cube([5,6,0.2]); 
        
        // filament sensor cleaning window
        translate([-20,43,-18.5])  rotate([90,0,90]) cylinder( h=15, r=3, $fn=30 ); 
        translate([-20,43,-21.5]) cube([21,10,6]);
    }
    
    difference()
    {    
        // side cut
        translate([-17,22,-8]) cube([4,17,4.5]);   
        translate([-9.5,33,-9]) rotate([0,0,45]) cube([10,10,6]);   
        
        // side cut edges
        translate([-26,10,1]) rotate([0,45,0]) cube([10,40,10]); 
        translate([-22.5,14,-10]) rotate([0,0,45]) cube([10,10,10]);     
        translate([-22.5,33,-10]) rotate([0,0,45]) cube([10,10,10]);     
    }
    
    translate([-11.5,28,-8]) rotate([0,0,45]) cube([3,6,4.5]);   
    
}

rotate([0,-90,0]) part();

















