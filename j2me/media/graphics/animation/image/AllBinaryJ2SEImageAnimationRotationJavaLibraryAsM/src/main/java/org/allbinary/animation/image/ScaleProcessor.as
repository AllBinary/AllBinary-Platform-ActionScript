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
package org.allbinary.animation.image {
    import javax.microedition.lcdui.Image;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.media.image.ImageScaleUtil;
    import org.allbinary.string.CommonStrings;

    public class ScaleProcessor extends ScaleBaseProcessor {
    private static var instanceC_value:ScaleProcessor;
    private static var instanceC_set:Boolean = false;
    private static function get instanceC():ScaleProcessor {
        if (!ScaleProcessor.instanceC_set) {
            ScaleProcessor.instanceC_set = true;
            ScaleProcessor.instanceC_value = new ScaleProcessor();
        }
        return ScaleProcessor.instanceC_value;
    }
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var imageScaleUtil:ImageScaleUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsScaleProcessor():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.imageScaleUtil = ImageScaleUtil.getInstance();
        }

        public function ScaleProcessor() {
            super();
            this.initFieldsScaleProcessor();
        }
    

    public static function getInstance():ScaleBaseProcessor {
        return ScaleProcessor.instanceC;
    }
    

    override public function update(originalImage:Image, originalImageArray:Vector.<Image>, ximageToShowArray:Vector.<Image>, unused:int, scaleX:Number, scaleY:Number, maxScaleX:Number, maxScaleY:Number):void {
        try {
            this.imageScaleUtil.scale2(originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e);
        }
    }
    }
}

