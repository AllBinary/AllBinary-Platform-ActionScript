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
package org.allbinary.logic.util.cache {

    public class CachePolicy {
        private var name:String = null;
        private var maxTime:Number = 0;
        private var maxSize:Number = 0;

        // Java field initializers run after the base constructor
        private function initFieldsCachePolicy():void {
    
    this.maxTime = 0;
    this.maxSize = 0;
        }
    

    public function CachePolicy(name:String, maxTime:Number, maxSize:Number) {
        super();
        this.initFieldsCachePolicy();
        this.name = name;
        this.setMaxTime(maxTime);
        this.setMaxSize(maxSize);
    }
    

    public function getMaxTime():Number {
        return this.maxTime;
    }
    

    public function setMaxTime(maxTime:Number):void {
        this.maxTime = maxTime;
    }
    

    public function getMaxSize():Number {
        return this.maxSize;
    }
    

    public function setMaxSize(maxSize:Number):void {
        this.maxSize = maxSize;
    }
    

    public function getName():String {
        return this.name;
    }
    }
}

