// PRUSA iteration4
// spool-buffer-spools
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

tl=1.8;
spc=4.7;

module plate()
{
    translate([-66,0,210]) cube([132,tl,20]); 
    translate([-66,1.1,210]) rotate([1,0,0]) cube([132,1,20]); 
    translate([-66,-0.3,210]) rotate([-1,0,0]) cube([132,1,20]); 
}


module ptfe_right()
{
    translate([-21.7*-1, tl+spc/2,185]) rotate([0,30,0]) cylinder(r=2.2,h=50,$fn=60);
    translate([-46.45*-1, tl+spc/2,227.7]) rotate([0,15,0]) cylinder(r=2.2,h=10,$fn=60);
    translate([-46.45*-1+1.2, tl+spc/2,232]) rotate([0,15,0]) cylinder(r2=3.5, r1=2.2, h=3,$fn=60);
    translate([-40.1*-1, tl+spc/2,221.5]) rotate([0,0,0]) cylinder(r=1.4,h=12,$fn=60);
    translate([-40.1*-1, tl+spc/2,230]) rotate([0,0,0]) cylinder(r2=1.9,r1=1.4,h=4,$fn=60);
}
    
module ptfe_left()
{
    translate([-21.7, tl+spc/2,185]) rotate([0,-30,0]) cylinder(r=2.2,h=50,$fn=60);
    translate([-46.45, tl+spc/2,227.7]) rotate([0,-15,0]) cylinder(r=2.2,h=10,$fn=60);
    translate([-46.45-1.2, tl+spc/2,232]) rotate([0,-15,0]) cylinder(r2=3.5, r1=2.2, h=3,$fn=60);
    translate([-40.1, tl+spc/2,221.5]) rotate([0,0,0]) cylinder(r=1.4,h=12,$fn=60);
    translate([-40.1, tl+spc/2,230]) rotate([0,0,0]) cylinder(r2=1.9,r1=1.4,h=4,$fn=60);
}


module buffer_rear()
{

    difference()
    {

        union()
        {    
            // base shape
            translate([-55,-3,225]) cube([110,40.5,8]); 
            translate([-57,-3,220]) cube([21,40.5,13]); 
            translate([36,-3,220]) cube([21,40.5,13]); 
    
            // nut reinforcement
            translate([-50,-4.5,225]) rotate([-90,0,0]) cylinder(r2=5.5, r1=5, h=1.85, $fn=6);
            translate([50,-4.5,225]) rotate([-90,0,0]) cylinder(r2=5.5, r1=5, h=1.85, $fn=6);
        }

 

        // plates and PTFE 
        s=0;
        translate([0,s,0]) plate(); 
        translate([0, s,0]) ptfe_right();

        s1=6.5;
        translate([0,s1,0]) plate(); 
        translate([0, s1,0]) ptfe_left();

        s2=6.5*2;
        translate([0,s2,0]) plate(); 
        translate([0, s2,0]) ptfe_right();

        s3=6.5*3;
        translate([0,s3,0]) plate(); 
        translate([0, s3,0]) ptfe_left();

        s4=6.5*4;
        translate([0,s4,0]) plate(); 
        translate([0, s4,0]) ptfe_right();

        s5=6.5*5;
        translate([0,s5,0]) plate(); 


        // hold together screws
        translate([-50,-2,225]) rotate([-90,0,0]) cylinder(r=1.8, h=40, $fn=30);
        translate([50,-2,225]) rotate([-90,0,0]) cylinder(r=1.8, h=40, $fn=30);

        // nut trap
        translate([-50,-4.6,225]) rotate([-90,0,0]) cylinder(r2=3.15, r1=3.5, h=3.5, $fn=6);
        translate([50,-4.6,225]) rotate([-90,0,0]) cylinder(r2=3.15, r1=3.5, h=3.5, $fn=6);

        // nut head
        translate([-50,36.5,225]) rotate([-90,0,0]) cylinder(r=3.1, h=5, $fn=30);
        translate([50,36.5,225]) rotate([-90,0,0]) cylinder(r=3.1, h=5, $fn=30);


        // cut
        translate([-35,1,208]) cube([70,32,20]); 

        // edges
        translate([-52,1,218]) rotate([0,61,0]) cube([20,6,20]); 
        translate([-52,14,218]) rotate([0,61,0]) cube([20,6,20]); 
        translate([-52,27,218]) rotate([0,61,0]) cube([20,6,20]); 

        translate([42.5,7,200.5]) rotate([0,-61,0]) cube([20,6,20]); 
        translate([42.5,20,200.5]) rotate([0,-61,0]) cube([20,6,20]); 

        translate([-72,-5,210]) rotate([0,45,0]) cube([20,60,20]); 
        translate([43.5,-5,210]) rotate([0,45,0]) cube([20,60,20]); 
        translate([-41.5,0,215.5]) rotate([0,35,0]) cube([5,34,15]); 
        translate([16.5,0,216.5]) rotate([0,55,0]) cube([20,34,20]); 

        translate([-75,-5,235]) rotate([0,30,0]) cube([20,60,20]); 
        translate([59.5,-5,222]) rotate([0,-30,0]) cube([20,60,20]); 

        translate([-56,-5,215]) rotate([0,61,0]) cube([20,6,20]); 
        translate([-56,33,215]) rotate([0,61,0]) cube([20,6,20]); 
        translate([46.5,-5,197.5]) rotate([0,-61,0]) cube([20,6,20]); 
        translate([46.5,33,197.5]) rotate([0,-61,0]) cube([20,6,20]); 

        translate([-39,-5,205]) cube([39*2,6,20]); 
        translate([-39,33,205]) cube([39*2,6,20]); 

        // better printing
        difference()
        {
            union()
            {
                for(i = [35 : 15 : 100])
                {
                    translate([-70+i,5,232.75]) cube([10,10,0.3]);     
                    translate([-70+i,22,232.75]) cube([10,10,0.3]);     
                }
            }
    
            translate([-6,4,232.6]) cube([12,12,20]);     
        }
    
        //version
        translate([-5,5,232.75]) rotate([0,0,0]) linear_extrude(height = 0.3) 
        { text("M1",font = "helvetica:style=Bold", size=6, center=true); }   
         
    }
}


translate([0,0,-220]) rotate([0,180,0]) buffer_rear();










