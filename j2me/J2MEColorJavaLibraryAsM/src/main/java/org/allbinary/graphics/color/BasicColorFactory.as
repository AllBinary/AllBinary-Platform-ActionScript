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
    import org.allbinary.logic.string.StringUtil;

    public class BasicColorFactory {
    private static var instance_value:BasicColorFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():BasicColorFactory {
        if (!BasicColorFactory.instance_set) {
            BasicColorFactory.instance_set = true;
            BasicColorFactory.instance_value = new BasicColorFactory();
        }
        return BasicColorFactory.instance_value;
    }
        public var NULL_COLOR:BasicColor = null;
        public var TAN:BasicColor = null;
        public var SKIN_PINK:BasicColor = null;
        public var RED:BasicColor = null;
        public var LIGHT_RED:BasicColor = null;
        public var DARK_GREEN:BasicColor = null;
        public var GREEN:BasicColor = null;
        public var LIGHT_GREEN:BasicColor = null;
        public var PURPLE:BasicColor = null;
        public var BLUE:BasicColor = null;
        public var LIGHT_BLUE:BasicColor = null;
        public var VERY_LIGHT_BLUE:BasicColor = null;
        public var PUCE:BasicColor = null;
        public var AQUA:BasicColor = null;
        public var YELLOW:BasicColor = null;
        public var PINK:BasicColor = null;
        public var BLACK:BasicColor = null;
        public var GREY:BasicColor = null;
        public var LIGHT_GREY:BasicColor = null;
        public var DARK_GREY:BasicColor = null;
        public var ORANGE:BasicColor = null;
        public var BROWN:BasicColor = null;
        public var WHITE:BasicColor = null;
        public var TRANSPARENT_COLOR:BasicColor = null;
        public var TRANSPARENT_GREY:BasicColor = null;
        public var TRANSPARENT_BLACK:BasicColor = null;
        public var TRANSPARENT_RED:BasicColor = null;
        public var CLEAR_COLOR:BasicColor = null;
        public var BORDER_COLOR:BasicColor = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicColorFactory():void {
    this.NULL_COLOR = this.createInstanceARGB(255, 255, 255, 255, "null color");
    this.TAN = this.createInstance(0xE9D8B5);
    this.SKIN_PINK = this.createInstance(0xFDCECE);
    this.RED = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFF0000, "red");
    this.LIGHT_RED = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFFA0A0, "light red");
    this.DARK_GREEN = this.createInstance(0x00FF00);
    this.GREEN = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x00DD00, "green");
    this.LIGHT_GREEN = this.createInstance(0x007700);
    this.PURPLE = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x400040, "purple");
    this.BLUE = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x0000FF, "blue");
    this.LIGHT_BLUE = this.createInstance(0x00aaff);
    this.VERY_LIGHT_BLUE = this.createInstance(0x000033);
    this.PUCE = this.createInstance(0xFF00AA);
    this.AQUA = this.createInstance(0x00FFFF);
    this.YELLOW = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFFFF00, "yellow");
    this.PINK = this.createInstance(0xFF00FF);
    this.BLACK = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x000000, "black");
    this.GREY = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xAAAAAA, "grey");
    this.LIGHT_GREY = this.createInstance(0xC0C0C0);
    this.DARK_GREY = this.createInstance(0x404040);
    this.ORANGE = this.createInstance(0xe07718);
    this.BROWN = this.createInstance(0x956B00);
    this.WHITE = this.createInstance(0xFFFFFF);
    this.TRANSPARENT_COLOR = this.createInstanceAN(0x00000000, 0x000000, StringUtil.getInstance().EMPTY_STRING);
    this.TRANSPARENT_GREY = this.createInstanceAN(0x52000000, 0xECECEC, StringUtil.getInstance().EMPTY_STRING);
    this.TRANSPARENT_BLACK = this.createInstanceAN(0x52000000, 0x000000, StringUtil.getInstance().EMPTY_STRING);
    this.TRANSPARENT_RED = this.createInstanceAN(0x52000000, 0xFF0000, StringUtil.getInstance().EMPTY_STRING);
    this.CLEAR_COLOR = this.BLACK;
    this.BORDER_COLOR = this.WHITE;
        }

        public function BasicColorFactory() {
            super();
            this.initFieldsBasicColorFactory();
        }
    

    public static function getInstance():BasicColorFactory {
        return BasicColorFactory.instance;
    }
    

    public function createInstance(value:int):BasicColor {
        return new BasicColor(BasicColorUtil.getInstance().ALPHA, value, StringUtil.getInstance().EMPTY_STRING);
    }
    

    public function createInstanceA(alphaValue:int, value:int):BasicColor {
        return new BasicColor(alphaValue, value, StringUtil.getInstance().EMPTY_STRING);
    }
    

    public function createInstanceAN(alphaValue:int, value:int, name:String):BasicColor {
        return new BasicColor(alphaValue, value, name);
    }
    

    public function createInstanceARGB(alphaValue:int, r:int, g:int, b:int, name:String):BasicColor {
        var ALPHA_MASK:int = int(0xFF000000);
        return new BasicColor(alphaValue, int(int(int(((alphaValue << 24) & ALPHA_MASK) + ((r << 16) & 0x00FF0000)) + ((g << 8) & 0x0000FF00)) + (b & 0x000000FF)), StringUtil.getInstance().EMPTY_STRING);
    }
    }
}

