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
package org.allbinary.game.midlet {

    public class DemoGameMidletStateFactory {
    private static var STATE_value:DemoGameMidletStateFactory;
    private static var STATE_set:Boolean = false;
    private static function get STATE():DemoGameMidletStateFactory {
        if (!DemoGameMidletStateFactory.STATE_set) {
            DemoGameMidletStateFactory.STATE_set = true;
            DemoGameMidletStateFactory.STATE_value = new DemoGameMidletStateFactory();
        }
        return DemoGameMidletStateFactory.STATE_value;
    }
        public var NONE:DemoGameMidletState = null;
        public var START_DEMO:DemoGameMidletState = null;
        public var START_GAME:DemoGameMidletState = null;
        public var START_INPUT_MAPPING:DemoGameMidletState = null;

        // Java field initializers run after the base constructor
        private function initFieldsDemoGameMidletStateFactory():void {
    this.NONE = new DemoGameMidletState();
    this.START_DEMO = new DemoGameMidletState();
    this.START_GAME = new DemoGameMidletState();
    this.START_INPUT_MAPPING = new DemoGameMidletState();
        }
    

    public function DemoGameMidletStateFactory() {
        super();
        this.initFieldsDemoGameMidletStateFactory();
    }
    

    public static function getInstance():DemoGameMidletStateFactory {
        return DemoGameMidletStateFactory.STATE;
    }
    }
}

