// PRUSA MMU2
// pulley-body
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module front_PTFE()
{
    for (i =[0:4])
    {
        translate([3+(i*14),-10.5,4]) rotate([90,0,0]) cylinder(r=2.2, h=15, $fn=50); 
        translate([3+(i*14),-10.5,5.5]) rotate([90,0,0]) cylinder(r=1, h=15, $fn=50); 
        translate([3+(i*14),-15.5,4]) rotate([90,0,0]) cylinder(r1=2.2, r2=2.4, h=5, $fn=50); 
        translate([3+(i*14),0,4]) rotate([90,0,0]) cylinder(r=1.1, h=35, $fn=50); 
        translate([3+(i*14),-2,4]) rotate([90,0,0]) cylinder(r1=2,r2=1.1, h=5, $fn=50); 
    }
}

module rear_PTFE()
{
    for (i =[0:4])
    {
        translate([3+(i*14),15,4]) rotate([90,0,0]) cylinder(r=1.2, h=15, $fn=50); 
        translate([3+(i*14),11.5,4]) rotate([90,0,0]) cylinder(r2=1.2, r1=1.5, h=3, $fn=50); 
        translate([3+(i*14),15,4]) rotate([92,0,0]) cylinder(r1=1.1, r2=1.3, h=15, $fn=50); 
        translate([3+(i*14),25,4]) rotate([90,0,0]) cylinder(r=2.05, h=15, $fn=50); 
        translate([3+(i*14),17,4.25]) rotate([95,0,0]) cylinder(r=2.05, h=3, $fn=50); 
        translate([3+(i*14),36.4,1.4]) rotate([80,0,0]) cylinder(r=2.05, h=15, $fn=50); 
        translate([2+(i*14),4.5,4]) cube([2,4,10]); 
    }
}



module pulley_body()
{

        difference()
        {
            // body
            union()
            {
               // body 
               translate([-18.5,-20,-24]) cube([114.5,41,31]);
               translate([-27,-65,-25]) cube([123,92,1]);
               translate([-27,-65,-25]) cube([123,2,3]);
               
               difference()
                {
                    translate([-5,-5,-24]) cube([72,41,31]);
                    translate([-15,40,-0]) rotate([45,0,0]) cube([90,41,31]);
                }
               translate([86,-69,-24]) cube([10,90,45]);
               translate([-27,-69,-24]) cube([10,90,26]);
               translate([-27,-69,-24]) cube([10,47,45]);
               translate([-18.5,-30,-24]) cube([1.5,45,31]);
                
               // shaft bearing body
               translate([-18.5,0,-0.5]) rotate([0,90,0]) cylinder(r=9.5, h=11.5, $fn=50); 
               
               // left hold together bearing housing
               translate([-18.5,30,0]) rotate([0,90,0]) cylinder(r=11, h=14, $fn=50); 
               translate([-18.5,-15,-9]) cube([14,45,16]);
               translate([-18.5,-7,-24]) cube([14,45,24]);
                
               // right hold together bearing housing
               translate([66.5,30,0]) rotate([0,90,0]) cylinder(r=11, h=14, $fn=50); 
               translate([66.5,15,-9]) cube([14,15,16]);
               translate([66.5,-7,-24]) cube([14,45,24]);
                
            }

            // left hold together shaft bearing 
            translate([-28.5,30,0]) rotate([0,90,0]) cylinder(r=13, h=10, $fn=50);
            translate([-18.5,30,0]) rotate([0,90,0]) cylinder(r=8, h=5, $fn=50);
            translate([-18.5,30,0]) rotate([0,90,0]) cylinder(r=6.5, h=6, $fn=50);
            translate([-15,30,0]) rotate([0,90,0]) cylinder(r=2.8, h=6, $fn=50);
            translate([-20,30,0]) rotate([0,90,0]) cylinder(r2=8, r1=8.5, h=3, $fn=50);
            translate([-19.5,30,5]) rotate([0,90,0]) cylinder(r=4, h=6, $fn=50);
            
            // right hold together shaft bearing 
            translate([80.5,30,0]) rotate([0,90,0]) cylinder(r=13, h=12, $fn=50);
            translate([75.5,30,0]) rotate([0,90,0]) cylinder(r=8, h=6, $fn=50);
            translate([74.5,30,0]) rotate([0,90,0]) cylinder(r=6.5, h=6, $fn=50);
            translate([71.5,30,0]) rotate([0,90,0]) cylinder(r=2.8, h=6, $fn=50);
            translate([79,30,0]) rotate([0,90,0]) cylinder(r1=8, r2=8.5, h=3, $fn=50);
            translate([80.5,19.5,30]) rotate([0,90,0]) cube([30,30,12]);
            translate([75.5,30,5]) rotate([0,90,0]) cylinder(r=4, h=6, $fn=50);

            // hold together shafts removal
            translate([-15,30,0]) rotate([0,90,0]) cylinder(r=2, h=100, $fn=50);
            translate([-2,28,0]) cube([65,4,10]);
            
            // selector shafts
            translate([-28,-48,-3]) rotate([0,90,0]) cylinder(r=4.3, h=130, $fn=50); 
            translate([-26,-48,16]) rotate([0,90,0]) cylinder(r=2.7, h=130, $fn=50); 
            translate([-26,-48,-19]) rotate([0,90,0]) cylinder(r=2.6, h=130, $fn=50); 
            translate([-19,-48,16]) rotate([0,90,0]) cylinder(r1=2.65, r2=3,h=3, $fn=50); 
            translate([-19,-48,-19]) rotate([0,90,0]) cylinder(r1=2.6, r2=3, h=3, $fn=50); 
            translate([94,-48,16]) rotate([0,90,0]) cylinder(r1=2.65, r2=3,h=3, $fn=50); 
            translate([94,-48,-19]) rotate([0,90,0]) cylinder(r1=2.6, r2=3, h=3, $fn=50); 
            translate([-30,-48,16]) rotate([0,90,0]) cylinder(r=1.5, h=15, $fn=50); 
            translate([-30,-48,-19]) rotate([0,90,0]) cylinder(r=1.5, h=15, $fn=50); 
                        
            
            // PTFE tubes
            front_PTFE();
            rear_PTFE();
            
            // rear PTFE tubes holder
            translate([-2,15,4]) cube([65,30,10]);
            translate([-2,15,5]) rotate([-10,0,0]) cube([65,30,10]);
            
            // pulley space
            translate([-7,0,0]) rotate([0,90,0]) cylinder(r=5, h=71, $fn=50); 
            translate([-7,-5,0]) cube([71,10,10]);
            translate([-7,0,24.5]) rotate([0,90,0]) cylinder(r=21, h=71, $fn=50);     

            // grub screws space
            for (i =[-6:14:50])
            {
                translate([i,0,0]) rotate([0,90,0]) cylinder(r=7, h=6, $fn=50); 
            }
            
            // coupling space
            translate([63.9,0,-0.5]) rotate([0,90,0]) cylinder(r=11.5, h=32, $fn=50); 
            translate([63.9,-11,-0.5]) cube([22.1,22,10]);
            
            // shaft bearing 
            translate([-28,0,-0.5]) rotate([0,90,0]) cylinder(r=2.8, h=15, $fn=50); 
            translate([-14,0,-0.5]) rotate([0,90,0]) cylinder(r=8, h=5, $fn=50); 
            translate([-15,0,-0.5]) rotate([0,90,0]) cylinder(r=6.5, h=6, $fn=50); 
            translate([-10.5,0,-0.5]) rotate([0,90,0]) cylinder(r1=8, r2=9, h=3, $fn=50); 
            translate([-9,0,-0.5]) rotate([0,90,0]) cylinder(r=9, h=7, $fn=50); 
            translate([-9,-9,-0.5]) cube([7,18,10]);
            translate([-7,-6,2]) cube([7,12,10]);
            
            translate([-28.5,0,-3.5]) rotate([0,90,0]) cylinder(r=5, h=10, $fn=50); 
            translate([-28,-5,-3.5]) cube([9.5,10,10]);
            translate([-28,-0,-3.5]) rotate([45,0,0]) cube([9.5,20,20]);
            
            // top bearing cut
            translate([-19,-9,7]) cube([17,18,10]);
            translate([-14,-5,3]) cube([17,10,10]);
            
            
            // rear PTFE tubes holder screws
            for (i =[10:14:52])
                {
                    translate([i,14,-30]) rotate([-20,0,0]) cylinder(r=1.7, h=36, $fn=50); 
                    
                    translate([i,14,-30]) rotate([-20,0,0]) cylinder(r=3.1, h=31, $fn=6); 
                    translate([i,14,-30]) rotate([-20,0,0]) cylinder(r=3.6, h=28, $fn=6); 
                    translate([i,14,-30]) rotate([-20,0,0]) cylinder(r1=4, r2=3.1, h=22, $fn=6); 
                    translate([i,23.1,-5]) rotate([-20,0,0]) cylinder(r1=3.6, r2=3.1, h=3, $fn=6); 
                }

            // front PTFE tubes holder screws           
            for (i=[9:14:23])
                {
                    translate([i,-14,-1.5]) rotate([90,0,0]) cylinder(r=1.65, h=20, $fn=50); 
                    translate([i-2.8,-18,-1.5-2.9]) cube([5.6,2,19]);
                    
                    translate([i+28,-14,-1.5]) rotate([90,0,0]) cylinder(r=1.65, h=20, $fn=50); 
                    translate([i-2.8+28,-18,-1.5-2.9]) cube([5.6,2,19]);
                }
            
            // front corners
            translate([-29,-68,-35]) rotate([45,0,0]) cube([130,10,20]);
            translate([-29,-73,12]) rotate([45,0,0]) cube([130,20,10]);
            translate([-29.5,-77.7,-35]) rotate([0,0,35]) cube([10,10,90]);
            
            // front waste pocket and material saving
            difference()
            {
                translate([-17,-32,-15]) rotate([-60,0,0]) cube([78,20,10]);
                translate([-17,-58,-34]) cube([103,50,10]);
            }
            
            // rear corners
            translate([-29,27,12]) rotate([45,0,0]) cube([130,10,20]);
            translate([-29,-21,12]) rotate([20,0,0]) cube([100,10,20]);
            
            // rear angled side
            translate([-35,49.6,-45]) rotate([55,0,0]) cube([150,41,31]);
            translate([-35,21,-45]) cube([16.5,41,31]);
            translate([80.5,21,-45]) cube([16.5,41,31]);
            
            // idler spring screws
            translate([-22,-27,0]) rotate([0,0,0]) cylinder(r=1.8, h=50, $fn=50); 
            translate([91,-27,0]) rotate([0,0,0]) cylinder(r=1.8, h=50, $fn=50); 
            translate([-22-2.9,-27-2.8,14]) cube([10,5.6,2.1]);
            translate([91-2.9,-27-2.8,14]) cube([20,5.6,2.1]);
            translate([-22-1.8,-27-2.8,14.4]) cube([1.8*2,5.6,2.1]);
            translate([91-1.8,-27-2.8,14.4]) cube([1.8*2,5.6,2.1]);
            
            // pulley motor screws and opening
            translate([93,0,-0.5]) rotate([0,90,0]) cylinder(r=11.5, h=5, $fn=50); 
            translate([80,0,7.5]) rotate([0,90,0]) cylinder(r=4, h=20, $fn=50); 
            translate([91,-15.5,-15.5-0.5]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=50); 
            translate([91,15.5,-15.5-0.5]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=50); 
            translate([91,-15.5,15.5-0.5]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=50); 
            translate([91,15.5,15.5-0.5]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=50); 
            
            translate([76,-15.5,-15.5-0.5]) rotate([0,90,0]) cylinder(r=3.1, h=15, $fn=50); 
            translate([76,15.5,-15.5-0.5]) rotate([0,90,0]) cylinder(r=3.1, h=15, $fn=50); 
            translate([81,-15.5,15.5-0.5]) rotate([0,90,0]) cylinder(r=3.1, h=10, $fn=50); 
            translate([81,15.5,15.5-0.5]) rotate([0,90,0]) cylinder(r=3.1, h=10, $fn=50); 

            translate([76,-15.5-3.1,-25-0.5]) cube([15,6.2,10]);
            translate([76,15.5-3.1,-25-0.5]) cube([15,6.2,10]); 
            translate([66,-15.5-1.5,-33-0.5]) rotate([0,-30,0]) cube([20,3,10]);
            translate([66,15.5-1.5,-33-0.5]) rotate([0,-30,0]) cube([20,3,10]);
            

            // selector motor screws and opening
            translate([93,-48,-3]) rotate([0,90,0]) cylinder(r=11.5, h=5, $fn=50); 
            translate([93,-48,5]) rotate([0,90,0]) cylinder(r=4, h=5, $fn=50); 
            translate([85,-48,-3]) rotate([0,90,0]) cylinder(r=8, h=15, $fn=50); 
            translate([85,-48,1.5]) rotate([0,90,0]) cylinder(r=4, h=15, $fn=50); 
            translate([91,-48-15.5,-3-15.5]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=50); 
            translate([91,-48-15.5,-3+15.5]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=50); 
            translate([91,-48+15.5,-3+15.5]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=50); 
            translate([81,-48-15.5,-3-15.5]) rotate([0,90,0]) cylinder(r=3.1, h=10, $fn=50); 
            translate([81,-48-15.5,-3+15.5]) rotate([0,90,0]) cylinder(r=3.1, h=10, $fn=50); 
            translate([81,-48+15.5,-3+15.5]) rotate([0,90,0]) cylinder(r=3.1, h=10, $fn=50); 

            translate([85,-48-10,-3]) rotate([0,90,0]) cylinder(r=4, h=5, $fn=50); 
            translate([85,-48+10,-3]) rotate([0,90,0]) cylinder(r=4, h=5, $fn=50); 
            translate([85,-48-10,-7]) cube([5,20,8]); 
            
            // frame holders
            
            translate([91,7,-26]) cylinder(r=1.65, h=15, $fn=50); 
            translate([-22,7,-26]) cylinder(r=1.65, h=15, $fn=50); 
            translate([-32+2.9,4.1,-21]) cube([10,5.8,2]);
            translate([91-2.9,4.1,-21]) cube([10,5.8,2]);
            translate([-23.65,4.1,-20.6]) cube([1.65*2,5.8,2]);
            translate([89.35,4.1,-20.6]) cube([1.65*2,5.8,2]);
            
            
            translate([91,-57,-26]) cylinder(r=1.65, h=15, $fn=50); 
            translate([-22,-57,-26]) cylinder(r=1.65, h=15, $fn=50); 
            translate([-32+2.9,-59.9,-21]) cube([10,5.8,2]);
            translate([91-2.9,-59.9,-21]) cube([10,5.8,2]);
            translate([-23.65,-59.9,-20.6]) cube([1.65*2,5.8,2]);
            translate([89.35,-59.9,-20.6]) cube([1.65*2,5.8,2]);
            
            // material saving
            translate([-24,-33,-3]) rotate([0,90,0]) cylinder(r=9, h=9, $fn=6); 
            translate([-24,-61,-3]) rotate([0,90,0]) cylinder(r=7, h=9, $fn=6); 
            
            translate([-30,-70,7.1]) rotate([40,0,0]) cube([20,30,10]);
            
            // better printing
            translate([0,-15,-25.75]) cube([15,15,1]);
            translate([25,-15,-25.75]) cube([15,15,1]);
            translate([-15,-37,-25.75]) cube([15,15,1]);
            translate([-15,-58,-25.75]) cube([15,15,1]);
            for (i=[5:20:65])
            {
            translate([i,-37,-25.75]) cube([15,15,1]);
            translate([i,-58,-25.75]) cube([15,15,1]);
            }

            //version
            translate([-14,-5.5,-24.4]) rotate([0,180,180]) linear_extrude(height = 0.8) 
            { text("M1",font = "helvetica:style=Bold", size=5, center=true); }    
        }

}


pulley_body();
