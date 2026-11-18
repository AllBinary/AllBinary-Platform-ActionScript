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
package org.allbinary.game.displayable.canvas {
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;

    public class FormUtil {
    private static var instance_value:FormUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():FormUtil {
        if (!FormUtil.instance_set) {
            FormUtil.instance_set = true;
            FormUtil.instance_value = new FormUtil();
        }
        return FormUtil.instance_value;
    }
    

    public static function getInstance():FormUtil {
        return FormUtil.instance;
    }
    

    public function createFormRectangle():Rectangle {
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        var pointFactory:PointFactory = PointFactory.getInstance();
        var rectangle:Rectangle = new Rectangle(pointFactory.createXY(30, 10), int(displayInfo.getLastWidth() - 30), int(displayInfo.getLastHeight() - 35));
        return rectangle;
    }
    }
}

