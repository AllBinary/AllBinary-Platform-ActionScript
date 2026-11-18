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
    import java.lang.JInteger;

    public class ResourceLoadingLevelFactory {
    private static var instance_value:ResourceLoadingLevelFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():ResourceLoadingLevelFactory {
        if (!ResourceLoadingLevelFactory.instance_set) {
            ResourceLoadingLevelFactory.instance_set = true;
            ResourceLoadingLevelFactory.instance_value = new ResourceLoadingLevelFactory();
        }
        return ResourceLoadingLevelFactory.instance_value;
    }
        public var LOAD_EARLY:ResourceLoadingLevel = null;
        public var LOAD_TOUCH:ResourceLoadingLevel = null;
        public var LOAD_GAME:ResourceLoadingLevel = null;
        public var LEVEL:ResourceLoadingLevel = null;
        public var MAX_LEVEL:ResourceLoadingLevel = null;
        public var LOAD_ALL:ResourceLoadingLevel = null;
        private var RESOURCE_LOADING_LEVEL_ARRAY:Vector.<ResourceLoadingLevel> = null;

        // Java field initializers run after the base constructor
        private function initFieldsResourceLoadingLevelFactory():void {
    this.LOAD_EARLY = new ResourceLoadingLevel("Load Early", JInteger.MAX_VALUE);
    this.LOAD_TOUCH = new ResourceLoadingLevel("Load Touch", int(JInteger.MAX_VALUE - 1));
    this.LOAD_GAME = new ResourceLoadingLevel("Load Game", int(JInteger.MAX_VALUE - 2));
    this.LEVEL = new ResourceLoadingLevel("Level", int(JInteger.MAX_VALUE - 99));
    this.MAX_LEVEL = new ResourceLoadingLevel("Max Level", int(JInteger.MAX_VALUE - 100));
    this.LOAD_ALL = new ResourceLoadingLevel("Load All", -1);
    this.RESOURCE_LOADING_LEVEL_ARRAY = new <ResourceLoadingLevel>[this.LOAD_ALL, this.MAX_LEVEL, this.LEVEL, this.LOAD_GAME, this.LOAD_TOUCH, this.LOAD_EARLY];
        }

        public function ResourceLoadingLevelFactory() {
            super();
            this.initFieldsResourceLoadingLevelFactory();
        }
    

    public static function getInstance():ResourceLoadingLevelFactory {
        return ResourceLoadingLevelFactory.instance;
    }
    

    public function getLevelString(level:int):String {
        for (var index:int = 0; index < this.RESOURCE_LOADING_LEVEL_ARRAY.length; index++) {
            if (level == this.RESOURCE_LOADING_LEVEL_ARRAY[index].getLevel()) {
                return this.RESOURCE_LOADING_LEVEL_ARRAY[index].getName();
            }
        }
        return String(level);
    }
    }
}

