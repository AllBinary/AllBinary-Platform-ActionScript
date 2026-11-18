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
package org.allbinary.layer {
    import org.allbinary.graphics.displayable.CanvasStrings;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;
    import java.lang.JInteger;

    public class Layer {
    private static var ID_value:*;
    private static var ID_set:Boolean = false;
    public static function get ID():* {
        if (!Layer.ID_set) {
            Layer.ID_set = true;
            Layer.ID_value = SmallIntegerSingletonFactory.getInstance().getAt(0);
        }
        return Layer.ID_value;
    }
        public var logUtil:LogUtil = null;
        public var x:int = 0;
        public var y:int = 0;
        public var z:int = 0;
        private var width:int = 0;
        private var height:int = 0;
        private var visible:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsLayer():void {
    this.logUtil = LogUtil.getInstance();
    this.x = 0;
    this.y = 0;
    this.z = 3;
    this.width = 0;
    this.height = 0;
    this.visible = true;
        }
    

    public function Layer(width:int, height:int) {
        super();
        this.initFieldsLayer();
        this.setLayerWidth(width);
        this.setLayerHeight(height);
    }
    

    public function setPosition(x:int, y:int, z:int):void {
        this.x = x;
        this.y = y;
        this.z = z;
    }
    

    public function moveDXY(dx:int, dy:int):void {
        this.x += dx;
        this.y += dy;
    }
    

    public function moveDXYZ(dx:int, dy:int, dz:int):void {
        this.x += dx;
        this.y += dy;
        this.z += dz;
    }
    

    public function getXP():int {
        return this.x;
    }
    

    public function getYP():int {
        return this.y;
    }
    

    public function getZP():int {
        return this.z;
    }
    

    public function getWidth():int {
        return this.width;
    }
    

    public function getHeight():int {
        return this.height;
    }
    

    public function getDepth():Number {
        return 0;
    }
    

    public function setVisible(visible:Boolean):void {
        this.visible = visible;
    }
    

    public function isVisible():Boolean {
        return this.visible;
    }
    

    public function paint(graphics:Graphics):void {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        var canvasStrings:CanvasStrings = CanvasStrings.getInstance();
        this.logUtil.putF(commonStrings.NOT_IMPLEMENTED, this, canvasStrings.PAINT);
    }
    

    public function setLayerWidth(width:int):void {
        if (width < 0) {
            throw new JException("IllegalArgumentException", "");
        }
        this.width = width;
    }
    

    public function setLayerHeight(height:int):void {
        if (height < 0) {
            throw new JException("IllegalArgumentException", "");
        }
        this.height = height;
    }
    

    public function toStringAppend(stringBuffer:StringMaker):void {
    }
    }
}

