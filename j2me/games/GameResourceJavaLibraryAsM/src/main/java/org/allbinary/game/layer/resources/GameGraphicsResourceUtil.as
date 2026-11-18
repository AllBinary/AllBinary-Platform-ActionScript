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
package org.allbinary.game.layer.resources {
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.GraphicsFeature;
    import org.allbinary.game.configuration.feature.GraphicsFeatureFactory;
    import org.allbinary.graphics.displayable.CanvasStrings;
    import org.allbinary.graphics.opengles.OpenGLFeatureUtil;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;

    public class GameGraphicsResourceUtil {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!GameGraphicsResourceUtil.instance_set) {
            GameGraphicsResourceUtil.instance_set = true;
            GameGraphicsResourceUtil.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return GameGraphicsResourceUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        public var SPRITE:String = null;
        public var QUARTER:String = null;
        private var name:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameGraphicsResourceUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.SPRITE = "_sprite";
    this.QUARTER = "_quarter";
    this.name = StringUtil.getInstance().EMPTY_STRING;
        }
    

    public static function getInstance():GameGraphicsResourceUtil {
        if (GameGraphicsResourceUtil.instance == NullUtil.getInstance().NULL_OBJECT) {
            GameGraphicsResourceUtil.instance = new GameGraphicsResourceUtil();
        }
        return (GameGraphicsResourceUtil.instance as GameGraphicsResourceUtil);
    }
    

    public function GameGraphicsResourceUtil() {
        super();
        this.initFieldsGameGraphicsResourceUtil();
        try {
            this.name = this.getString();
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
        }
    }
    

    private function getString():String {
        var graphicsFeatureFactory:GraphicsFeatureFactory = GraphicsFeatureFactory.getInstance();
        var graphicsFeature:GraphicsFeature = graphicsFeatureFactory.NONE;
        var features:Features = Features.getInstance();
        if (features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS;
        } else if (features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.SPRITE_FULL_GRAPHICS;
        } else if (features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS;
        } else if (features.isFeature(graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY)) {
            graphicsFeature = graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY;
        }
        return this.getStringForFeature(graphicsFeature);
    }
    

    public function getStringForFeature(graphicsFeature:GraphicsFeature):String {
        var stringBuffer:StringMaker = new StringMaker();
        var graphicsFeatureFactory:GraphicsFeatureFactory = GraphicsFeatureFactory.getInstance();
        stringBuffer.delete_(0, stringBuffer.length());
        var features:Features = Features.getInstance();
        if (features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS)) {
        } else if (features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)) {
            if (graphicsFeature == graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS || graphicsFeature == graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY) {
            } else if (graphicsFeature == graphicsFeatureFactory.SPRITE_FULL_GRAPHICS) {
                stringBuffer.append(this.SPRITE);
            } else if (graphicsFeature == graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS) {
                stringBuffer.append(this.QUARTER);
                stringBuffer.append(this.SPRITE);
            } else {
                throw new JException("Exception", "None/Unknown Sub Image Resource Type Specified");
            }
        } else if (OpenGLFeatureUtil.getInstance().isAnyThreed()) {
            stringBuffer.append(CanvasStrings.getInstance().OBJ_MODEL);
        } else {
            throw new JException("Exception", "None/Unknown Main Image Resource Type Specified");
        }
        return stringBuffer.toString();
    }
    

    public function getName():String {
        return this.name;
    }
    }
}

