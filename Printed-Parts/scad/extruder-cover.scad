use <extruder-main.scad>
difference(){
extruder_cover();
extruder_mount_holes();

// Easy assembly trim
cube([50,50,15.2]);

}