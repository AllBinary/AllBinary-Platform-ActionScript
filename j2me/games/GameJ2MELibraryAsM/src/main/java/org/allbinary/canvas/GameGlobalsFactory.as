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
package org.allbinary.canvas {
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.PointFactory;
    import java.lang.JInteger;

    public class GameGlobalsFactory {
    private static var instance_value:GameGlobalsFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():GameGlobalsFactory {
        if (!GameGlobalsFactory.instance_set) {
            GameGlobalsFactory.instance_set = true;
            GameGlobalsFactory.instance_value = new GameGlobalsFactory();
        }
        return GameGlobalsFactory.instance_value;
    }
        public var newCanvas:Boolean = false;
        public var newDisplaybleTime:Number = 0;
        public var point:GPoint = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameGlobalsFactory():void {
    this.newCanvas = true;
    this.newDisplaybleTime = Number(JInteger.MIN_VALUE);
    this.point = PointFactory.getInstance().ZERO_ZERO;
        }

        public function GameGlobalsFactory() {
            super();
            this.initFieldsGameGlobalsFactory();
        }
    

    public static function getInstance():GameGlobalsFactory {
        return GameGlobalsFactory.instance;
    }
    }
}

