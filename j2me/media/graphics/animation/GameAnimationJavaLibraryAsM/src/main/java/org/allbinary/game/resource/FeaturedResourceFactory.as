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
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.GameFeatureControlledInterface;
    import org.allbinary.game.configuration.feature.GraphicsFeatureFactory;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class FeaturedResourceFactory {
        public var logUtil:LogUtil = null;
        private var list:BasicArrayList = null;
        private var commonStrings:CommonStrings = null;
        private var ANIMATION_FEATURES:String = null;
        private var IMAGE_LABEL:String = null;
        private var IMAGE_GRAPHICS_ARRAY:String = null;
        private var IMAGE_GRAPHICS_ROTATION:String = null;
        private var SPRITE_QUARTER:String = null;
        private var SPRITE_FULL:String = null;
        private var IS_LOADING_LEVEL_LABEL:String = null;
        private var IS_FEATURE:String = null;
        private var GAME_FEATURE_CONTROLLED:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsFeaturedResourceFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.list = new BasicArrayListD();
    this.commonStrings = CommonStrings.getInstance();
    this.ANIMATION_FEATURES = "Animation Features: Vector: ";
    this.IMAGE_LABEL = " Image: ";
    this.IMAGE_GRAPHICS_ARRAY = "Image Array: ";
    this.IMAGE_GRAPHICS_ROTATION = "Image Rotate: ";
    this.SPRITE_QUARTER = " Sprite Quarter: ";
    this.SPRITE_FULL = " Sprite Full: ";
    this.IS_LOADING_LEVEL_LABEL = " isLoadingLevel ";
    this.IS_FEATURE = " isFeature: ";
    this.GAME_FEATURE_CONTROLLED = "GameFeatureControlledInterface: ";
        }
    

    public function FeaturedResourceFactory() {
        super();
        this.initFieldsFeaturedResourceFactory();
    }
    

    public function init(level:int):void {
        var size:int = this.list.size();
        for (var index:int = 0; index < size; index++) {
            var featureInterface:GameFeatureControlledInterface = (this.list.objectArray[index] as GameFeatureControlledInterface);
            var isLoadingLevel:Boolean = featureInterface.isLoadingLevel(level);
            var isFeature:Boolean = featureInterface.isFeature();
            this.logUtil.putF(new StringMaker().append(this.GAME_FEATURE_CONTROLLED).append(featureInterface.toString()).append(this.IS_LOADING_LEVEL_LABEL).append(ResourceLoadingLevelFactory.getInstance().getLevelString(level)).append(CommonSeps.getInstance().COLON_SEP).appendboolean(isLoadingLevel).append(this.IS_FEATURE).appendboolean(isFeature).toString(), this, this.commonStrings.INIT);
            if (isLoadingLevel && isFeature) {
                featureInterface.init(level);
            }
        }
        var features:Features = Features.getInstance();
        var graphicsFeatureFactory:GraphicsFeatureFactory = GraphicsFeatureFactory.getInstance();
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(this.ANIMATION_FEATURES);
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS));
        stringBuffer.append(this.IMAGE_LABEL);
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS));
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
        if (features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)) {
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(this.IMAGE_GRAPHICS_ARRAY);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS));
            stringBuffer.append(this.IMAGE_GRAPHICS_ROTATION);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS));
            stringBuffer.append(this.SPRITE_QUARTER);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS));
            stringBuffer.append(this.SPRITE_FULL);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS));
            this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
        }
    }
    

    public function clear():void {
        this.list.clear();
    }
    

    public function add(featureInterface:GameFeatureControlledInterface):void {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString1(featureInterface)).toString(), this, this.commonStrings.ADD);
        this.list.add(featureInterface);
    }
    

    public function getList():BasicArrayList {
        return this.list;
    }
    }
}

