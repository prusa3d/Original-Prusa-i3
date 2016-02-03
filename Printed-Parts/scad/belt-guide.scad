// PRUSA iteration3
// 624 bearing belt guide
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

wall= 1.2;
height= 4.6;
bearing_thickness= 4;
clearence= 0.1; 

module belt_guide_base(){
 cylinder(r=6.4+wall+clearence, h=height, $fn=50);
 cylinder(r=5+wall+clearence+2*wall, h=0.95+0.25, $fn=50);
}

module belt_guide_holes(){
 translate([0,0,height-(bearing_thickness/2)-clearence ]) cylinder(r=5.1+clearence, h=10, $fn=50);
 translate([0,0,-1]) cylinder(r=5+wall+clearence-2*wall, h=10, $fn=50);
}

// Final part
module belt_guide(){
 difference(){
  belt_guide_base();
  belt_guide_holes();
 }
}

belt_guide();