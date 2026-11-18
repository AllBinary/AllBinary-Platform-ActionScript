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
package org.allbinary.game.configuration.event {
    import org.allbinary.logic.util.event.AllBinaryEventObject;

    public class GameFeatureEvent extends AllBinaryEventObject {
        private var whatChanged:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameFeatureEvent():void {
    
        }
    

    public function GameFeatureEvent(anyType:Object, whatChanged:String) {
        super(anyType);
        this.initFieldsGameFeatureEvent();
        this.whatChanged = whatChanged;
    }
    

    public function getWhatChanged():String {
        return this.whatChanged;
    }
    

    public function getGameOption():Object {
        return this.getSource();
    }
    }
}

