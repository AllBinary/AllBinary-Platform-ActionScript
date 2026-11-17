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
package org.allbinary.graphics.color {
    import org.allbinary.logic.string.StringMaker;

    public class BasicColor {
        private var name:String = null;
        private var value:int = 0;
        private var redComponent:Number = 0.0;
        private var greenComponent:Number = 0.0;
        private var blueComponent:Number = 0.0;
        private var alphaComponent:Number = 0.0;
        public var red:int = 0;
        public var green:int = 0;
        public var blue:int = 0;
        public var alpha:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsBasicColor():void {
    
    
    
    
    
    
    
    
    
    
        }
    

    public function BasicColor(alphaValue:int, value:int, name:String) {
        super();
        this.initFieldsBasicColor();
        this.name = name;
        var tempValue:int = 0;
        var basicColorUtil:BasicColorUtil = BasicColorUtil.getInstance();
        if (basicColorUtil.isAlpha) {
            if (basicColorUtil.ffOpaque) {
                tempValue = alphaValue | value;
            } else {
                tempValue = 0x00000000 | value;
            }
        } else {
            tempValue = value;
        }
        var alphaInt:int = ((tempValue >> 24) & 255);
        this.alpha = ((int(alphaInt) << 16) >> 16);
        this.alphaComponent = (Number(alphaInt)) / 255.0;
        var redInt:int = ((tempValue >> 16) & 255);
        this.red = ((int(redInt) << 16) >> 16);
        this.redComponent = (Number(redInt)) / 255.0;
        var greenInt:int = ((tempValue >> 8) & 255);
        this.green = ((int(greenInt) << 16) >> 16);
        this.greenComponent = (Number(greenInt)) / 255.0;
        var blueInt:int = ((tempValue) & 255);
        this.blue = ((int(blueInt) << 16) >> 16);
        this.blueComponent = (Number(blueInt)) / 255.0;
        this.value = tempValue;
    }
    

    public function intValue():int {
        return this.value;
    }
    

    public function toInt():int {
        return this.value;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("BasicColor: ");
        stringBuffer.append("Alpha: ");
        stringBuffer.appendshort(this.alpha);
        stringBuffer.append(" Red: ");
        stringBuffer.appendshort(this.red);
        stringBuffer.append(" Green: ");
        stringBuffer.appendshort(this.green);
        stringBuffer.append(" Blue: ");
        stringBuffer.appendshort(this.blue);
        stringBuffer.append(" Value: ");
        stringBuffer.appendint(this.value);
        return stringBuffer.toString();
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function getRedComponent():Number {
        return this.redComponent;
    }
    

    public function getGreenComponent():Number {
        return this.greenComponent;
    }
    

    public function getBlueComponent():Number {
        return this.blueComponent;
    }
    

    public function getAlphaComponent():Number {
        return this.alphaComponent;
    }
    }
}

