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
package org.allbinary.game.resource {
    import org.allbinary.graphics.RelativeRelationship;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.util.BasicArrayListUtil;

    public class ResourceRelativeRelationshipFactory implements ResourceRelativeRelationshipFactoryInterface {
        private var basicArrayListUtil:BasicArrayListUtil = null;
        private var hashtable:ABHashtable = null;
        private var initialized:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsResourceRelativeRelationshipFactory():void {
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
    this.hashtable = StdUtil.getInstance().createHashtable();
    this.initialized = false;
        }

        public function ResourceRelativeRelationshipFactory() {
            super();
            this.initFieldsResourceRelativeRelationshipFactory();
        }
    

    public function init(level:int):void {
        this.setInitialized(true);
    }
    

    public function getResourceRelativeRelationshipList(resource:String):BasicArrayList {
        var listCanBeNull:Object = this.hashtable.get_(resource);
        if (listCanBeNull == null) {
            return this.basicArrayListUtil.getImmutableInstance();
        }
        return (listCanBeNull as BasicArrayList);
    }
    

    public function addResourceRelativeRelationship(resource:String, hardPoint:RelativeRelationship):void {
        var list:BasicArrayList = this.getResourceRelativeRelationshipList(resource);
        if (list == this.basicArrayListUtil.getImmutableInstance()) {
            list = new BasicArrayListD();
        }
        list.add(hardPoint);
        this.hashtable.put(resource, list);
    }
    

    public function isLoadingLevel(level:int):Boolean {
        return false;
    }
    

    public function isFeature():Boolean {
        return false;
    }
    

    public function setInitialized(initialized:Boolean):void {
        this.initialized = initialized;
    }
    

    public function isInitialized():Boolean {
        return this.initialized;
    }
    }
}

