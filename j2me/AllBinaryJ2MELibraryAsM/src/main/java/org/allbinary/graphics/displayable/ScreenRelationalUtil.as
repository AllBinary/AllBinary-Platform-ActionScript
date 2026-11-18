// Generated Code Do Not Modify
package org.allbinary.graphics.displayable {

    public class ScreenRelationalUtil {
    private static var instance_value:ScreenRelationalUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ScreenRelationalUtil {
        if (!ScreenRelationalUtil.instance_set) {
            ScreenRelationalUtil.instance_set = true;
            ScreenRelationalUtil.instance_value = new ScreenRelationalUtil();
        }
        return ScreenRelationalUtil.instance_value;
    }
    

    public static function getInstance():ScreenRelationalUtil {
        return ScreenRelationalUtil.instance;
    }
    

    public function getScaleImage(image:Image):Number {
        return this.getScaleWH(image.getWidth(), image.getHeight());
    }
    

    public function getScaleWH(aWidth:int, aHeight:int):Number {
        return this.getScaleWHA(aWidth, aHeight, 20);
    }
    

    public function getScaleWHA(aWidth:int, aHeight:int, add:int):Number {
        var displayInfoSingleton:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        var last:Vector.<int> = displayInfoSingleton.getLast();
        var width:Number = Number(last[displayInfoSingleton.WIDTH]);
        var height:Number = Number(last[displayInfoSingleton.HEIGHT]);
        var largestSize:Number = width;
        if (largestSize < height) {
            largestSize = height;
        }
        var scale:Number = (largestSize) / Number(aWidth);
        return scale;
    }
    

    public function getScaledHeight(aWidth:int, aHeight:int):int {
        return JMath.toInt32((this.getScaleWH(aWidth, aHeight) * Number(aHeight)));
    }
    

    public function getScaledHeightAdd(aWidth:int, aHeight:int, add:int):int {
        return JMath.toInt32((this.getScaleWHA(aWidth, aHeight, add) * Number(aHeight)));
    }
    }
}

