use <extruder-main.scad>


module ext_body(){
    
    difference(){
       extruder_body();
       extruder_mount_holes();
    }
    
    }
    
 ext_body();

