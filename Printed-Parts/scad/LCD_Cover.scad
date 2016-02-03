difference(){
            import("./LCD_Cover.STL");
    
        translate([-66.5,-21.5,9.01-2.5])cube([10,10,10]);
        
        translate([-43,-5.25,-7])scale([-0.95,0.95,1])linear_extrude(height = 40, center = false, convexity = 10, $fn=150)
        import (file = "lcd-cut.dxf", layer = "button-S");
    }

