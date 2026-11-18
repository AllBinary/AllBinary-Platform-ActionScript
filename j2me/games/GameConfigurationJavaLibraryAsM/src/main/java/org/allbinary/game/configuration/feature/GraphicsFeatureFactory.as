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
package org.allbinary.game.configuration.feature {
    import org.allbinary.logic.string.StringUtil;

    public class GraphicsFeatureFactory {
    private static var instance_value:GraphicsFeatureFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():GraphicsFeatureFactory {
        if (!GraphicsFeatureFactory.instance_set) {
            GraphicsFeatureFactory.instance_set = true;
            GraphicsFeatureFactory.instance_value = new GraphicsFeatureFactory();
        }
        return GraphicsFeatureFactory.instance_value;
    }
        public var NONE:GraphicsFeature = null;
        public var TRANSPARENT_IMAGE_CREATION:GraphicsFeature = null;
        public var IMAGE_GRAPHICS:GraphicsFeature = null;
        public var IMAGE_ROTATION_ON_THE_FLY:GraphicsFeature = null;
        public var IMAGE_TO_ARRAY_GRAPHICS:GraphicsFeature = null;
        public var SPRITE_QUARTER_ROTATION_GRAPHICS:GraphicsFeature = null;
        public var SPRITE_FULL_GRAPHICS:GraphicsFeature = null;
        public var VECTOR_GRAPHICS:GraphicsFeature = null;
        public var VECTOR_TO_IMAGE_GRAPHICS:GraphicsFeature = null;

        // Java field initializers run after the base constructor
        private function initFieldsGraphicsFeatureFactory():void {
    this.NONE = new GraphicsFeature(StringUtil.getInstance().NULL_STRING);
    this.TRANSPARENT_IMAGE_CREATION = new GraphicsFeature("Transparent Image Creation");
    this.IMAGE_GRAPHICS = new GraphicsFeature("Image Graphics");
    this.IMAGE_ROTATION_ON_THE_FLY = new GraphicsFeature("Image Rotated On The Fly");
    this.IMAGE_TO_ARRAY_GRAPHICS = new GraphicsFeature("Image To Array Graphics");
    this.SPRITE_QUARTER_ROTATION_GRAPHICS = new GraphicsFeature("Sprite Quarter Rotation Graphics");
    this.SPRITE_FULL_GRAPHICS = new GraphicsFeature("Sprite Full Rotation Graphics");
    this.VECTOR_GRAPHICS = new GraphicsFeature("BasicArrayList Graphics");
    this.VECTOR_TO_IMAGE_GRAPHICS = new GraphicsFeature("BasicArrayList To Image Graphics");
        }
    

    public static function getInstance():GraphicsFeatureFactory {
        return GraphicsFeatureFactory.instance;
    }
    

    public function GraphicsFeatureFactory() {
        super();
        this.initFieldsGraphicsFeatureFactory();
    }
    }
}

