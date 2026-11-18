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
package org.allbinary.animation.resource {
    import org.allbinary.animation.BasicAnimationInterfaceFactoryInterface;
    import org.allbinary.animation.NullAnimationFactory;
    import org.allbinary.game.resource.ResourceLoadingLevelFactory;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.RectangleFactory;
    import org.allbinary.image.ImageCache;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.ABHashtable;

    public class BaseResourceAnimationInterfaceFactoryInterfaceFactory implements FeatureResourceAnimationInterfaceFactoryInterface {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var hashtable:ABHashtable = null;
        private var rectangleHashtable:ABHashtable = null;
        private var rectangleArrayOfArraysHashtable:ABHashtable = null;
        private var name:String = null;
        private var initialized:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsBaseResourceAnimationInterfaceFactoryInterfaceFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    
    this.initialized = false;
        }
    

    public function BaseResourceAnimationInterfaceFactoryInterfaceFactory(name:String, hashtable:ABHashtable, rectangleHashtable:ABHashtable, rectangleArrayHashtable:ABHashtable) {
        super();
        this.initFieldsBaseResourceAnimationInterfaceFactoryInterfaceFactory();
        this.hashtable = hashtable;
        this.rectangleHashtable = rectangleHashtable;
        this.rectangleArrayOfArraysHashtable = rectangleArrayHashtable;
        this.name = name;
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function init(level:int):void {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        this.logUtil.putF(new StringMaker().append("Available List of Animations: ").append(this.hashtable.toString()).toString(), this, commonStrings.INIT);
        this.setInitialized(true);
    }
    

    public function initImageCache(imageCache:ImageCache, level:int):void {
    }
    

    public function add(resource:String, animationInterfaceFactoryInterface:BasicAnimationInterfaceFactoryInterface):void {
        if (this.hashtable.containsKey((resource as Object))) {
            throw new JException("Exception", new StringMaker().append("Resource Already Created: ").append(resource).toString());
        }
        this.hashtable.put(resource, animationInterfaceFactoryInterface);
    }
    

    public function getBasicAnimationInterfaceFactoryInstance(resource:String):BasicAnimationInterfaceFactoryInterface {
        var basicAnimationInterfaceFactoryInterfaceCanBeNull:Object = this.hashtable.get_(resource);
        if (basicAnimationInterfaceFactoryInterfaceCanBeNull == null) {
            return NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY;
        }
        return (basicAnimationInterfaceFactoryInterfaceCanBeNull as BasicAnimationInterfaceFactoryInterface);
    }
    

    public function getRectangle(resource:String):Rectangle {
        var rectangleCanBeNull:Object = this.rectangleHashtable.get_(resource);
        if (rectangleCanBeNull == null) {
            return RectangleFactory.SINGLETON;
        }
        return (rectangleCanBeNull as Rectangle);
    }
    

    public function addRectangle(resource:String, rectangle:Rectangle):void {
        this.rectangleHashtable.put(resource, rectangle);
    }
    

    public function getRectangleArrayOfArrays(resource:String):Vector.<Vector.<Rectangle>> {
        var valueCanBeNull:Object = this.rectangleArrayOfArraysHashtable.get_(resource);
        if (valueCanBeNull != null) {
            var rectangleArrayOfArrays:Vector.<Vector.<Rectangle>> = (valueCanBeNull as Vector.<Vector.<Rectangle>>);
            return rectangleArrayOfArrays;
        } else {
            return RectangleFactory.ARRAY_OF_ARRAYS;
        }
    }
    

    public function addRectangleArrayOfArrays(resource:String, rectangleArrayOfArrays:Vector.<Vector.<Rectangle>>):void {
        this.rectangleArrayOfArraysHashtable.put(resource, rectangleArrayOfArrays);
    }
    

    public function isFeature():Boolean {
        return false;
    }
    

    public function isLoadingLevel(level:int):Boolean {
        var resourceLoadingLevelFactory:ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            return true;
        } else {
            return false;
        }
    }
    

    public function toString():String {
        return new StringMaker().append(JSystem.className(this)).append(CommonSeps.getInstance().SEMICOLON).append(CommonSeps.getInstance().SPACE).append(this.name).toString();
    }
    

    public function getHashtable():ABHashtable {
        return this.hashtable;
    }
    

    public function getRectangleHashtable():ABHashtable {
        return this.rectangleHashtable;
    }
    

    public function getRectangleArrayOfArraysHashtable():ABHashtable {
        return this.rectangleArrayOfArraysHashtable;
    }
    

    public function setInitialized(initialized:Boolean):void {
        this.initialized = initialized;
    }
    

    public function isInitialized():Boolean {
        return this.initialized;
    }
    }
}

