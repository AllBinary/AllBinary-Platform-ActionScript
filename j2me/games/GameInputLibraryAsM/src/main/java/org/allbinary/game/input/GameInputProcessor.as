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
package org.allbinary.game.input {
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.layer.AllBinaryLayerManager;
    import java.lang.JInteger;

    public class GameInputProcessor {
    private static var instance_value:GameInputProcessor;
    private static var instance_set:Boolean = false;
    private static function get instance():GameInputProcessor {
        if (!GameInputProcessor.instance_set) {
            GameInputProcessor.instance_set = true;
            GameInputProcessor.instance_value = new GameInputProcessor();
        }
        return GameInputProcessor.instance_value;
    }
    

    public static function getInstance():GameInputProcessor {
        return GameInputProcessor.instance;
    }
    

    public function GameInputProcessor() {
        super();
    }
    

    public function processEvent(allbinaryLayerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
    }
    

    public function processReleasedEvent(allbinaryLayerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
    }
    

    public function processAnalog(allbinaryLayerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent, analogValue:int):void {
    }
    

    public function process(allbinaryLayerManager:AllBinaryLayerManager, keyAsInteger:*):void {
    }
    

    public function processReleased(allbinaryLayerManager:AllBinaryLayerManager, keyAsInteger:*):void {
    }
    }
}

