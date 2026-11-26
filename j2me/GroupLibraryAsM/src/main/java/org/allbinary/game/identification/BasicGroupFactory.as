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
package org.allbinary.game.identification {
    import org.allbinary.logic.NullUtil;

    public class BasicGroupFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!BasicGroupFactory.instance_set) {
            BasicGroupFactory.instance_set = true;
            BasicGroupFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return BasicGroupFactory.instance_value;
    }
    private static function set instance(value:Object):void {
        BasicGroupFactory.instance_set = true;
        BasicGroupFactory.instance_value = value;
    }
        public var NAME:String = null;
        public var NO_SUCH_GROUP:String = null;
        public var GOOD:Group = null;
        public var ENEMY:Group = null;
        public var ENEMY_ON_LEVEL:Group = null;
        public var NONE:Group = null;
        public var GOOD_ARRAY:Vector.<Group> = null;
        public var ENEMY_ARRAY:Vector.<Group> = null;
        public var ENEMY_ON_LEVEL_ARRAY:Vector.<Group> = null;
        public var NONE_ARRAY:Vector.<Group> = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicGroupFactory():void {
    this.NAME = "GROUP_NAME";
    this.NO_SUCH_GROUP = "No Such Group: ";
    this.GOOD = new Group("Good Guys", ((int(0) << 16) >> 16));
    this.ENEMY = new Group("Bad Guys", ((int(1) << 16) >> 16));
    this.ENEMY_ON_LEVEL = new Group("Bad Guys on Level", ((int(2) << 16) >> 16));
    this.NONE = new Group("Not On A Team", ((int(3) << 16) >> 16));
    this.GOOD_ARRAY = new <Group>[this.GOOD];
    this.ENEMY_ARRAY = new <Group>[this.ENEMY];
    this.ENEMY_ON_LEVEL_ARRAY = new <Group>[this.ENEMY, this.ENEMY_ON_LEVEL];
    this.NONE_ARRAY = new <Group>[this.NONE];
        }

        public function BasicGroupFactory() {
            super();
            this.initFieldsBasicGroupFactory();
        }
    

    public static function getInstance():BasicGroupFactory {
        if (BasicGroupFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            BasicGroupFactory.instance = new BasicGroupFactory();
        }
        return (BasicGroupFactory.instance as BasicGroupFactory);
    }
    }
}

