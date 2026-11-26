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
package org.allbinary.game.tick {
    import org.allbinary.layer.AllBinaryLayerManager;

    public class NullTickable implements TickableInterface {
    private static var SINGLETON_value:NullTickable;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():NullTickable {
        if (!NullTickable.SINGLETON_set) {
            NullTickable.SINGLETON_set = true;
            NullTickable.SINGLETON_value = new NullTickable();
        }
        return NullTickable.SINGLETON_value;
    }
        private var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsNullTickable():void {
    this.NAME = "NulLTickable";
        }

        public function NullTickable() {
            super();
            this.initFieldsNullTickable();
        }
    

    public static function getInstance():NullTickable {
        return NullTickable.SINGLETON;
    }
    

    public function processTick(...args):void {
        if (args.length == 1) {
            this.processTick_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "processTick");
    }

    private function processTick_jo1(allBinaryLayerManager:AllBinaryLayerManager):void {
    }
    

    public function getName():String {
        return this.NAME;
    }
    }
}

