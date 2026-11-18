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
package org.allbinary.direction {
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonPhoneStrings;
    import org.allbinary.string.CommonSeps;

    public class DirectionFactory {
    private static var instance_value:DirectionFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():DirectionFactory {
        if (!DirectionFactory.instance_set) {
            DirectionFactory.instance_set = true;
            DirectionFactory.instance_value = new DirectionFactory();
        }
        return DirectionFactory.instance_value;
    }
        public var NAME:String = null;
        public var LEFT:Direction = null;
        public var RIGHT:Direction = null;
        public var DOWN:Direction = null;
        public var UP:Direction = null;
        public var UP_LEFT:Direction = null;
        public var UP_RIGHT:Direction = null;
        public var DOWN_LEFT:Direction = null;
        public var DOWN_RIGHT:Direction = null;
        public var NOT_BORDERED_WITH:Direction = null;
        public var NO_DIRECTION:Direction = null;
        public var TOP:Direction = null;
        public var BOTTOM:Direction = null;
        public var ALL_DIRECTION:Direction = null;

        // Java field initializers run after the base constructor
        private function initFieldsDirectionFactory():void {
    this.NAME = "DIRECTION";
    this.LEFT = new Direction(CommonPhoneStrings.getInstance().LEFT, "WEST", 0, 1);
    this.RIGHT = new Direction(CommonPhoneStrings.getInstance().RIGHT, "EAST", 1, 0);
    this.DOWN = new Direction(CommonPhoneStrings.getInstance().DOWN, "SOUTH", 2, 0);
    this.UP = new Direction(CommonPhoneStrings.getInstance().UP, "NORTH", 3, 0);
    
    
    
    
    this.NOT_BORDERED_WITH = new Direction("NOT_BORDERED_WITH", "NOT_BORDERED_WITH", 8, 0);
    this.NO_DIRECTION = new Direction("NO_DIRECTION", "NO_DIRECTION", 9, 0);
    this.TOP = new Direction("TOP", "TOP", 10, 0);
    this.BOTTOM = new Direction("BOTTOM", "BOTTOM", 11, 0);
    this.ALL_DIRECTION = new Direction("ALL_DIRECTION", "ALL_DIRECTION", 12, 0);
        }
    

    public static function getInstance():DirectionFactory {
        return DirectionFactory.instance;
    }
    

    public function DirectionFactory() {
        super();
        this.initFieldsDirectionFactory();
        var stringBuffer:StringMaker = new StringMaker();
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        this.UP_LEFT = new Direction("UP LEFT", stringBuffer.append(this.UP.getOtherName()).append(commonSeps.SPACE).append(this.LEFT.getOtherName()).toString(), 4, 0);
        stringBuffer.delete_(0, stringBuffer.length());
        this.UP_RIGHT = new Direction("UP RIGHT", stringBuffer.append(this.UP.getOtherName()).append(commonSeps.SPACE).append(this.RIGHT.getOtherName()).toString(), 5, 0);
        stringBuffer.delete_(0, stringBuffer.length());
        this.DOWN_LEFT = new Direction("DOWN LEFT", stringBuffer.append(this.DOWN.getOtherName()).append(commonSeps.SPACE).append(this.LEFT.getOtherName()).toString(), 6, 0);
        stringBuffer.delete_(0, stringBuffer.length());
        this.DOWN_RIGHT = new Direction("DOWN RIGHT", stringBuffer.append(this.DOWN.getOtherName()).append(commonSeps.SPACE).append(this.RIGHT.getOtherName()).toString(), 7, 0);
    }
    }
}

