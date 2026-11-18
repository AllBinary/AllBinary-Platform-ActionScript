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
    import org.allbinary.util.HashtableUtil;
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.util.ABHashtable;
    import java.lang.JInteger;

    public class KeyPressesAI extends BasicAI {
        private var on:Boolean = false;
        public var keys:Vector.<*> = null;

        // Java field initializers run after the base constructor
        private function initFieldsKeyPressesAI():void {
    this.on = true;
    
        }
    

    public function KeyPressesAI(hashtable:ABHashtable, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(ownerLayerInterface, gameInput);
        this.initFieldsKeyPressesAI();
        this.keys = new Vector.<*>(hashtable.size());
        var objectArray:Vector.<Object> = HashtableUtil.getInstance().getKeysAsArray(hashtable);
        var size:int = objectArray.length;
        for (var index:int = 0; index < size; index++) {
            this.keys[index] = (hashtable.get_((objectArray[index] as Object)) as *);
        }
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        if (this.on) {
            for (var index:int = 0; index < this.keys.length; index++) {
                super.processKeyAI(this.keys[index].intValue());
            }
        }
    }
    

    public function toggle():void {
        if (this.isOn()) {
            this.setOn(false);
        } else {
            this.setOn(true);
        }
    }
    

    public function disable():void {
        this.setOn(false);
    }
    

    public function enable():void {
        this.setOn(true);
    }
    

    private function setOn(on:Boolean):void {
        this.on = on;
    }
    

    public function isOn():Boolean {
        return this.on;
    }
    }
}

