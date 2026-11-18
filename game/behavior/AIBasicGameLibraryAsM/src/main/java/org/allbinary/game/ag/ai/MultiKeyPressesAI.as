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
package org.allbinary.game.ag.ai {
    import org.allbinary.game.input.GameInput;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.time.GameTickTimeDelayHelper;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import org.allbinary.time.TimeDelayHelper;
    import org.allbinary.util.ABHashtable;
    import java.lang.JInteger;

    public class MultiKeyPressesAI extends KeyPressesAI {
        private var toggleTimeHelper:TimeDelayHelper = null;
        private var gameTickTimeDelayHelper:GameTickTimeDelayHelper = null;

        // Java field initializers run after the base constructor
        private function initFieldsMultiKeyPressesAI():void {
    this.toggleTimeHelper = new TimeDelayHelper(600);
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
        }
    

    public function MultiKeyPressesAI(hashtable:ABHashtable, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(hashtable, ownerLayerInterface, gameInput);
        this.initFieldsMultiKeyPressesAI();
        this.update();
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
    }
    

    private function update():void {
        var gameInput:GameInput = this.getGameInput();
        var keys:Vector.<*> = this.keys;
        var size:int = keys.length;
        if (this.isOn()) {
            for (index = 0; index < size; index++) {
                key = keys[index].intValue();
                if (key != -1) {
                    gameInput.add(this.gameKeyEventFactory.getInstanceForKey(this, key));
                }
            }
        } else {
            for (var index:int = 0; index < size; index++) {
                var key:int = keys[index].intValue();
                if (key != -1) {
                    gameInput.addForRemoval(this.gameKeyEventFactory.getInstanceForKey(this, key));
                }
            }
        }
    }
    

    override public function toggle():void {
        if (this.toggleTimeHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            super.toggle();
            this.update();
        }
    }
    

    override public function disable():void {
        if (this.toggleTimeHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            super.disable();
            this.update();
        }
    }
    

    override public function enable():void {
        if (this.toggleTimeHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            super.enable();
            this.update();
        }
    }
    }
}

