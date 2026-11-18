/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.graphics.displayable {

    public class GameTickDisplayInfoSingleton {
    private static var instance_value:GameTickDisplayInfoSingleton;
    private static var instance_set:Boolean = false;
    private static function get instance():GameTickDisplayInfoSingleton {
        if (!GameTickDisplayInfoSingleton.instance_set) {
            GameTickDisplayInfoSingleton.instance_set = true;
            GameTickDisplayInfoSingleton.instance_value = new GameTickDisplayInfoSingleton();
        }
        return GameTickDisplayInfoSingleton.instance_value;
    }
        private var displayInfoSingleton:DisplayInfoSingleton = null;
        private var lastWidth:int = 0;
        private var lastHeight:int = 0;
        private var lastHalfWidth:int = 0;
        private var lastHalfHeight:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGameTickDisplayInfoSingleton():void {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.lastWidth = this.displayInfoSingleton.getLastWidth();
    this.lastHeight = this.displayInfoSingleton.getLastHeight();
    this.lastHalfWidth = this.displayInfoSingleton.getLastHalfWidth();
    this.lastHalfHeight = this.displayInfoSingleton.getLastHalfHeight();
        }

        public function GameTickDisplayInfoSingleton() {
            super();
            this.initFieldsGameTickDisplayInfoSingleton();
        }
    

    public static function getInstance():GameTickDisplayInfoSingleton {
        return GameTickDisplayInfoSingleton.instance;
    }
    

    public function update():void {
        this.lastWidth = this.displayInfoSingleton.getLastWidth();
        this.lastHeight = this.displayInfoSingleton.getLastHeight();
        this.lastHalfWidth = this.displayInfoSingleton.getLastHalfWidth();
        this.lastHalfHeight = this.displayInfoSingleton.getLastHalfHeight();
    }
    

    public function getLastWidth():int {
        return this.lastWidth;
    }
    

    public function getLastHeight():int {
        return this.lastHeight;
    }
    

    public function getLastHalfWidth():int {
        return this.lastHalfWidth;
    }
    

    public function getLastHalfHeight():int {
        return this.lastHalfHeight;
    }
    }
}

