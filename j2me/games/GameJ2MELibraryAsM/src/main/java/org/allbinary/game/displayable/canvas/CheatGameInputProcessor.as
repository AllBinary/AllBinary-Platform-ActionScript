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
    import org.allbinary.game.input.GameKeyFactory;
    import org.allbinary.game.input.PlayerGameInput;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.game.input.event.GameKeyEventUtil;
    import org.allbinary.game.layer.AllBinaryGameLayerManager;
    import org.allbinary.game.layer.special.SpecialGameInputFactory;
    import org.allbinary.game.layer.special.SpecialGameInputInterface;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class CheatGameInputProcessor extends PlayerGameInput {
    private static var inputProcessor_value:SpecialGameInputInterface;
    private static var inputProcessor_set:Boolean = false;
    public static function get inputProcessor():SpecialGameInputInterface {
        if (!CheatGameInputProcessor.inputProcessor_set) {
            CheatGameInputProcessor.inputProcessor_set = true;
            CheatGameInputProcessor.inputProcessor_value = SpecialGameInputFactory.NO_SPECIAL_GAME_INPUT;
        }
        return CheatGameInputProcessor.inputProcessor_value;
    }
    public static function set inputProcessor(value:SpecialGameInputInterface):void {
        CheatGameInputProcessor.inputProcessor_set = true;
        CheatGameInputProcessor.inputProcessor_value = value;
    }
        private var PROCESS_GAME:String = null;
        private var gameCanvas:AllBinaryGameCanvas = null;
        private var gameKeyFactory:GameKeyFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsCheatGameInputProcessor():void {
    this.PROCESS_GAME = "processGame";
    
    this.gameKeyFactory = GameKeyFactory.getInstance();
        }
    

    public function CheatGameInputProcessor(gameCanvas:AllBinaryGameCanvas) {
        super(new BasicArrayListD(), new BasicArrayListD(), -1);
        this.initFieldsCheatGameInputProcessor();
        this.gameCanvas = gameCanvas;
    }
    

    override public function update(...args):void {
        if (args.length == 0) {
            this.update_jo0();
            return;
        }
        super.update.apply(this, args);
    }

    private function update_jo0():void {
        try {
            var gameLayerManager:AllBinaryGameLayerManager = this.gameCanvas.getLayerManager();
            var list:BasicArrayList = this.getGameKeyEventList();
            var size:int = list.size();
            for (var index:int = 0; index < size; index++) {
                var anyType:Object = list.objectArray[index];
                var key:int = GameKeyEventUtil.getKey(anyType);
                if (key == this.gameKeyFactory.LEVEL_DOWN.getId()) {
                    CheatGameInputProcessor.inputProcessor.strafeLeft();
                    break;
                } else if (key == this.gameKeyFactory.LEVEL_UP.getId()) {
                    CheatGameInputProcessor.inputProcessor.strafeRight();
                    break;
                }
                if (key == this.gameKeyFactory.LEFT.getId()) {
                    CheatGameInputProcessor.inputProcessor.left();
                    break;
                } else if (key == this.gameKeyFactory.RIGHT.getId()) {
                    CheatGameInputProcessor.inputProcessor.right();
                    break;
                } else if (key == this.gameKeyFactory.UP.getId()) {
                    CheatGameInputProcessor.inputProcessor.up();
                    break;
                } else if (key == this.gameKeyFactory.DOWN.getId()) {
                    CheatGameInputProcessor.inputProcessor.down();
                    break;
                } else if (key == this.gameKeyFactory.KEY_NUM1.getId()) {
                    CheatGameInputProcessor.inputProcessor.special1(gameLayerManager, GameKeyEvent.NONE);
                    break;
                } else if (key == this.gameKeyFactory.KEY_NUM3.getId()) {
                    CheatGameInputProcessor.inputProcessor.special2(gameLayerManager, GameKeyEvent.NONE);
                    break;
                }
            }
            list.clear();
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e);
        }
    }
    }
}

