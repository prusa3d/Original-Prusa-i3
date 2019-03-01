// PRUSA iteration4
// spool-buffer-printer
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


    tl=1.8;
    spc=4.7;

    module plate()
    {
        translate([-66,0,0]) cube([132,tl,20]); 
        translate([-66,0,1]) rotate([1,0,0]) cube([132,tl,20]); 
        translate([-66,0,1]) rotate([-1,0,0]) cube([132,tl,20]); 
    }

    module ptfe_right()
    {
        // PTFE
        translate([-72.3,tl+spc/2,-4]) rotate([0,22,0]) cylinder(r=2.2,h=50,$fn=60);
        translate([-71.6,tl+spc/2,-4]) rotate([0,10,0]) cylinder(r2=2.2,r1=2.8,h=3,$fn=60);
        // screw
        translate([-64.5,tl+spc/2,-3.5]) rotate([0,-2,0]) cylinder(r=1.4,h=12,$fn=60);
        translate([-64.5,tl+spc/2,-3.5]) rotate([0,-2,0]) cylinder(r1=1.8,r2=1.4,h=3,$fn=60);
        
    }

    module ptfe_left()
    {
        // PTFE
        translate([72.3,tl+spc/2,-4]) rotate([0,-22,0]) cylinder(r=2.2,h=50,$fn=60);
        translate([71.6,tl+spc/2,-4]) rotate([0,-10,0]) cylinder(r2=2.2,r1=2.8,h=3,$fn=60);
        // screw
        translate([64.5,tl+spc/2,-3.5]) rotate([0,2,0]) cylinder(r=1.4,h=12,$fn=60);
        translate([64.5,tl+spc/2,-3.5]) rotate([0,2,0]) cylinder(r1=1.8,r2=1.4,h=3,$fn=60);
    }


    module buffer_front()
    {

        difference()
        {

            union()
            {    
                // base shape
                translate([-75,-3,-3]) cube([150,40.5,8]); 
                translate([-75,-3,-3]) cube([18,40.5,13]); 
                translate([57,-3,-3]) cube([18,40.5,13]); 
                
                // hold together screw body
                translate([-55,-3,5]) rotate([-90,0,0]) cylinder(r=8, h=40.5, $fn=6);
                translate([55,-3,5]) rotate([-90,0,0]) cylinder(r=8, h=40.5, $fn=6);

                // nut reinforcement
                translate([-55,37,5]) rotate([-90,0,0]) cylinder(r1=6, r2=5, h=1.85, $fn=6);
                translate([55,37,5]) rotate([-90,0,0]) cylinder(r1=6, r2=5, h=1.85, $fn=6);
            }

            // hold together screws
            translate([-55,-2,5]) rotate([-90,0,0]) cylinder(r=1.8, h=40, $fn=30);
            translate([55,-2,5]) rotate([-90,0,0]) cylinder(r=1.8, h=40, $fn=30);

            // nut trap
            translate([-55,35.5,5]) rotate([-90,0,0]) cylinder(r1=3.15, r2=3.5, h=3.5, $fn=6);
            translate([55,35.5,5]) rotate([-90,0,0]) cylinder(r1=3.15, r2=3.5, h=3.5, $fn=6);

            // nut head
            translate([-55,-6.9,5]) rotate([-90,0,0]) cylinder(r=3.1, h=5, $fn=30);
            translate([55,-6.9,5]) rotate([-90,0,0]) cylinder(r=3.1, h=5, $fn=30); 
     


            // plates and PTFE 

            s=0;
            translate([0,s,0]) plate(); 
            translate([0,s,0]) ptfe_right();

            s1=6.5;
            translate([0,s1,0]) plate(); 
            translate([0,s1,0]) ptfe_left();

            s2=6.5*2;
            translate([0,s2,0]) plate(); 
            translate([0,s2,0]) ptfe_right();

            s3=6.5*3;
            translate([0,s3,0]) plate(); 
            translate([0,s3,0]) ptfe_left();

            s4=6.5*4;
            translate([0,s4,0]) plate(); 
            translate([0,s4,0]) ptfe_right();
             
            s5=6.5*5;
            translate([0,s5,0]) plate(); 



            // edges
            translate([-95,-10,2.6]) rotate([0,10,0]) cube([20,60,20]); 
            translate([75,-10,0.9]) rotate([0,-10,0]) cube([20,60,20]); 

            translate([-95,-10,-24]) rotate([35,0,0]) cube([200,20,20]); 
            translate([-95,30.5,-11.3]) rotate([-35,0,0]) cube([200,20,20]); 

            translate([-80,-21,-5]) rotate([0,0,45]) cube([20,20,20]); 
            translate([-80,29,-5]) rotate([0,0,45]) cube([20,20,20]); 
            translate([82,-21,-5]) rotate([0,0,45]) cube([20,20,20]); 
            translate([80,29,-5]) rotate([0,0,45]) cube([20,20,20]); 



            translate([-40,1,2]) cube([80,32,20]); 
            translate([-47,1,9.5]) rotate([0,45,0]) cube([10,32,10]); 
            translate([33,1,9.5]) rotate([0,45,0]) cube([10,32,10]); 

            translate([75,1.9,0]) rotate([0,-60,0]) cube([20,4.5,30]); 
            translate([75,14.9,0]) rotate([0,-60,0]) cube([20,4.5,30]); 
            translate([75,27.9,0]) rotate([0,-60,0]) cube([20,4.5,30]); 

            translate([-85,8.4,17]) rotate([0,60,0]) cube([20,4.5,30]); 
            translate([-85,21.4,17]) rotate([0,60,0]) cube([20,4.5,30]); 




            // better printing
            difference()
            {
                union()
                {   
                for(i = [15 : 15 : 120])
                {
                    translate([-73+i,5,-3.05]) cube([10,10,0.3]);     
                    translate([-73+i,22,-3.05]) cube([10,10,0.3]);     
                }
                }
                translate([-8,4,-20]) cube([16,12,20]); 

            }
    
    
            //version
            translate([-5,15,-2.75]) rotate([0,180,180]) linear_extrude(height = 0.3) 
            { text("M1",font = "helvetica:style=Bold", size=6, center=true); } 


    }
}


buffer_front();










