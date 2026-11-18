/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
package org.allbinary.game.paint {
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.logic.system.os.GenericOperatingSystem;
    import org.allbinary.logic.system.os.OperatingSystemFactory;

    public class ColorFillPaintableFactory {
    private static var instance_value:ColorFillPaintableFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():ColorFillPaintableFactory {
        if (!ColorFillPaintableFactory.instance_set) {
            ColorFillPaintableFactory.instance_set = true;
            ColorFillPaintableFactory.instance_value = new ColorFillPaintableFactory();
        }
        return ColorFillPaintableFactory.instance_value;
    }
    

    public static function getInstance():ColorFillPaintableFactory {
        return ColorFillPaintableFactory.instance;
    }
    

    public function getInstance2(basicColor:BasicColor, forThreedCanvas:Boolean):ColorFillBasePaintable {
        var operatingSystem:GenericOperatingSystem = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
        if (operatingSystem.isOverScan()) {
            return new OverScanColorFillPaintable(basicColor);
        } else {
            return new ColorFillPaintable(basicColor);
        }
    }
    }
}

