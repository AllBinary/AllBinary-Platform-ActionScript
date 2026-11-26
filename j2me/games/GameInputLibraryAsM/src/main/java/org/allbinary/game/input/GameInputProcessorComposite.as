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
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class GameInputProcessorComposite extends PlayerGameInput {
        private var name:String = null;
        private var gameInputProcessorInterface:GameInputProcessorInterface = null;
        private var NAME_LABEL:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameInputProcessorComposite():void {
    
    
    this.NAME_LABEL = " GameInputProcessorInterface: ";
        }
    

    public function GameInputProcessorComposite(name:String, gameInputProcessorInterface:GameInputProcessorInterface) {
        super(new BasicArrayListD(), new BasicArrayListD(), -1);
        this.initFieldsGameInputProcessorComposite();
        this.name = name;
        this.gameInputProcessorInterface = gameInputProcessorInterface;
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
            var list:BasicArrayList = this.getGameKeyEventList();
            this.gameInputProcessorInterface.onInput(list);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e);
        }
    }
    

    public function toString():String {
        return new StringMaker().append(JSystem.objectToString(this)).append(this.NAME_LABEL).append(this.name).toString();
    }
    }
}

