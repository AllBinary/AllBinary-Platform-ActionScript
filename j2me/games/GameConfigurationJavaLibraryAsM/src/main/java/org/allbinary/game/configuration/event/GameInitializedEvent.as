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
package org.allbinary.game.configuration.event {
    import org.allbinary.game.resource.ResourceLoadingLevel;
    import org.allbinary.game.resource.ResourceLoadingLevelFactory;
    import org.allbinary.logic.util.event.AllBinaryEventObject;

    public class GameInitializedEvent extends AllBinaryEventObject {
        private var resourceLoadingLevel:ResourceLoadingLevel = null;
        private var level:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGameInitializedEvent():void {
    this.resourceLoadingLevel = ResourceLoadingLevelFactory.getInstance().LEVEL;
    this.level = 0;
        }
    

    public function GameInitializedEvent(anyType:Object) {
        super(anyType);
        this.initFieldsGameInitializedEvent();
    }
    

    public function setLevel(level:int):void {
        this.level = level;
        this.resourceLoadingLevel = ResourceLoadingLevelFactory.getInstance().LEVEL;
    }
    

    public function getLevel():int {
        return this.level;
    }
    

    public function setResourceLoadingLevel(resourceLoadingLevel:ResourceLoadingLevel):void {
        this.resourceLoadingLevel = resourceLoadingLevel;
        this.level = this.resourceLoadingLevel.getLevel();
    }
    

    public function getResourceLoadingLevel():ResourceLoadingLevel {
        return this.resourceLoadingLevel;
    }
    }
}

