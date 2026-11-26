/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.game.layer.special {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.layer.AllBinaryLayerManager;

    public class SpecialGameInput implements SpecialGameInputInterface {
    

    public function up():void {
    }
    

    public function down():void {
    }
    

    public function right():void {
    }
    

    public function left():void {
    }
    

    public function strafeLeft():void {
    }
    

    public function strafeRight():void {
    }
    

    public function fire(layerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
    }
    

    public function special1(layerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
    }
    

    public function special2(layerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
    }
    

    public function special3(layerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
    }
    

    public function special4(layerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
    }
    

    public function special5(layerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
    }
    

    public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "paint");
    }

    private function paint_jo1(graphics:Graphics):void {
    }
    

    public function paintThreed(graphics:Graphics):void {
    }
    }
}

