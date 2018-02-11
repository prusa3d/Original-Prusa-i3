// PRUSA iteration4
// Extruder body
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

 
module m3head()
{
intersection()
    {
        translate([30,5,9])cylinder(r=3.1,h = 25, $fn=30); // head cut
        translate([30,5,17-3.5]) cube([6.2,3.4,1], center=true);
    }
    translate([30,5,17-4]) cube([3.4,3.4,1], center=true);
    translate([30,5,17-3.5])cylinder(r=3.1,h = 20, $fn=30); // head cut
}


module m3nuthead()
{
    intersection()
    {
    translate([30,5,9])cylinder(r=3.1,h = 25, $fn=6); // head cut
    translate([30,5,17-3.5]) cube([6.2,3.4,1], center=true);
    }
    translate([30,5,17-4]) cube([3.4,3.4,1], center=true);
    translate([30,5,17-3.5])cylinder(r=3.1,h = 20, $fn=6); // head cut
}
 

module grill()
{
    difference()
        {
            translate([24,-5,-17]) cylinder( h=17, r=20.4, $fn=50 ); 
            translate([24,-5,-21]) cylinder( h=23, r=19, $fn=50 ); 
            translate([23,-30,-30]) cube([30,60,32]);   
            translate([-11,-30,-30]) cube([30,60,32]);   
            translate([-19,-20,-30]) cube([60,60,32]);   
        }
        translate([23,-24.65,-17]) cylinder( h=17, r=0.72, $fn=50 ); 
        translate([19,-24.01,-17]) cylinder( h=17, r=0.72, $fn=50 ); 
}

module pinda_holder()
{
        difference()
        {
            union()
            {
            translate([-32,-45,-20]) cube([18,15,20]);   
            translate([-26,-18,-3]) cube([9,11,3]);     
            translate([-23,-38,-3]) cube([6,15,3]);  
            }
        translate([-23,-5,-12]) rotate([90,0,0]) cylinder( h=50, r=4.05, $fn=30 ); 
        translate([-35,-38.5,-5]) rotate([0,90,0]) cylinder( h=25, r=1.6, $fn=30 );
        
        translate([-33,-38.5,-5]) rotate([0,90,0]) cylinder( h=6, r=3.1, $fn=30 );
        
        translate([-35,-52.5,-24]) rotate([0,0,45]) cube([10,10,30]);   
        translate([-36.5,-39,-25]) rotate([0,0,45]) cube([20,10,30]);   
        translate([-11,-36,-26]) rotate([0,0,50]) cube([10,10,23]);   
        translate([-22.5,-30,-20]) rotate([0,0,45]) cube([10,8,23]);   
        translate([-35,-29,-30]) rotate([45,0,0]) cube([30,10,10]);   
        translate([-35,-46,-30]) rotate([45,0,0]) cube([30,10,10]);   
        translate([-41,-52,-19.5]) rotate([0,45,0]) cube([12,30,10]);  
        translate([-12.5,-53,-21]) rotate([0,0,45]) cube([10,10,30]);   
        translate([-10,-54,-25]) rotate([0,0,65]) cube([14.5,10,30]);   
            
        translate([-19.6,-41.5,-8.1]) cube([2.4,6,10]);       
        translate([-24,-48,-10]) cube([1.4,20,12]);       
        translate([-23.7,-48,-10]) rotate([0,-5,0]) cube([1.4,20,12]);       
        translate([-25.5,-48,-0]) rotate([0,45,0]) cube([3,30,3]);       
      
        translate([-17.5,-37,-22]) cube([5,7,5]);   
        
        // hook cut
        translate([-23,-20,-3.5]) cube([6,8,4.5]);   
        translate([-26,-10,-3.5]) rotate([0,0,45]) cube([5,5,5]);   
        translate([-26,-23,-3.5]) rotate([0,0,45]) cube([5,5,5]);  
       
        translate([-29,-34,-16]) cube([1,1,15]);   
        translate([-29,-43,-16]) cube([1,1,15]);   
        translate([-17,-33,-16]) cube([1,1,15]);   
        
        }
}


module extruder_body()
{
difference()
{

        union()
        {
            // cables hook above fan
            difference()
            {
                translate([22.5,-3,-17]) cube([9,8.75,17]);  
                translate([33,-0.0,-21]) rotate([0,0,45]) cube([12,12,22]);  
            }

            difference()
            {
                // base body shape
                union()
                {
                    translate([-17,-36.5,-30.5]) cube([42,86.5,30.5]);
                    translate([16,-38.5,-20]) rotate([0,0,45]) cube([3,3,20]);  
                }

                translate([22.5,-3,-20]) cube([9,8.75,20]);  

                //opening to pulleys from motor side
                translate([4,27,-33]) rotate([0,0,0]) cylinder( h=40, r=12, $fn=30 );  
                
                // idler cut
                difference()
                {
                    translate([-39,15,-33.5]) cube([44,24,32]);
                    difference()
                    {
                        translate([-12,5.5,-4.5]) rotate([0,0,30]) cube([12,10,3]);
                        translate([-39,15,-36]) cube([44,24,32]);
                    }
                }
                translate([-20,9.5,-36.5]) rotate([0,0,30])cube([20,20,32]);
                translate([-26,29,-36.5]) cube([20,22,32]);
                translate([-18,24,-36.5]) rotate([0,0,45]) cube([20,20,32]);
                translate([-26,22,-33.5]) rotate([0,0,45]) cube([20,20,32]);
                translate([-26,9,-33.5]) rotate([0,0,30]) cube([20,20,32]);
            }

            // bottom pulley space 
            difference()
            {
                translate([-4,15,-30.5]) cube([26,6.5,30.5]);
                translate([-8,16.5,-36]) rotate([0,0,45]) cube([10,10,32]);
            }
            translate([-8,15,-4]) cube([30,6.5,4]);
            translate([15.5,-44,-17]) cube([5,8,17]);

            // idler tension screw heads
            translate([3,18.5,-25]) rotate([0,90,0]) cylinder( h=22, r=3,r2=5, $fn=30 );  
            translate([3,18.5,-10]) rotate([0,90,0]) cylinder( h=22, r=3,r2=5, $fn=30 );  

            // filament entry to hotend
            difference()
            {
                translate([0,10.5,-26]) rotate([0,0,45]) cube([9,9,15]);
                translate([-5,25,-17]) rotate([30,0,0]) cube([10,10,10]);            
                translate([-5,18,-30]) rotate([-45,0,0]) cube([10,10,10]);            
                translate([-13,14,-26]) cube([10,12,20]);      
            }


            // filament entry 
            difference()
            {
                translate([0,30.5,-26]) rotate([0,0,45]) cube([12,12,21]);
                translate([-10,19,-13]) rotate([-40,0,0]) cube([20,10,25]);            
                translate([-5,23,-27]) rotate([-45,0,0]) cube([10,10,10]);            
                translate([-14,30,-29]) cube([10,12,25]);      
                translate([3,30,-29]) cube([10,12,30]);      
                translate([-5,45,-29]) cube([10,12,25]);      
            }

            
        }
    

    translate([4,27,-33]) rotate([0,0,0]) cylinder( h=4, r=15, $fn=30 );
    translate([4,27,-32]) rotate([0,0,0]) cylinder( h=4, r=13, $fn=30 );
        
    // side entry to pulleys
    translate([5,32,-18]) rotate([0,90,0]) cylinder( h=40, r=8, $fn=6 );  
    translate([18,32,-18]) rotate([0,90,0]) cylinder( h=10, r1=8, r2=11, $fn=6 );  
        
    // cover cutout
    translate([-18,-39,-49]) cube([44,45,32]);
    
        
    // hotend cooling tube input
    translate([12,-21.5,-20]) rotate([0,90,0]) cylinder( h=10, r2=20.5, r1=12, $fn=80 ); 
    translate([1,-20.5,-20.5]) rotate([0,84,0]) cylinder( h=25, r2=17.5, r1=12, $fn=80 ); 
    translate([-10,-35,-40.55])  cube([30,26,32]);        
    translate([0,-35,-38.8])  cube([20,14,32]);        
    
    // hotend cooling tube OUTPUT
    difference()
    {
        translate([-28,-35,-34]) rotate([0,15,0]) cube([44,26,32]);        
        translate([-18,-53.5,-30]) rotate([0,0,65]) cube([20,20,32]);        
    }
    translate([-10,-35,-17.5]) rotate([0,0,0]) cube([10,26,12]);        
      
    // e3d nozzle cut
    translate([0,-9,-17]) rotate([90,0,0]) cylinder( h=60, r=11.1, $fn=50 );        
    translate([0,-9,-17]) rotate([90,0,0]) cylinder( h=26, r=11.5, $fn=50 );        
    translate([0,-3.4,-17]) rotate([90,0,0]) cylinder( h=10, r=8.05, $fn=50 );        
    translate([0,8,-17]) rotate([90,0,0]) cylinder( h=5.6, r=8.05, $fn=50 );        
    translate([0,8.9,-17]) rotate([90,0,0]) cylinder( h=3, r=9, $fn=50 );        
    translate([0,4,-17]) rotate([90,0,0]) cylinder( h=8, r=6.05, $fn=50 );        
    translate([0,2.5,-17]) rotate([90,0,0]) cylinder( h=2, r1=8.05, r2=7, $fn=50 );        

    // filament PTFE and entry from hotend
    translate([0,10,-17]) rotate([90,0,0]) cylinder( h=10, r=3.5, $fn=50 );
    translate([0,30,-17]) rotate([90,0,0]) cylinder( h=80, r=2.1, $fn=50 );
    translate([0,18,-17]) rotate([90,0,0]) cylinder( h=12, r1=2, r2=4.3, $fn=50 );
    translate([0,16,-17]) rotate([110,0,0]) cylinder( h=13, r1=2, r2=4, $fn=50 );
    translate([0,16,-17]) rotate([100,0,0]) cylinder( h=13, r1=2, r2=4, $fn=50 );
    translate([0,80,-17]) rotate([90,0,0]) cylinder( h=80, r=1.0, $fn=50 );
    
    // upper PTFE housing
    translate([0,50.8,-17]) rotate([90,0,0]) cylinder( h=4, r=2.1, $fn=50 );
    translate([0,49,-17]) rotate([90,0,0]) cylinder( h=4.5, r=1.5, $fn=50 );
    translate([0,51,-17]) rotate([90,0,0]) cylinder( h=22, r=1.1, $fn=50 );
    translate([0,41,-17]) rotate([90,0,0]) cylinder( h=5, r1=2, r2=1, $fn=50 );
    translate([1,46.5,-17.5]) cube([2,4,1]);  
    translate([1,48,-17.5]) rotate([-30,0,0]) cube([2,4,1]);  
    translate([0,10,-17]) rotate([90,0,0]) cylinder( h=3, r=7, $fn=50 );
    
    // motor screws
    translate([-11.5,11.5,-40]) rotate([0,0,0]) cylinder( h=60, r=1.65, $fn=50 );    
    translate([19.5,11.5,-40]) rotate([0,0,0]) cylinder( h=60, r=1.65, $fn=50 );    
    translate([-11.5,42.5,-40]) rotate([0,0,0]) cylinder( h=60, r=1.65, $fn=50 );    
    translate([19.5,42.5,-40]) rotate([0,0,0]) cylinder( h=60, r=1.65, $fn=50 );     

    translate([-11.5,11.5,-3.75]) rotate([0,0,0]) cylinder( h=5, r=3.1, $fn=50 );    
    translate([19.5,11.5,-3.75]) rotate([0,0,0]) cylinder( h=5, r=3.1, $fn=50 );    
    translate([-11.5,42.5,-3]) rotate([0,0,0]) cylinder( h=4, r=3.1, $fn=50 );    
    translate([19.5,42.5,-4.5]) rotate([0,0,0]) cylinder( h=5, r1=1.6,r2=2.4, $fn=50 ); 

 
    // better printing 
    translate([-10.5,6.5,-17]) m3head();
    translate([-41.5,6.5,-17]) m3head();
    translate([-41.5,37.5,-16.2]) m3head();
    translate([-13,-2,-26]) m3nuthead();
     
    translate([-8,16.5,-33.5]) rotate([0,0,45]) cube([10,10,32]);
    translate([-18,16.5,-33.5]) cube([10,10,32]);
    
    // hold together screws
    translate([-20.5,-3.2,-14]) cube([12,5.6,2.1]);
    translate([-20.5,-3.2,-5]) cube([12,5.6,2.1]);
    translate([-13.2,-3.2,-14.3]) cube([3.4,5.6,2]);
    translate([-13.2,-2.2,-14.6]) cube([3.4,3.4,2]);
    
    translate([-13.2,-3.2,-5.3]) cube([3.4,5.6,2.3]);
    translate([-13.2,-2.2,-5.6]) cube([3.4,3.4,2.3]);

   
    translate([-11.5,-0.5,-35]) cylinder( h=65, r=1.65, $fn=50 ); 
    translate([-11.5,-0.5,-2]) cylinder( h=5, r1=1.65, r2=2.2,$fn=50 ); 
    translate([11.5,-0.5,-30]) cylinder( h=60, r=1.65, $fn=50 );
    translate([11.5,-0.5,-3]) cylinder( h=5, r1=1.65, r2=2.2,$fn=50 );
    
    translate([11.5,-0.5,-16]) cylinder( h=5, r1=3.5, r2=3.1, $fn=6 );
    translate([11.5,-0.5,-21]) cylinder( h=7, r=3.5, $fn=6 );
    

    // idler tension screws
    translate([9,18.5,-25]) rotate([0,90,0]) cylinder( h=21, r=2.7, $fn=30 );  
    translate([-18,18.5,-25]) rotate([0,90,0]) cylinder( h=45, r=1.7, $fn=30 );
    translate([19,18.5,-25]) rotate([0,90,0]) cylinder( h=10, r=4, $fn=30 );  
    translate([9,18.5,-10]) rotate([0,90,0]) cylinder( h=21, r=2.7, $fn=30 ); 
    translate([-18,18.5,-10]) rotate([0,90,0]) cylinder( h=45, r=1.7, $fn=30 );  
    translate([19,18.5,-10]) rotate([0,90,0]) cylinder( h=10, r=4, $fn=30 ); 
    
    // fan cut and screws
    translate([20.5,-41.5,-30]) cube([15,40,40]);   
    translate([6,-5.5,-4]) rotate([0,90,0]) cylinder( h=15, r=1.4, $fn=30 );     
    translate([12,-37.5,-4]) rotate([0,90,0]) cylinder( h=10, r=1.4, $fn=30 );     
    translate([12,-37.5,-4]) rotate([0,90,0]) cylinder( h=3, r=1.6, $fn=30 );
    translate([19,-5.5,-4]) rotate([0,90,0]) cylinder( h=2, r1=1.4,r2=2, $fn=30 );     
    translate([19,-37.5,-4]) rotate([0,90,0]) cylinder( h=2, r1=1.4,r2=2, $fn=30 ); 

    // extruder cover nut
    translate([17,3,-25]) rotate([0,0,0]) cylinder( h=19, r=1.7, $fn=30 );     
    translate([17,3,-5]) rotate([0,0,0]) cylinder( h=6, r=3.5, $fn=6 );     
    translate([17,3,-10]) rotate([0,0,0]) cylinder( h=6, r1=3.1, r2=3.6, $fn=6 );    
    
    // cable guide above fan
    difference()
    {
        translate([20.5,-2.5,-25]) cube([4,5,30]);
        translate([19,-1.5,-25]) rotate([0,0,60]) cube([5,5,30]);
    }
   
    // corners
    translate([25,43,-40]) rotate([0,0,45]) cube([10,10,50]);
    translate([-18,43,-40]) rotate([0,0,45]) cube([10,10,50]);

   
    // filament senzor 
    translate([2.5,40,-25.2]) cube([3,11,22.4]);
    
    
    translate([6.5,51,-3.9]) rotate([90,0,0]) cylinder( h=11, r=3.1, $fn=30 );
    
    difference()
    {
    translate([3.5,40,-7]) cube([6,11,12]);
    translate([6,40,-7]) rotate([0,45,0]) cube([5,12,12]);
    }
    
    translate([3.5,40,-10.5]) rotate([0,-45,0]) cube([2,12,5]);
    
    translate([0,40,-7]) cube([4,11,5]);
    translate([1.5,40,-25.2]) cube([4,11,5]);
    translate([1.8,40,-21]) cube([4,11,8]);
    
    translate([0,52.3,-21]) rotate([50,0,0]) cube([4,2,5]);
    
    // filament senzor mounting screw
    translate([3,45,-9]) rotate([0,90,0]) cylinder( h=12, r=1.4, $fn=30 );       
    translate([5,45,-9]) rotate([0,90,0]) cylinder( h=4, r=1.6, r2=1.5, $fn=30 );       
    translate([8.5,45,-9]) rotate([0,90,0]) cylinder( h=1, r=1.6, r2=1.4, $fn=30 );       
    
    translate([-7,45,-9]) rotate([0,90,0]) cylinder( h=13, r=1.4, $fn=30 );       
    translate([-10,45,-9]) rotate([0,90,0]) cylinder( h=13, r=3.3, $fn=30 );       
    
    // filament sensor cover screws
    translate([12,51,-12]) rotate([90,0,0]) cylinder( h=10, r=1.4, $fn=30 );
    translate([12,51,-12]) rotate([90,0,0]) cylinder( h=4, r1=1.9, r2=1.4,$fn=30 );

    translate([-1,51,-24.5]) rotate([90,0,0]) cylinder( h=10, r=1.4, $fn=30 );
    translate([-1,51,-24.5]) rotate([90,0,0]) cylinder( h=4, r1=1.9, r2=1.4,$fn=30 );

    // filament sensor window
    translate([-9.5,43,-17]) rotate([0,90,0]) cylinder( h=13, r=3, $fn=30 );       
    translate([0,40,-17.5]) cube([5,11,2]);
    translate([0,40,-18.5]) rotate([0,40,0]) cube([5,11,2]);
    
    translate([3.5,38,-1]) cube([5,11,2]);
    
}
    
    pinda_holder();    
    translate([5.5,40,-14]) cube([4,10,1]);
    translate([5.5,40,-13]) rotate([0,45,0]) cube([2,10,2]);
}

        


module final_part()
{
    difference()
    {
        extruder_body();
        translate([-35,-29,-30]) rotate([45,0,0]) cube([30,10,10]);   

            //version
            translate([-4,-34,-0.4]) rotate([0,0,0]) linear_extrude(height = 0.6) 
            { text("R2",font = "helvetica:style=Bold", size=4, center=true); }    
            
        // selective infill
        translate([-15,-7,-16]) cube([5,0.4,15]);
    }

    // print supports
    translate([-28,-35,-0.3]) cube([8,4,0.3]);
    translate([-28,-44,-0.3]) cube([8,4,0.3]);

    // grill
    translate([-35.25,10,0]) grill();
    translate([-35.25,0,0]) grill();
    translate([-16.5,-34,-12]) cube([4,30,1]);   
    translate([-16.5,-6,-11.5]) rotate([90,0,0]) cylinder( h=30, r=0.5, $fn=50 ); 
    translate([-12.5,-6,-11.5]) rotate([90,0,0]) cylinder( h=30, r=0.5, $fn=50 );
}


rotate([0,180,0]) final_part();












