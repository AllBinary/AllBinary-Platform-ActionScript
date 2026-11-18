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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class GroupFactory {
    private static var instance_value:GroupFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():GroupFactory {
        if (!GroupFactory.instance_set) {
            GroupFactory.instance_set = true;
            GroupFactory.instance_value = new GroupFactory();
        }
        return GroupFactory.instance_value;
    }
        public var logUtil:LogUtil = null;
        public var NULL_GROUP_ARRAY:Vector.<Group> = null;
        private var list:BasicArrayList = null;
        private var index:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGroupFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.NULL_GROUP_ARRAY = new Vector.<Group>(0);
    this.list = new BasicArrayListD();
    this.index = 0;
        }

        public function GroupFactory() {
            super();
            this.initFieldsGroupFactory();
        }
    

    public static function getInstance():GroupFactory {
        return GroupFactory.instance;
    }
    

    public function getNextGroup():Group {
        var group:Group = (this.list.objectArray[this.index] as Group);
        this.index++;
        return group;
    }
    

    public function getNextGroupByName(name:String):Group {
        var group:Group = this.getNextGroup();
        group.setName(name);
        return group;
    }
    

    public function init(groups:int, nameArray:Vector.<String>):void {
        var stringMaker:StringMaker = new StringMaker();
        var stringUtil:StringUtil = StringUtil.getInstance();
        var TEAM:String = "Team ";
        this.list.clear();
        this.index = 0;
        var size:int = this.list.size();
        var name:String = null;
        while (size < groups) {
            name = stringUtil.EMPTY_STRING;
            if (size < nameArray.length) {
                name = nameArray[size];
            } else {
                stringMaker.delete_(0, stringMaker.length());
                name = stringMaker.append(TEAM).appendint(size).toString();
            }
            this.list.add(new Group(name, ((int((int(size + 3))) << 16) >> 16)));
            size++;
        }
    }
    }
}

