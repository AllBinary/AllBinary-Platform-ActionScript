/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.game.identification {
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import java.lang.JInteger;

    public class GroupCommonFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!GroupCommonFactory.instance_set) {
            GroupCommonFactory.instance_set = true;
            GroupCommonFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return GroupCommonFactory.instance_value;
    }
        public var ID:* = null;
        public var GROUP_NAME_LABEL:String = null;
        public var ID_LABEL:String = null;
        public var ADDING_LABEL:String = null;
        public var TO_LABEL:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsGroupCommonFactory():void {
    this.ID = SmallIntegerSingletonFactory.getInstance().getAt(10);
    this.GROUP_NAME_LABEL = "Group Name: ";
    this.ID_LABEL = " Id: ";
    this.ADDING_LABEL = "Adding: ";
    this.TO_LABEL = " to: ";
        }

        public function GroupCommonFactory() {
            super();
            this.initFieldsGroupCommonFactory();
        }
    

    public static function getInstance():GroupCommonFactory {
        if (GroupCommonFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            GroupCommonFactory.instance = new GroupCommonFactory();
        }
        return (GroupCommonFactory.instance as GroupCommonFactory);
    }
    }
}

