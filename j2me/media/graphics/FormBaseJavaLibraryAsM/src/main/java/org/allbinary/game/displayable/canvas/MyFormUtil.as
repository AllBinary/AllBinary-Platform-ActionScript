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
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.RectangleFactory;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.opengles.OpenGLFeatureFactory;
    import org.allbinary.graphics.threed.SWTJOGLProcessor;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class MyFormUtil {
    private static var instance_value:MyFormUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():MyFormUtil {
        if (!MyFormUtil.instance_set) {
            MyFormUtil.instance_set = true;
            MyFormUtil.instance_value = new MyFormUtil();
        }
        return MyFormUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var popupMenuRectangle:Rectangle = null;

        // Java field initializers run after the base constructor
        private function initFieldsMyFormUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.popupMenuRectangle = RectangleFactory.SINGLETON;
        }

        public function MyFormUtil() {
            super();
            this.initFieldsMyFormUtil();
        }
    

    public static function getInstance():MyFormUtil {
        return MyFormUtil.instance;
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        var features:Features = Features.getInstance();
        var isOpenGL:Boolean = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL);
        var TOTAL_CHAR_WIDTH:int = (SWTJOGLProcessor.getInstance().isJOGL() && isOpenGL ? 2 : 3);
        var width:int = MyFontProcessor.defaultStringWidth(font, TOTAL_CHAR_WIDTH);
        var pointFactory:PointFactory = PointFactory.getInstance();
        if (displayInfo.getLastHeight() < 320) {
            this.popupMenuRectangle = new Rectangle(pointFactory.createXY(0, 25), width, int((int(font.getHeight() * 4)) + 2));
        } else {
            this.popupMenuRectangle = new Rectangle(pointFactory.createXY(0, int(displayInfo.getLastHalfHeight() - 70)), width, (int(font.getHeight() * 5)));
        }
    }
    

    public function getPopupMenuRectangle():Rectangle {
        return this.popupMenuRectangle;
    }
    }
}

