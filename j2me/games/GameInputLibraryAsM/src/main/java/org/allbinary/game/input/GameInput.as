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
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.InputFeatureFactory;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;

    public class GameInput {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var gameKeyEventList:BasicArrayList = null;
        private var removalGameKeyEventList:BasicArrayList = null;
        public var isRemoveDuplicateKeyPresses:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsGameInput():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
        }
    

    public function GameInput(gameKeyEventList:BasicArrayList, removalGameKeyEventList:BasicArrayList) {
        super();
        this.initFieldsGameInput();
        this.gameKeyEventList = gameKeyEventList;
        this.removalGameKeyEventList = removalGameKeyEventList;
        this.isRemoveDuplicateKeyPresses = Features.getInstance().isFeature(InputFeatureFactory.getInstance().REMOVE_DUPLICATE_KEY_PRESSES);
    }
    

    public function add(gameKeyEvent:GameKeyEvent):void {
        if (this.isRemoveDuplicateKeyPresses && this.gameKeyEventList.contains(gameKeyEvent)) {
            return;
        }
        if (gameKeyEvent != null) {
            this.gameKeyEventList.add(gameKeyEvent);
        } else {
            this.logUtil.putF("Danger Passed Null GameKeyEvent", this, this.commonStrings.ADD);
        }
    }
    

    public function addForRemoval(gameKeyEvent:GameKeyEvent):void {
        this.removalGameKeyEventList.add(gameKeyEvent);
    }
    

    public function isForRemoval(gameKeyEvent:GameKeyEvent):Boolean {
        return this.removalGameKeyEventList.contains(gameKeyEvent);
    }
    

    public function clear():void {
        this.gameKeyEventList.clear();
    }
    

    public function removeNonAIInputGameKeyEvents():void {
        var list:BasicArrayList = this.gameKeyEventList;
        var gameKeyEvent:GameKeyEvent = null;
        for (var index:int = list.size(); --index >= 0; ) {
            gameKeyEvent = (list.objectArray[index] as GameKeyEvent);
            if (gameKeyEvent.getSourceId() != 1) {
                list.removeAt(index);
            }
        }
    }
    

    public function update():void {
        var removeList:BasicArrayList = this.removalGameKeyEventList;
        var list:BasicArrayList = this.gameKeyEventList;
        var size:int = removeList.size();
        for (var index:int = 0; index < size; index++) {
            var anyType:Object = removeList.objectArray[index];
            for (var index2:int = list.size(); --index2 >= 0; ) {
                if (list.objectArray[index2] == anyType) {
                    list.removeAt(index2);
                }
            }
        }
        removeList.clear();
    }
    

    public function getRemovalGameKeyEventList():BasicArrayList {
        return this.removalGameKeyEventList;
    }
    

    public function getGameKeyEventList():BasicArrayList {
        return this.gameKeyEventList;
    }
    }
}

