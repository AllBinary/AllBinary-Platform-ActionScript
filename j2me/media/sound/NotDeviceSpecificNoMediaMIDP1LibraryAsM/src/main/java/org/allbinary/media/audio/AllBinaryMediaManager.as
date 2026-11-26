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
    import java.io.JInputStream;
    import javax.microedition.media.Player;
    import org.allbinary.TsUtil;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;

    //NotDeviceSpecificNoMediaMIDP1Library
    public class AllBinaryMediaManager {
    private static const THIS:String = "AllBinaryMediaManagerNoMediaMIDP1";
    

    public function AllBinaryMediaManager() {
        super();
    }
    

    public static function isMuted():Boolean {
        return false;
    }
    

    public static function setMuted(aMuted:Boolean):void {
    }
    

    public static function update():Boolean {
        return true;
    }
    

    public static function init(soundsFactoryInterface:SoundsFactoryInterface):void {
        var logUtil:LogUtil = LogUtil.getInstance();
        var commonString:CommonStrings = CommonStrings.getInstance();
        logUtil.putF(commonString.START, AllBinaryMediaManager.THIS, commonString.INIT);
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Media Manager");
        new Sounds(soundsFactoryInterface).init();
    }
    

    public static function shutdown(soundsFactoryInterface:SoundsFactoryInterface):void {
        new Sounds(soundsFactoryInterface).stopAll();
        new Sounds(soundsFactoryInterface).closeAll();
        TsUtil.getInstance().gc();
    }
    

    public static function createPlayerFromInputStream(stream:JInputStream, type:String):Player {
        var logUtil:LogUtil = LogUtil.getInstance();
        var commonString:CommonStrings = CommonStrings.getInstance();
        logUtil.putF(commonString.START, AllBinaryMediaManager.THIS, "creatPlayer(InputStream)");
        return (NoPlayer.NO_PLAYER as Player);
    }
    

    public static function createPlayer(locator:String):Player {
        var logUtil:LogUtil = LogUtil.getInstance();
        var commonString:CommonStrings = CommonStrings.getInstance();
        logUtil.putF(commonString.START, AllBinaryMediaManager.THIS, "creatPlayer(locator)");
        return (NoPlayer.NO_PLAYER as Player);
    }
    

    public static function playTone(frequency:int, time:int, volume:int):void {
    }
    

    public static function getSupportedContentTypes(protocol:String):Vector.<String> {
        return StringUtil.getInstance().getArrayInstance();
    }
    

    public static function getSupportedProtocols(content_type:String):Vector.<String> {
        return StringUtil.getInstance().getArrayInstance();
    }
    }
}

