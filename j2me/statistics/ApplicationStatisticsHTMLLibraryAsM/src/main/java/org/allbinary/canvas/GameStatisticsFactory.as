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
package org.allbinary.canvas {
    import org.allbinary.logic.string.StringMaker;

    //ActualPlatform
    public class GameStatisticsFactory extends BaseGameStatistics {
    private static var instance_value:GameStatisticsFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():GameStatisticsFactory {
        if (!GameStatisticsFactory.instance_set) {
            GameStatisticsFactory.instance_set = true;
            GameStatisticsFactory.instance_value = new GameStatisticsFactory();
        }
        return GameStatisticsFactory.instance_value;
    }
        private var stringBuffer:StringMaker = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameStatisticsFactory():void {
    this.stringBuffer = new StringMaker();
        }

        public function GameStatisticsFactory() {
            super();
            this.initFieldsGameStatisticsFactory();
        }
    

    public static function getInstance():GameStatisticsFactory {
        return GameStatisticsFactory.instance;
    }
    

    override public function add(string:String):void {
        if (this.stringBuffer.length() > 12000) {
            this.stringBuffer.delete_(0, this.stringBuffer.length());
            this.stringBuffer.append("Old Stats Cleared");
        }
        this.stringBuffer.append(string);
    }
    

    override public function toString():String {
        return new StringMaker().append(super.toString()).append(this.stringBuffer.toString()).toString();
    }
    }
}

