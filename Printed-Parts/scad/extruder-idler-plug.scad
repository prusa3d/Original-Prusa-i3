// PRUSA iteration4
// Extruder idler plug
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module plug()
{
    difference()
        {
            union()
            {
            // Base shape    
            translate([-17,43,-18.5])  rotate([90,0,90]) cylinder( h=10, r=2.8, $fn=30 ); 
            translate([-17,43,-21.3]) cube([10,4+3.5,5.6]);
            translate([-17,43+3,-21.3]) cube([10.6,4.5,5.6]);
            }
        
            // Motor screw slot
            translate([-11.5,42.5,-32])  cylinder( h=30, r=1.5, $fn=30 ); 
            translate([-11.5-1.5,42.5-5,-25])  cube([3,5,10]); 
            
            // Pretty corner
            translate([-18,47,-32]) rotate([0,0,30]) cube([15,10,30]);
        }
}

rotate([0,0,0])
{ 
    plug();
}