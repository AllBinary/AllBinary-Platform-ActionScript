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
package org.allbinary.canvas {
    import javax.microedition.lcdui.Canvas;
    import javax.microedition.lcdui.CommandListener;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.MainFeatureFactory;

    public class FullScreenUtil {
    private static var instance_value:FullScreenUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():FullScreenUtil {
        if (!FullScreenUtil.instance_set) {
            FullScreenUtil.instance_set = true;
            FullScreenUtil.instance_value = new FullScreenUtil();
        }
        return FullScreenUtil.instance_value;
    }
    

    public static function getInstance():FullScreenUtil {
        return FullScreenUtil.instance;
    }
    

    public function initOnRun(fullScreenInterface:Canvas, commandListener:CommandListener):void {
        if (commandListener != null) {
            this.init(fullScreenInterface);
        }
    }
    

    public function init(fullScreenInterface:Canvas):void {
    }
    

    public function isScreenChange(isFullScreen:Boolean):Boolean {
        var mainFeatureFactory:MainFeatureFactory = MainFeatureFactory.getInstance();
        var features:Features = Features.getInstance();
        if (features.isFeature(mainFeatureFactory.FULL_SCREEN) != isFullScreen) {
            return true;
        }
        return false;
    }
    

    public function isScreenChangeCanvas(fullScreenInterface:Canvas):Boolean {
        return this.isScreenChange(false);
    }
    }
}

