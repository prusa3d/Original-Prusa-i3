module extruder_body(){
union(){
difference(){
    // Main
    union(){
        cube([35,44,15]);
        // P.I.N.D.A. Probe mount
        difference(){
       translate([-15.5,40,0])cube([21.5,5,14]);
         translate([9,41,-1]) rotate([0,0,45]) translate([0,-5,-0.1]) cube([10,12,20]);    
        }
        translate([-7.5,17,0])cube([8,8.5,2]); // P.I.N.D.A. and Fan cable tray guide
        //fan nice look
        translate([35,0,0]) cube([10,12,15]);
    }
    // Fan nice look edge cut
    translate([+52.6,-3.49,0]) rotate([0,0,-45-180]) translate([0,-5,-0.1]) cube([10,10,20]);  
    
    // P.I.N.D.A. Probe mount edge cut
    translate([-28.5,40,5]) rotate([0,30,0]) translate([0,-5,-0.1]) cube([10,12,20]);   // Top
    translate([-33,40,-5]) rotate([0,60,0]) translate([0,-5,-0.1]) cube([12,12,20]); // Bottom
    
    
    // P.I.N.D.A. probe mount hole
     translate([35/2,0,6]){
        translate([-23,35,0])rotate([-90,0,0])cylinder(r=14/2, h=8, $fn=6);
        translate([-23,32.99,0])rotate([-90,0,0])cylinder(r=14/2, h=7, $fn=20);
        translate([-23,0,0])rotate([-90,0,0])cylinder(r=8.5/2, h=50, $fn=20);
     }
     
     // P.I.N.D.A. and Fan cable tray cut
     translate([-4.5,20,-1]) cube([4.499,3.5+5,5]);
     // P.I.N.D.A. and Fan cable tray edge cut
     translate([-10,22,-1])rotate([0,0,45]) cube([10,5,10]);
     translate([-13,16.5,-1])rotate([0,0,-45]) cube([10,5,10]);
    
     extruder_nozzle_cut();  
     // larger groove for easy entry
    translate([35/2,0,15]) rotate([-90,0,0]) cylinder(r=7.13, h=20, $fn=120);
     
// Extruder cables path
    translate([33+4,10,-1]) cylinder(r=2, h=17,$fn=30);
    translate([33+4,12,9]) cube([4,4,20], center=true);  
     
    extruder_nozzle_cooling();

}

// Cooling grill
difference(){
    union(){
    // Fins up
        //translate([0,37,0]) rotate([0,0,25]) cube([6,1.4,15]);
        translate([0,32,0]) rotate([0,0,25]) cube([6,1.4,15]);
        //translate([0,27,0]) rotate([0,0,25]) cube([6,1.4,15]);
        translate([0,22,0]) rotate([0,0,25]) cube([6,1.4,15]);
        //translate([0,17,0]) rotate([0,0,25]) cube([6,1.4,15]);
        
        // Structural support
        translate([0,13,11]) rotate([0,0,0]) cube([4,30,1]);
        //translate([0,13,14.5]) rotate([0,0,0]) cube([4,30,0.5]);
    }
    // Trim
    translate([-35,0,0])cube([35,43,15]);
    
}
}

mirror([1,0,0]){
//  Filament visualisation
    %translate([-35/2,-50,15])rotate([-90,0,0])cylinder(r=1.75/2, h=100, $fn=20);

// Motor visualisation
    translate([-42,-42,-1]) %cube([42,42,1]);
    translate([-21,-21,0])%cylinder(r=2.5, h=20, $fn=30);
    translate([-21,-21,8])%cylinder(r=4, h=13, $fn=30);

// MOTOR
difference(){
   union(){
// base
difference(){
    translate([-42,-42,0]) cube([42,42,30]);
    //main cut
    translate([-21,-19.5-10-3,-1]) cube([42,23,32]);
    translate([-15,-49.5,-1]) cube([42,23,32]);
    translate([-51,-33,-1]) rotate([0,65,0]) cube([10,25,10]);
    translate([-35/2+3+1.8+0.5,-41,2+3+2.5])cube([42,42,32]);
    //base round cutout
    translate([-21,-21,-2]) cylinder(r=11.5, h=33, $fn=200);
    
    //filament hole
    translate([-35/2,-42,15])rotate([-90,0,0])cylinder(r=2.5/2, h=20, $fn=20);
    translate([-35/2,-42,15])rotate([-90,0,0])cylinder(r2=2.2/2,r1=3.6/2, h=1.5, $fn=20);
}

//filament guide
translate([-35/2-3,-19,15-4])cube([6,10,6.5]);
difference(){
union(){
translate([-35/2-3,-8.4+2+1.2,0.4]) rotate([45,0,0]) cube([6,15,15]);
translate([-35/2-3,-8.4+2+1.2,0.4+6.5]) rotate([45,0,0]) cube([6,15,15]);    
}
translate([-35/2-4,-1,2]) cube([8,15,25]);
    
}
}
    // Filament ptfe guide cutout

        // PTFE secure ring slot
        translate([-35/2,-3.99,15])rotate([-90,0,0]) cylinder(r=7.5/2, h=5, $fn=50);    // Bottom hole
        translate([-35/2,-3.99,21])rotate([-90,0,0]) cylinder(r=7.5/2, h=5, $fn=50);    // Top hole     
        translate([-35/2 - 7.5/2,-3.99,21])rotate([-90,0,0])cube([7.5,6,8]);            // Slot cut
    
        // PTFE tube slot
        translate([-35/2,-23,15])rotate([-90,0,0]) cylinder(r=4.3/2, h=25, $fn=50);     // Main hole
        translate([-35/2,-9,15])rotate([-60,0,0]) rotate([0,0,10])cylinder(r=4.3/2, h=25, $fn=50); // Top hole
        // Slot cut
        difference(){
        translate([-35/2,-8,14])rotate([-60,0,0]) rotate([0,0,30])cylinder(r=4.85/2, h=25, $fn=6);
        translate([-22,-20,5])cube([10,50,10]);
        }
        
       // drive pulley cutout
           translate([-21,-21,8])cylinder(r=4, h=13, $fn=80);
       // idler bearing cutout
           translate([-21+13,-21,8])cylinder(r=8.5, h=13, $fn=80);

             translate([-21,-27,8])cube([10,10,13]); // Trim
 
       
       // filament clean hole
           translate([-43,-21,15])rotate([90,0,90])cylinder(r=20/2, h=20, $fn=6);
           translate([-43,-21,15])rotate([90,0,90])cylinder(r1=27/2,r2=20/2, h=5, $fn=6);
           
       // round corners
        translate([-2.5,-42+2.5,0]) rotate([0,0,-45]) translate([0,-5,-0.1]) cube([10,10,10]);   
        translate([-42+2.5,-42+2.5,0]) rotate([0,0,-45-90]) translate([0,-5,-0.1]) cube([10,10,33]);  
        
           
           
           // idler nut traps Bottom
           translate([-23,-53.5,7.5-(5.5/2)-0.1])cube([2.5,20,5.7]); // Nut trap
           translate([-32,-36.5-2.2,7.5-1.5])cube([40,4,3]);          // Screw hole
           
           // idler nut traps Top
           translate([-23,-53.5,30-7.5-(5.5/2)-0.1])cube([2.5,20,5.7]); // Nut trap
           translate([-32,-36.5-2.2,30-7.5-1.5])cube([40,4,3]);          // Screw hole
       }
   }
   }
   
module extruder_cover(){
union(){
difference(){
    // Main
    union(){
        translate([0,0,15]) cube([35,44,15]);
        
        translate([34,42,23]) cube([1,18,7]);
        translate([34,56,23]) cube([4,5,7]);
        //fan nice look
        translate([35,0,15]) cube([10,12,15]);
    }
    // Fan nice look edge cut
    translate([+52.6,-3.49,0]) rotate([0,0,-45-180]) translate([0,-5,-0.1]) cube([10,10,32]);  
    
    translate([38,58.3,20]) rotate([0,0,45]) cube([5,5,15]);
    
     extruder_nozzle_cut();  

     
// Extruder cables path
    translate([33+4,10,-1]) cylinder(r=2, h=32,$fn=30);
    translate([33+4,12,22]) cube([4,4,20], center=true);  
     
    extruder_nozzle_cooling();

}

// 5015 print fan mount pillar
translate([6,33,27])rotate([0,0,67]) cube([8,24,3]);    // Connecting cube
translate([35/2+12-42.75,6.5+38.5,25])cylinder(r=5.8, h=5, $fn=6); // Hexagon at the end

// Print fan nozzle mount - right
    translate([5,61-5,24])cylinder(r=7.5/2, h=6, $fn=6);
    

// Print colling airway
     translate([8,44,28])rotate([0,0,0]) cube([27,9,2]);
    difference(){
     translate([8,51.6,28.5])rotate([-45,0,0]) cube([27,7,2]);
     translate([7,57,20])rotate([0,0,0]) cube([29,7,12]);
     translate([7,53,22])rotate([0,0,0]) cube([29,7,2]);
    }    
    
    translate([34,44,24])rotate([0,0,0]) cube([1,13,6]);  
    translate([8-5,44,24])rotate([0,0,0]) cube([1+5,13,6]);  
    
// Print fan nozzle mount - left
    //#difference(){
        //union(){
           //    #translate([34,44,24])rotate([0,0,0]) cube([5,10,6]);  
             //  #translate([37,61-5,24])cylinder(r=7.5/2, h=6, $fn=6);
        //}
        //#translate([24,51.6,30.5])rotate([-45,0,0]) cube([10,7,8]);
        //translate([37,61-5,23])cylinder(r=1.4, h=8, $fn=30);
    //}
    
// Cooling grill
difference(){
    union(){
    // Fins up
        //translate([0,37,0]) rotate([0,0,25]) cube([6,1.4,15]);
        translate([0,32,15]) rotate([0,0,25]) cube([6,1.4,15]);
        //translate([0,27,0]) rotate([0,0,25]) cube([6,1.4,15]);
        translate([0,22,15]) rotate([0,0,25]) cube([6,1.4,15]);
        //translate([0,17,0]) rotate([0,0,25]) cube([6,1.4,15]);
        
        // Structural support
        translate([0,13,19]) rotate([0,0,0]) cube([4,30,1]);
        //translate([0,13,14.5]) rotate([0,0,0]) cube([4,30,0.5]);
    }
    // Trim
    translate([-35,0,0])cube([35,43,35]);
    
}
}

   }
   
   
   
 module extruder_mount_holes(){
     
    // Carriage mount right  
    translate([35/2-12,6.5,-0.01])cylinder(r=1.65, h=5, $fn=30); // Bottom hole
    translate([35/2-12,6.5,6.5+0.2])cylinder(r=1.65, h=5, $fn=30); // Middle hole
    translate([35/2-12,6.5,12.5+0.2])cylinder(r=1.65, h=14.3-0.2, $fn=30); // Top hole
    translate([35/2-12,6.5,27])cylinder(r=3.1, h=5, $fn=30); // Head cut
    translate([35/2-12-6.5,6.5-2.85,10])rotate([0,0,0]) cube([9.5,5.7,2.5]); // Nut Trap top
    //translate([35/2-12,6.5,10])cylinder(r=3.3, h=2.5, $fn=6);
     
    translate([35/2-12-6.5,6.5-2.85,4])rotate([0,0,0]) cube([9.5,5.7,2.5]); // Nut trap bottom
    //translate([35/2-12,6.5,4])cylinder(r=3.3, h=2.5, $fn=6);
     
    translate([35/2-12-6.5+5,6.5-2.85-2.5,3])rotate([0,0,0]) cube([5,0.4,10.5]); // Nut Trap reinforcement
    
    translate([35/2-12-6.5+5,6.5-2.85+2.5+5,3])rotate([0,0,0]) cube([5,0.4,10.5]); // Nut Trap reinforcement 
     
     
    // Carriage mount left
    translate([35/2+12+11,6.5-2,6.2])cylinder(r=1.7, h=20.8-0.2, $fn=30);    // Screw hole
    translate([35/2+12+11,6.5-2,-0.01])rotate([0,0,-15])cylinder(r=3.2, h=6, $fn=6);  // Nut trap    
     translate([35/2+12+11,6.5-2,-0.01])rotate([0,0,-15])cylinder(r2=3.2, r1=4, h=3, $fn=6);  // Nut trap  
     translate([35/2+12+11,6.5-2,27])cylinder(r=3.1, h=5, $fn=30); // Head cut
    
    // Fan nozzle mount hole
    translate([5,61-5,20])cylinder(r=3/2, h=12, $fn=30);
     
    // 5015 print fan top left mount hole 
    translate([35/2+12,6.5,-0.01])cylinder(r=1.65, h=35, $fn=30); // Screw cut
    translate([35/2+12,6.5,11]) rotate([0,0,30])cylinder(r=3.2, h=17.01, $fn=6); // Nut Trap
    translate([35/2+12,6.5,14]) rotate([0,0,30])cylinder(r=3.5, h=11.01, $fn=6); // Nut easy entry cut

    // 5015 print fan bottom right mount hole 
    translate([35/2+12-42.75,6.5+38.5,15])cylinder(r=1.65, h=20, $fn=30); // Screw cut
    translate([35/2+12-42.75,6.5+38.5,15]) cylinder(r=3.2, h=13.01, $fn=6); // Nut Trap


    // Motor mount holes
translate([21,-21,0]){
            // Top right
            translate([-15.5,-15.5,4]) cylinder(r=1.65, h=50, $fn=30);  // Screw hole
            translate([-15.5,-15.5,-1]) cylinder(r=3.1, h=4.5, $fn=30); // Head cut
    
            // Bottom right
            translate([-15.5,15.5,4]) cylinder(r=1.65, h=50, $fn=30);   // Screw hole
            translate([-15.5,15.5,-1]) cylinder(r=3.1, h=4.5, $fn=30);  // Head cut
    
            // Top left
            translate([15.5,-15.5,4]) cylinder(r=1.65, h=50, $fn=30);   // Screw hole
            translate([15.5,-15.5,-1]) cylinder(r=3.1, h=4.5, $fn=30);  // Head cut
    
            // Bottom left
            translate([15.5,15.5,4]) cylinder(r=1.65, h=50, $fn=30);    // Screw hole
            translate([15.5,15.5,-1]) cylinder(r=3.1, h=4.5, $fn=30);   // Head cut
           
           }
           

     }  
     
 
     
 module extruder_nozzle_cut(){
     
     //Nozzle cutout
    // Top
    translate([35/2,-0.001,15]) rotate([-90,0,0]) cylinder(r=8.13, h=3.7+0.5, $fn=120);
    // Groove
    translate([35/2,0,15]) rotate([-90,0,0]) cylinder(r=6.13, h=20, $fn=120);
    // Bottom
    translate([35/2,9.8,15]) rotate([-90,0,0]) cylinder(r=8.13, h=3.7, $fn=120);
    // Main body
    translate([35/2,13,15]) rotate([-90,0,0]) cylinder(r=11.53, h=33.001, $fn=80);
     
     }
     
module extruder_nozzle_cooling(){
    
    // Nozzle cooling airway
    difference(){
        union(){
    translate([31.001,43-15,15])rotate([0,90,0])cylinder(r2=14, r1=11.5, h=4, $fn=100);
    translate([-1,43-15-2.5,15])rotate([0,90,0])cylinder(r=11.5, h=40, $fn=80);
    translate([-1,43-15,15])rotate([0,90,0])cylinder(r=11.5, h=40, $fn=80);
    translate([-1,43-15+2.5,15])rotate([0,90,0])cylinder(r=11.5, h=40, $fn=80);
        }
    translate([-10,40,0])cube([10,12,14]);     
    translate([-9,40,8])cube([10,10,4]);   
    }
    
// Fan screws 
    translate([35.001,40,3])rotate([0,-90,0])cylinder(r=1.5, h=8, $fn=20);   
    translate([35.001,40-24,3])rotate([0,-90,0])cylinder(r=1.35, h=8, $fn=20);
    translate([35.001,40,30-3])rotate([0,-90,0])cylinder(r=1.5, h=8, $fn=20);   
    translate([35.001,40-24,30-3])rotate([0,-90,0])cylinder(r=1.35, h=8, $fn=20);
    
    }

       //extruder_body();
       //extruder_mount_holes();
       //extruder_cover();

