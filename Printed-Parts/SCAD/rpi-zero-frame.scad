// lee@braains.net pi zero frame for Einsy RAMBo 2020-07-18

// b/c Prusa's SCAD is MIA
// re: https://github.com/prusa3d/Original-Prusa-i3/issues/132

// dimensions are derrived from the original STL, with some cleanup
//color("red") translate([0,pizd[1],0]) translate([3.5,-3.5,4.5]) import("rpi-zero-frame.stl");

// pi zero dimensions
pizd=[65,30,4];

// pin shroud thickness
pinz=2.5;

// pin clearance
pc=1.8;

// part thickness
pt=2;

// pcb thickness
pcbt=1.4;

inch=25.4;

// f'n around
$fn=32;


final_part();
module final_part(){
    difference(){
        base();
        pins_cut();
        hdmi_cut();
        usb_cut();
        inductor_cut();
        weight_loss();
        //mounting_fasteners();
        under_cuts();
        nice_cut();
    }
}

module base(){
    // inset for "shrunk" outer dims, matching OEM.
    translate([0.5,0.5,0])
    
    // base block
    cheese_slice(pizd[0]-1,pizd[1]-1,pt,6);
    
    // support columns & pegs
    translate([3.5,3.5,0]){
        for(x=[0:58:58]){
            for(y=[0:23:23]){
                // peg
                translate([x,y,0]) cylinder(d=2.70, h=pt+pinz+pcbt);
                // column
                translate([x,y,0]) cylinder(d=6, h=pt+pinz);
            }
        }
    }
    
    // braces around gpio pins
    arm_rests();
    
    // this isn't really needed, but it's on the OEM frame.
    arm_rest_flap();
    
    // support flap for SD Card side under cuts
    // could be shorter to save a little material
    hull(){
        translate([3.5,3.5,pt]) cylinder(d=6,h=pinz-1.5);
        translate([3.5,pizd[1]-3.5,pt]) cylinder(d=6,h=pinz-1.5);
    }
    
    // support flap for camera connector side
    // could also be shorter to save a little material
    hull(){
        translate([pizd[0]-3.5,0.5+3,pt]) cylinder(d=6,h=pinz-1.2);
        translate([pizd[0]-3.5,pizd[1]-3.5,pt]) cylinder(d=6,h=pinz-1.2);
    }
    
    // extension above USB power connector to prevent shorting.
    usb_flap();
}

module nice_cut(){
    // it bugged me, so I fixed it.
    translate([3.5,3.5+pizd[1]-7,pt-4.4+pinz+1])
    difference(){
        translate([-3,0,0]) cube([6,6,10]);
        cylinder(d=6,h=10);
    }
}

module pins_cut(){
    // all the pins
//    translate([(pizd[0]-inch*2)/2,3.5-(inch*.05),0])
//    for(x=[0:inch*.1:inch*2]){
//        for(y=[0:inch*.1:inch*.1]){
//            translate([x,y,0]) cylinder(d=1,h=20);
//        }
//    }
    
    // first four
    translate([(pizd[0]-inch*2)/2+inch*.05,3.5-(inch*.05),0])
    for(x=[inch*.1:inch*.1:inch*.4]){
        for(y=[0:inch*.1:0]){
            translate([x,y,0]) cylinder(d=1.6,h=20);
        }
    }
    // other two
    translate([(pizd[0]-inch*2)/2+inch*.05,3.5-(inch*.05),0])
    for(x=[inch*.7:inch*.1:inch*.7]){
        for(y=[0:inch*.1:inch*.1]){
            translate([x,y,0]) cylinder(d=1.6,h=20);
        }
    }
}

module inductor_cut(){
    translate([pizd[0]-5-6.5+2,10.5,pt+1.3-.6]) cheese_slice(5,5,.6,2);
}

module hdmi_cut(){
    translate([6.5,pizd[1]-8,pt-4.4+pinz+1]) cube([12,8,4.4]);
}

module usb_flap(){
    translate([47.7+1+3,pizd[1]-2.5,0]) cheese_slice(6,4,pt+.4,2);
}

module usb_cut(){
    //translate([47.7-10,pizd[1]-5.5,pt+pinz+1.6-4]) cube([20,7,4]);
    translate([47.7-10,pizd[1]-5.5,pt+pinz+1.6-4]) 
    cheese_slice(20,7,4,1);
    
    // nice edge for usb flange
    translate([48.5,pizd[1]-2.5+4,1.5]) rotate([45,0,0]) cube(10);
}

module weight_loss(){
    translate([6.5,6.5,0]) cube(pizd-[13,13,0]+[0,0,10]);
}

module under_cuts(){
    // sorry for the translate wrap, I manually shifted the geometry against
    // the abandoned rpi-zero-frame.stl.    
    translate([0,pizd[1],0]){
        // under usb power input
        hull(){
            translate([54.7,-4.3,0]) twoby();
            translate([54.7,-4.3+inch*.2,0]) twoby();
        }
        
        // beside usb power input
        translate([54.7-inch*.25,-4.3-inch*.1,0]) twoby();
        
        // straddle cut on gpio side
        translate([34,-26,0]){
            hull(){
                twoby();
                translate([inch*.4,0,0]) twoby();
            }
        }
        
        // straddle cut above sd card slot
        translate([0,-8.4,0]) twoby();
        
        // through cut under sd card slot
        hull(){
            translate([2.3-inch*.1,-21,0]) twoby();
            translate([2.3+inch*.2,-21,0]) twoby();
        }
        
        // through cut gpio side
        hull(){
            translate([52.7,-26.3-inch*.2,0]) rotate([0,0,-90]) twoby();
            translate([52.7,-26.3+inch*.2,0]) rotate([0,0,-90]) twoby();
        }
        
        // corner cut (supports here)
        hull(){
            translate([3.6,-30.3,0]) twoby();
            translate([3.6-inch*.1,-30.3,0]) twoby();
        }
    } // end translate
}

module twoby(){
    // seemed like a good idea, got the job done
    hull(){
        cylinder(d=2.5,h=pc);
        translate([0,inch*.1,0]) cylinder(d=2.5,h=pc);
    }
}

module mounting_fasteners(){
    translate([3.5,(pizd[1]-10)/2,0])
    for(x=[0:58:58]){
        for(y=[0:10:10]){
            translate([x,y,0]) screw_hole();
        }
    }
}

module screw_hole(){
    translate([0,0,2]) cylinder(d=6,h=pt);
    cylinder(d=3,h=pt);
}

module arm_rests(){
    // long side from camera side
    hull(){
        translate([0.5+pizd[0]-33-3.5,0.5,pt]) cheese_slice(33,6,pinz,3);
        translate([0.5+pizd[0]-33/2-3.5,0.5,pt]) cube([33/2,6,pinz]);
        translate([pizd[0]-3.5,0.5+3,pt]) cylinder(d=6,h=pinz);
    }
    
    // short side from sd card slot side
    hull(){
        translate([0.5+3.5+2,0.5,pt]) cheese_slice(inch*.1,6,pinz,3);
        translate([0.5+3.5,0.5,pt]) cube([inch*.1/2,6,pinz]);
        translate([3.5,0.5+3,pt]) cylinder(d=6,h=pinz);
    }
}

module arm_rest_flap(){
    hull(){
        translate([0.5+pizd[0]-36.5-3.5,0.5+pizd[1]-7,pt]) cheese_slice(33,6,.4,1);
        translate([0.5+pizd[0]-36.5/2-3.5,0.5+pizd[1]-7,pt]) cube([33/2,6,.4]);
        translate([pizd[0]-3.5,0.5+3+pizd[1]-7,pt]) cylinder(d=6,h=.4);
    }
    
    // stand
    translate([26.5-1,pizd[1]-3.5-1,pt]) cheese_slice(3,4,pinz,1);
}

module cheese_slice(width,depth,height,radius){
    hull(){
        for(x=[0:width-radius:width-radius]){
            for(y=[0:depth-radius:depth-radius]){
                translate([x,y,0]+[radius,radius]/2) cylinder(d=radius, h=height);
            }
        }
    }
}