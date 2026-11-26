/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.media {
    import java.awt.JDimension;
    import java.awt.JDisplayMode;
    import java.awt.JGraphicsDevice;
    import java.awt.JGraphicsEnvironment;
    import java.awt.JToolkit;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.Rectangle;

    public class DisplaysUtil {
    private static var instance_value:DisplaysUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():DisplaysUtil {
        if (!DisplaysUtil.instance_set) {
            DisplaysUtil.instance_set = true;
            DisplaysUtil.instance_value = new DisplaysUtil();
        }
        return DisplaysUtil.instance_value;
    }
    

    public static function getInstance():DisplaysUtil {
        return DisplaysUtil.instance;
    }
    

    public function getPrimaryScreenSize():Rectangle {
        var dimension:JDimension = JToolkit.getDefaultToolkit().getScreenSize();
        return new Rectangle(PointFactory.getInstance().ZERO_ZERO, dimension.width, dimension.height);
    }
    

    public function getScreenSizesAsRectangleArray():Vector.<Rectangle> {
        var graphicsEnvironment:JGraphicsEnvironment = JGraphicsEnvironment.getLocalGraphicsEnvironment();
        var graphicsDeviceArray:Vector.<JGraphicsDevice> = graphicsEnvironment.getScreenDevices();
        var graphicsDevice:JGraphicsDevice = null;
        var displayMode:JDisplayMode = null;
        var rectangle:Rectangle = null;
        var size:int = graphicsDeviceArray.length;
        var rectangleArray:Vector.<Rectangle> = new Vector.<Rectangle>(size);
        for (var index:int = 0; index < size; index++) {
            graphicsDevice = graphicsDeviceArray[index];
            displayMode = graphicsDevice.getDisplayMode();
            rectangle = new Rectangle(PointFactory.getInstance().ZERO_ZERO, displayMode.getWidth(), displayMode.getHeight());
            rectangleArray[index] = rectangle;
        }
        return rectangleArray;
    }
    }
}

