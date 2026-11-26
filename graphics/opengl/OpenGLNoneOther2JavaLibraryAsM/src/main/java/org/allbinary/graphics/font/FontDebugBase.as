// Generated Code Do Not Modify
package org.allbinary.graphics.font {
    import javax.microedition.lcdui.Font;
    import org.allbinary.logic.string.StringMaker;

    //OpenGLNoneOther2JavaLibrary
    public class FontDebugBase {
    private static var instanceBase_value:FontDebugBase;
    private static var instanceBase_set:Boolean = false;
    private static function get instanceBase():FontDebugBase {
        if (!FontDebugBase.instanceBase_set) {
            FontDebugBase.instanceBase_set = true;
            FontDebugBase.instanceBase_value = new FontDebugBase();
        }
        return FontDebugBase.instanceBase_value;
    }
        public var SET_FONT:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsFontDebugBase():void {
    this.SET_FONT = "setFont";
        }

        public function FontDebugBase() {
            super();
            this.initFieldsFontDebugBase();
        }
    

    public static function getInstance():FontDebugBase {
        return FontDebugBase.instanceBase;
    }
    

    public function debugMetrics(currentFont:Font, convertedTextSize:Number, displayMetrics:Object, stringBuffer:StringMaker):void {
    }
    

    public function debugDpi(densityDpi:int, stringBuffer:StringMaker):void {
    }
    

    public function debugDimension(currentFont:Font, convertedTextSize:Number, longestDimensionTotalPixels:int, stringBuffer:StringMaker):void {
    }
    }
}

