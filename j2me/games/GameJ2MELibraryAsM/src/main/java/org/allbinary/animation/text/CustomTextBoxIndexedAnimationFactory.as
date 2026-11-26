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
package org.allbinary.animation.text {
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.TextField;
    import org.allbinary.graphics.form.item.CustomTextBox;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationInterfaceFactoryInterface;
    import org.allbinary.game.canvas.ABToGBUtil;
    import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.media.ScaleProperties;

    public class CustomTextBoxIndexedAnimationFactory implements AnimationInterfaceFactoryInterface {
        public var logUtil:LogUtil = null;
        public var scaleProperties:ScaleProperties = null;
        private var maxLength:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsCustomTextBoxIndexedAnimationFactory():void {
    this.logUtil = LogUtil.getInstance();
    
    
        }
    

    public function CustomTextBoxIndexedAnimationFactory(fontSize:int, maxLength:int) {
        super();
        this.initFieldsCustomTextBoxIndexedAnimationFactory();
        this.scaleProperties = new ScaleProperties();
        this.scaleProperties.scaleHeight = fontSize;
        this.maxLength = maxLength;
    }
    

    public function getInstance1(instanceId:int):Animation {
        var abToGBUtil:ABToGBUtil = ABToGBUtil.getInstance();
        var abCanvas:AllBinaryGameCanvas = (abToGBUtil.abCanvas as AllBinaryGameCanvas);
        var font:Font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, this.scaleProperties.scaleHeight);
        var customTextBox:CustomTextBox = new CustomTextBox2(abCanvas.getCustomCommandListener(), StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, this.maxLength, TextField.ANY, font, abCanvas.getLayerManager().getBackgroundBasicColor(), abCanvas.getLayerManager().getForegroundBasicColor());
        return new CustomTextBoxIndexedAnimation(customTextBox);
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
        var fontSize:int = this.scaleProperties.scaleHeight;
        this.scaleProperties = scaleProperties;
        if (this.scaleProperties.scaleHeight < 6) {
            this.scaleProperties.scaleHeight = fontSize;
        }
    }
    }
}

