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
package org.allbinary.media.audio {
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonStrings;
    import java.lang.JInteger;

    public class Sounds {
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var soundStrings:SoundStrings = null;
        private var soundsFactoryInterface:SoundsFactoryInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsSounds():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.soundStrings = SoundStrings.getInstance();
    
        }
    

    public function Sounds(soundsFactoryInterface:SoundsFactoryInterface) {
        super();
        this.initFieldsSounds();
        this.soundsFactoryInterface = soundsFactoryInterface;
    }
    

    public function init():void {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT);
        var commonLabels:CommonLabels = CommonLabels.getInstance();
        var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
        this.soundsFactoryInterface.init();
        var soundInterfaceArray:Vector.<Sound> = this.soundsFactoryInterface.getSoundInterfaceArray();
        var smallIntegerSingletonFactory:SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        var indexInteger:* = null;
        var indexString:String = null;
        var stringBuffer:StringMaker = new StringMaker();
        for (var i:int = 0; i < soundInterfaceArray.length; i++) {
            var soundInterface:Sound = soundInterfaceArray[i];
            if (soundInterface != null) {
                indexInteger = smallIntegerSingletonFactory.getAt(i);
                indexString = indexInteger.toString();
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(commonLabels.INDEX_LABEL);
                stringBuffer.append(indexString);
                stringBuffer.append(this.soundStrings.SOUND);
                stringBuffer.append(JSystem.className(soundInterface));
                this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
                soundInterface.init();
                progressCanvas.addNormalPortion(100, new StringMaker().append(this.soundStrings.INIT_SOUND).append(indexString).toString());
            }
        }
        this.soundsFactoryInterface.setInitialized(true);
        this.logUtil.putF(this.commonStrings.END, this, this.commonStrings.INIT);
    }
    

    public function stopAll():void {
        this.logUtil.putF(this.commonStrings.START, this, this.soundStrings.STOP_ALL);
        var soundInterfaceArray:Vector.<Sound> = this.soundsFactoryInterface.getSoundInterfaceArray();
        var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
        var player:Player = null;
        for (var index:int = 0; index < soundInterfaceArray.length; index++) {
            if (soundInterfaceArray[index] != null) {
                player = soundInterfaceArray[index].getPlayerP();
                if (player != null) {
                    player.stop();
                    progressCanvas.addPortion(100, this.soundStrings.STOPPING_SOUND, index);
                }
            }
        }
    }
    

    public function closeAll():void {
        this.logUtil.putF(this.commonStrings.START, this, this.soundStrings.CLOSE_ALL);
        var soundInterfaceArray:Vector.<Sound> = this.soundsFactoryInterface.getSoundInterfaceArray();
        var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
        var player:Player = null;
        for (var index:int = 0; index < soundInterfaceArray.length; index++) {
            if (soundInterfaceArray[index] != null) {
                player = soundInterfaceArray[index].getPlayerP();
                if (player != null) {
                    player.close();
                    progressCanvas.addPortion(100, this.soundStrings.CLOSING_SOUND, index);
                }
            }
        }
    }
    }
}

