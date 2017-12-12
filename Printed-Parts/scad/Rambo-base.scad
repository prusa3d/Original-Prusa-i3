// PRUSA iteration4
// RAMBo base
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


// main body
module main_body()
{
  
    // side panel
    cube([118.5,92,2]);  

    // upper panel
    cube([1.5,92,35]);  
    // rear panel
    translate( [0,90,0]) cube([105.5,2,35]);  
    
    // upper panel frame reinforcement
    translate([0,0,1]) cube([5.5,7,34]);  

    // side panel reinforcement
    translate([0,0,1]) cube([9,92,3]);  
    translate([98,0,0]) cube([9,92,4]); 
    
    // raspberry
    translate([21,81,0]) cylinder( h = 4.5,r = 2.5,$fn=30);   
    translate([21+58,81,0]) cylinder( h = 4.5,r = 2.5,$fn=30); 
   
   // heatbed cable mounting reinforcement
    translate([63,86.0,0.5]) cube([15,5,34.5]); 
    translate([75,99,28]) rotate([90,0,0]) cylinder(h=15,r=13,$fn=30); 
    translate([75,101,28]) rotate([90,0,0]) cylinder(h=2,r1=9,r2=13,$fn=30); 
    translate([70.3,88,13.2]) rotate([-45,0,0]) cube([9.5,5,9]); 
    translate([70.3,84,16.2]) rotate([-45,0,0]) cube([9.5,8,5]); 


   

    difference()
    {
        // bottom side reinforcement    
        translate([98,86,0]) cube([7.5,6,35]); 
        translate([96,79,0]) rotate([0,0,45]) cube([7.5,6,36]); 
    }
    translate([0,85,0]) cube([5.5,7,35]); 

    // screw mounting block
    translate([54,84,0]) cube([11,7,35]);  

    // frame side panel
    translate([20,0,0]) cube([80,3,5]);  

    // RAMBo mounting holes
    translate([102.5,14,1]) rotate([0,0,90]) cylinder( h = 7,r = 5.5,$fn=6); 
    translate([102.5,75,1]) rotate([0,0,90]) cylinder( h = 7,r = 5.5,$fn=6); 
    translate([7.5,14,1]) cylinder( h = 7,r = 5.5,$fn=6); 
    translate([7.5,75,1]) cylinder( h = 7,r = 5.5,$fn=6); 

    // corners reinforcement
    translate([0,75,1]) cube([13,16,6]);  
    translate([0,70.25,1]) cube([7.5,11,6]); 
    translate([0,7.75,1]) cube([7.5,11,6]); 
    translate([0,0,1]) cube([13,14,6]); 

    // frame mounting screw blocks
    //upper
    translate([1,0,0]) cube([28,4,10]);  
    translate([18.45,0,0]) cube([3,4,5.5] ); 

    //lower
    translate([98,0,0]) cube([20.5,4,10]); 

    // door closing corner
    translate([102,88.5,35]) cylinder( h = 3,r1=2.5,r2=1,$fn=30);   

    // doors pin upper
    translate([2,85,31]) cube([6,7,4] ); 
    translate([4,88.5,35]) cylinder( h = 3,r1=2.5,r2=1,$fn=30);   

    // x-axis cables entry hole body
    translate([89,2,0]) cylinder( h = 5,r = 6,$fn=6);   
    
    // extruder cable holder
    translate([0,0,15]) cube([5,40,20]);  
    translate([5,28,28]) rotate([0,90,0]) cylinder(h=5,r1=10,r2=8,$fn=30);  
    difference()
    {
        translate([-2,0,28]) rotate([0,45,0]) cube([9.8,25,9.8]);  
        translate([-5,-5,15]) cube([5,40,20]);  
        translate([10,-5,15]) cube([5,40,20]);  
    }
    translate([-6,28,28]) rotate([0,90,0]) cylinder(h=6,r=13,$fn=30);  
    translate([-10,28,28]) rotate([0,90,0]) cylinder(h=4,r1=8,r2=13,$fn=30);  
    
    difference()
    {
        translate([-5.5,23.5,16]) rotate([0,45,0]) cube([8,9,8]);  
        translate([1,0,10]) cube([5,40,20]); 
    }
}

 
module ventilation_holes()
{
     for ( i = [-5 : 8] )
        {
            translate([46 + (i*5.5),10.5,-1]) cube([3.65,19+49.0,1.2]);
            translate([46 + (i*5.5),10.5,-1]) cube([3.65,18,10]);
            translate([46 + (i*5.5),10.5+25,-1]) cube([3.65,18,10]);
            translate([46 + (i*5.5),10.5+50,-1]) cube([3.65,18,10]);
        }
}


module cutouts(){
    
    
    // extruder cable holder
    translate([1.5,7,14.8]) rotate([0,45,0]) cube([3,40,5]); 
    translate([-20,28,28]) rotate([0,90,0]) cylinder( h = 40,r = 5.5,$fn=30); 
    translate([-15,7,35]) cube([30,40,15]); 
    translate([-15,25,30]) cube([30,6,8]); 
    
    translate([-15,12,28]) cube([15,30,8]); 
    translate([-12,16.5,28]) cube([15,23,8]); 
    translate([-3,28,28]) rotate([35,90,0]) cylinder( h = 24,r = 1.6,$fn=30); 
    
    translate([-2.7,20.0,22]) rotate([0,0,90]) cylinder( h = 10,r = 1.6,$fn=30); 
    translate([-2.7,20.0,12]) rotate([0,0,90]) cylinder( h = 13,r = 3.1,$fn=6); 
    translate([-2.7,36,10]) rotate([0,0,90]) cylinder( h = 33,r = 1.6,$fn=30); 
    translate([-2.7,36,12]) rotate([0,0,90]) cylinder( h = 13,r = 3.1,$fn=6); 
    
    // side     
    translate([12,19,1]) cube([85.5,51,3]);   

    // RAMBo M3 screws
    translate([7.5,14,-1]) cylinder( h = 10,r = 1.9,$fn=30);  
    translate([102.5,14,-1]) cylinder( h = 10,r = 1.9,$fn=30);  
    translate([102.5,75,-1]) cylinder( h = 10,r = 1.9,$fn=30);  
    translate([7.5,75,-1]) cylinder( h = 10,r = 1.9,$fn=30);     

    translate([7.5,14,6]) cylinder( h = 3,r1 = 1.9,r2=2.4,$fn=30);  
    translate([102.5,14,6]) cylinder( h = 3,r1 = 1.9,r2=2.4,$fn=30);  
    translate([102.5,75,6]) cylinder( h = 3,r1 = 1.9,r2=2.4,$fn=30);  
    translate([7.5,75,6]) cylinder( h = 3,r1 = 1.9,r2=2.4,$fn=30);     

    translate([2,0,0])ventilation_holes();
    
    // frame mounting screws
    //upper    
    translate([18.5,-2,15.6]) rotate([0,45,0]) cube([15,10,10] );     
    translate([16.5,8,5]) rotate([90,0,0]) cylinder( h = 10,r = 1.6,$fn=30);   
    translate([16.5,9,5]) rotate([90,0,0]) cylinder( h = 5,r = 3,$fn=30);   
    translate([15.15,-2,5]) cube([2.7,15,10] ); 
    translate([15.1,-2,7]) rotate([0,5,0]) cube([2.8,15,10] ); 
    translate([15.1,-2,7]) rotate([0,-5,0]) cube([2.8,15,10] ); 


    //lower
    translate([110.5,9,5]) rotate([90,0,0]) cylinder( h = 10,r = 1.6,$fn=30);   
    translate([110.5,9,5]) rotate([90,0,0]) cylinder( h = 5,r = 3,$fn=30);       
    translate([118.5,-2,6]) rotate([0,-45,0]) cube([5,15,15] ); 
    translate([94.5,-2,8.5]) rotate([0,45,0]) cube([5,8,15] ); 
    translate([0,-2,-5]) cube([120,15,5] ); 
    translate([109.15,-2,5]) cube([2.7,15,10] ); 
    translate([109.3,-2,6.5]) rotate([0,5,0]) cube([2.5,15,10] ); 
    translate([109.2,-2,6.5]) rotate([0,-5,0]) cube([2.5,15,10] ); 

    // USB connector hole
    translate([-1,41.5,11]) cube([5.5,13,11]);  

    // reset button
    translate([-2,65,14]) rotate([0,90,0]) cylinder( h = 10,r = 2,$fn=30);  

    // door closing screw
    translate([58.5,88,-1]) cylinder( h = 43,r = 1.9,$fn=30);  



    // new heatbed cable holder
    translate([75,105,28]) rotate([90,90,0]) cylinder(h=30,r=4.0,$fn=30); 
    translate([67,95,15.5]) rotate([0,0,0]) cylinder(h=10,r=3.2,$fn=6); 
    translate([83,95,15.5]) rotate([0,0,0]) cylinder(h=10,r=3.2,$fn=6); 
    translate([67,95,14]) rotate([0,0,0]) cylinder(h=15,r=1.6,$fn=30); 
    translate([83,95,14]) rotate([0,0,0]) cylinder(h=15,r=1.6,$fn=30);
    translate([60,92,28]) cube([30,13,14]);  
    translate([60,80,35]) cube([30,13,14]);
    translate([72.5,80,30]) cube([5,13,14]);
    translate([75,92,25]) rotate([120,0,0]) cylinder(h=25,r=1.6,$fn=30);
    translate([62.5,88,28]) cube([25,15,14]);

    // nut traps HEX  
    translate([7.5,14,-1]){
    cylinder( h = 4,r = 3.2,$fn=6);  
    rotate([0,0,0]) resize([0,2,0]) cylinder( h = 4,r = 3.5,$fn=6);  
    rotate([0,0,60]) resize([0,2,0]) cylinder( h = 4,r = 3.5,$fn=6);  
    rotate([0,0,120]) resize([0,2,0]) cylinder( h = 4,r = 3.5,$fn=6);  
    }

    translate([102.5,14,-1]){
    cylinder( h = 4,r = 3.2,$fn=6);  
    rotate([0,0,0]) resize([0,2,0]) cylinder( h = 4,r = 3.5,$fn=6);  
    rotate([0,0,60]) resize([0,2,0]) cylinder( h = 4,r = 3.5,$fn=6);  
    rotate([0,0,120]) resize([0,2,0]) cylinder( h = 4,r = 3.5,$fn=6);  
    }

    translate([102.5,75,-1]){
    cylinder( h = 4,r = 3.2,$fn=6);  
    rotate([0,0,0]) resize([0,2,0]) cylinder( h = 4,r = 3.5,$fn=6);  
    rotate([0,0,60]) resize([0,2,0]) cylinder( h = 4,r = 3.5,$fn=6);  
    rotate([0,0,120]) resize([0,2,0]) cylinder( h = 4,r = 3.5,$fn=6);  
    }

    translate([7.5,75,-1]){
    cylinder( h = 4,r = 3.2,$fn=6);  
    rotate([0,0,0]) resize([0,2,0]) cylinder( h = 4,r = 3.5,$fn=6);  
    rotate([0,0,60]) resize([0,2,0]) cylinder( h = 4,r = 3.5,$fn=6);  
    rotate([0,0,120]) resize([0,2,0]) cylinder( h = 4,r = 3.5,$fn=6);  
    }

    translate([7.5,14,-1]) cylinder( h = 1.5,r1 = 6,r2=3.2,$fn=6);  
    translate([102.5,14,-1]) cylinder( h = 1.5,r1 = 6,r2=3.2,$fn=6);  
    translate([102.5,75,-1]) cylinder( h = 1.5,r1 = 6,r2=3.2,$fn=6);  
    translate([7.5,75,-1]) cylinder( h = 1.5,r1 = 6,r2=3.2,$fn=6);  
    translate([58.5,88,-1]) cylinder( h = 4,r = 3.2,$fn=30);   

    // door closing corners
    translate([8,80,28]) rotate([0,0,45]) cube([5,5,10] ); 
    translate([106,81,4]) rotate([0,0,45]) cube([5,5,40] ); 

    // inner edges cutout
    translate([54,79.5,2]) rotate([0,0,45]) cube([5,5,50] ); 
    translate([6,80,7]) rotate([0,0,45]) cube([5,5,24] ); 

    // x axis cable hole
    translate([89,2,-1]) cylinder( h = 10,r = 4,$fn=6);   
    translate([80,-5,-1]) cube([15,5,10] ); 

    // large corner coutout
    translate([-27,80,-54]) rotate([50,0,45]) cube([50,50,50] ); 
    translate([137.5,60,-10]) rotate([0,0,45]) cube([50,50,50] ); 
}

  


module RAMBo_base()
{
    difference()
    {
            difference()
            {
                main_body();
                cutouts();
            }
            
            //BottomCubic();
            translate([14.5,10,-2]) cube([4,24,10]); 
            translate([16.5,10,-2]) cylinder( h = 20,r = 2,$fn=30);  
            translate([16.5,34,-2]) cylinder( h = 20,r = 2,$fn=30);  
            
            // lightening slots
            translate([100,21,2] ) cube([5,48,5]);     
            translate([3,21,2] ) cube([4.5,48,5]);     

            translate([115,68,1.5]) rotate([0,0,90]) linear_extrude(height = 0.8) 
            {text("R1",font = "helvetica:style=Bold",size=6,center=true); }    
    }
}





RAMBo_base();









