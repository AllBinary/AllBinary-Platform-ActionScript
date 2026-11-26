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
package org.allbinary.game.layer.identification {
    import org.allbinary.game.identification.Group;
    import org.allbinary.game.identification.GroupInterfaceCompositeInterface;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.event.LayerManagerEvent;
    import org.allbinary.layer.event.LayerManagerEventHandler;
    import org.allbinary.layer.event.LayerManagerEventListener;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class GroupLayerManagerListener extends LayerManagerEventListener {
    private static var SINGLETON_value:GroupLayerManagerListener;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():GroupLayerManagerListener {
        if (!GroupLayerManagerListener.SINGLETON_set) {
            GroupLayerManagerListener.SINGLETON_set = true;
            GroupLayerManagerListener.SINGLETON_value = new GroupLayerManagerListener();
        }
        return GroupLayerManagerListener.SINGLETON_value;
    }
    private static function set SINGLETON(value:GroupLayerManagerListener):void {
        GroupLayerManagerListener.SINGLETON_set = true;
        GroupLayerManagerListener.SINGLETON_value = value;
    }
        public var logUtil:LogUtil = null;
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsGroupLayerManagerListener():void {
    this.logUtil = LogUtil.getInstance();
    this.list = new BasicArrayListD();
        }
    

    public static function getInstance():GroupLayerManagerListener {
        return GroupLayerManagerListener.SINGLETON;
    }
    

    public function GroupLayerManagerListener() {
        super();
        this.initFieldsGroupLayerManagerListener();
        LayerManagerEventHandler.getInstance().addListener(this);
    }
    

    public function clear(...args):void {
        if (args.length == 0) {
            this.clear_jo0();
            return;
        }
        throw new JException("IllegalArgumentException", "clear");
    }

    private function clear_jo0():void {
        var groupList:BasicArrayList = null;
        var size:int = this.list.size();
        for (var index:int = int(size - 1); index >= 0; index--) {
            groupList = (this.list.objectArray[index] as BasicArrayList);
            groupList.clear();
        }
    }
    

    public function getGroupSizeFromInterface(groupInterfaceCompositeInterface:GroupInterfaceCompositeInterface):int {
        var groupInterfaceArray:Vector.<Group> = groupInterfaceCompositeInterface.getGroupInterface();
        return this.getGroupSize(groupInterfaceArray[0]);
    }
    

    public function getGroupSize(groupInterface:Group):int {
        var id:int = groupInterface.getGroupId();
        return this.getGroupSizeById(id);
    }
    

    public function getList(...args):BasicArrayList {
        if (args.length == 1) {
            return this.getList_jo1(args[0]);
        }
        throw new JException("IllegalArgumentException", "getList");
    }

    private function getList_jo1(groupInterface:Group):BasicArrayList {
        var id:int = groupInterface.getGroupId();
        return this.getListById(id);
    }
    

    private function getListById(groupId:int):BasicArrayList {
        var groupList:BasicArrayList = (this.list.objectArray[groupId] as BasicArrayList);
        return groupList;
    }
    

    private function getGroupSizeById(groupId:int):int {
        var groupList:BasicArrayList = (this.list.objectArray[groupId] as BasicArrayList);
        var size:int = groupList.size();
        return size;
    }
    

    public function areAllOtherGroupsEmpty(groupInterface:Group):Boolean {
        var id:int = groupInterface.getGroupId();
        var size:int = this.list.size();
        for (var index:int = int(size - 1); index >= 0; index--) {
            if (id != index) {
                var groupSize:int = this.getGroupSizeById(index);
                if (groupSize != 0) {
                    this.logUtil.putF(new StringMaker().append("Group Size: ").appendint(groupSize).toString(), this, "areAllOtherGroupsEmpty");
                    return false;
                }
            }
        }
        return true;
    }
    

    private function isIdInList(id:int, excludeGroupList:BasicArrayList):Boolean {
        var size:int = excludeGroupList.size();
        var groupInterfaceArray:Vector.<Group> = null;
        var groupInterface:Group = null;
        var groupId:int = 0;
        for (var index:int = int(size - 1); index >= 0; index--) {
            groupInterfaceArray = (JVectors.castVector(excludeGroupList.objectArray[index], Vector.<Group>) as Vector.<Group>);
            var size2:int = groupInterfaceArray.length;
            for (var index2:int = 0; index2 < size2; index2++) {
                groupInterface = groupInterfaceArray[index2];
                groupId = groupInterface.getGroupId();
                if (groupId == id) {
                    return true;
                }
            }
        }
        return false;
    }
    

    public function areAllOtherGroupsLessThan(excludeGroupList:BasicArrayList, maxSize:int):Boolean {
        var size:int = this.list.size();
        for (var index:int = int(size - 1); index >= 0; index--) {
            if (!this.isIdInList(index, excludeGroupList)) {
                var groupSize:int = this.getGroupSizeById(index);
                if (groupSize >= maxSize) {
                    return false;
                }
            }
        }
        return true;
    }
    

    public function init(...args):void {
        if (args.length == 1) {
            this.init_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "init");
    }

    private function init_jo1(total:int):void {
        while (this.list.size() <= int(total + 1)) {
            this.list.add(new BasicArrayListD());
        }
    }
    

    override public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    override public function onCreateLayerManagerEvent(layerManagerEvent:LayerManagerEvent):void {
        var layerInterface:AllBinaryLayer = layerManagerEvent.getLayerInterface();
        var groupInterfaceArray:Vector.<Group> = layerInterface.getGroupInterface();
        var size:int = groupInterfaceArray.length;
        var id:int = 0;
        var groupList:BasicArrayList = null;
        for (var index:int = 0; index < size; index++) {
            id = groupInterfaceArray[index].getGroupId();
            groupList = (this.list.objectArray[id] as BasicArrayList);
            if (groupList == null) {
                this.logUtil.putF(new StringMaker().append("id: ").appendint(id).toString(), this, "onCreateLayerManagerEvent");
            }
            if (!groupList.contains(layerInterface)) {
                groupList.add(layerInterface);
            } else {
            }
        }
    }
    

    override public function onDeleteLayerManagerEvent(layerManagerEvent:LayerManagerEvent):void {
        var layerInterface:AllBinaryLayer = layerManagerEvent.getLayerInterface();
        var groupInterfaceArray:Vector.<Group> = layerInterface.getGroupInterface();
        var size:int = groupInterfaceArray.length;
        var id:int = 0;
        var groupList:BasicArrayList = null;
        for (var index:int = 0; index < size; index++) {
            id = groupInterfaceArray[index].getGroupId();
            groupList = (this.list.objectArray[id] as BasicArrayList);
            groupList.remove(layerInterface);
        }
    }
    

    public function log():void {
        var stringBuffer:StringMaker = new StringMaker();
        var GROUP:String = "Group: ";
        var SPACE:String = CommonSeps.getInstance().SPACE;
        var TOTAL_LABEL:String = CommonLabels.getInstance().TOTAL_LABEL;
        var size:int = this.list.size();
        for (var index:int = int(size - 1); index >= 0; index--) {
            var groupList:BasicArrayList = (this.list.objectArray[index] as BasicArrayList);
            stringBuffer.append(GROUP);
            stringBuffer.appendint(index);
            stringBuffer.append(SPACE);
            stringBuffer.append(TOTAL_LABEL);
            stringBuffer.appendint(groupList.size());
            stringBuffer.append(SPACE);
        }
        this.logUtil.putF(stringBuffer.toString(), this, "log");
    }
    }
}

