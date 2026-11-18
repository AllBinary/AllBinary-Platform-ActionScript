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

    public class ResourceLoadingLevel {
        private var name:String = null;
        private var level:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsResourceLoadingLevel():void {
    
    
        }
    

    public function ResourceLoadingLevel(name:String, level:int) {
        super();
        this.initFieldsResourceLoadingLevel();
        this.name = name;
        this.level = level;
    }
    

    public function getLevel():int {
        return this.level;
    }
    

    public function getName():String {
        return this.name;
    }
    }
}

