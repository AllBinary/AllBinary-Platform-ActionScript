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
package org.allbinary.game.layer {
    import org.allbinary.ai.ArtificialIntelligence;
    import org.allbinary.ai.ArtificialIntelligenceInterface;
    import org.allbinary.game.collision.CollidableBaseBehavior;
    import org.allbinary.game.collision.CollidableBaseBehaviorFactory;
    import org.allbinary.game.collision.CollidableInterfaceCompositeInterface;
    import org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.RectangleFactory;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.view.ViewPositionBase;
    import org.allbinary.logic.NullUtil;

    public class CollidableCompositeLayer extends AllBinaryGameLayer implements CollidableInterfaceCompositeInterface {
    private static var NULL_COLLIDABLE_COMPOSITE_LAYER_value:Object;
    private static var NULL_COLLIDABLE_COMPOSITE_LAYER_set:Boolean = false;
    private static function get NULL_COLLIDABLE_COMPOSITE_LAYER():Object {
        if (!CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER_set) {
            CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER_set = true;
            CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER_value;
    }
    private static function set NULL_COLLIDABLE_COMPOSITE_LAYER(value:Object):void {
        CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER_set = true;
        CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER_value = value;
    }
        private var collidableInferface:CollidableBaseBehavior = null;

        // Java field initializers run after the base constructor
        private function initFieldsCollidableCompositeLayer():void {
    this.collidableInferface = CollidableNeverCollideBehaviorFactory.getInstance().createBehavior();
        }
    

    public static function getNullInstance():CollidableCompositeLayer {
        if (CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER == NullUtil.getInstance().NULL_OBJECT) {
            CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER = new CollidableCompositeLayer(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION, CollidableNeverCollideBehaviorFactory.getInstance());
        }
        return (CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER as CollidableCompositeLayer);
    }
    

    public function CollidableCompositeLayer(name:String, layerInfo:Rectangle, viewPosition:ViewPositionBase, collidableBaseBehaviorFactory:CollidableBaseBehaviorFactory) {
        super(name, layerInfo, viewPosition);
        this.initFieldsCollidableCompositeLayer();
        if (collidableBaseBehaviorFactory != CollidableNeverCollideBehaviorFactory.getInstance()) {
            this.setCollidableInferface(collidableBaseBehaviorFactory.createBehavior());
        }
    }
    

    public function getArtificialIntelligenceInterface():ArtificialIntelligenceInterface {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
        return ArtificialIntelligence.getInstance();
    }
    

    public function getCollidableInferface():CollidableBaseBehavior {
        return this.collidableInferface;
    }
    

    public function setCollidableInferface(collidableInferface:CollidableBaseBehavior):void {
        this.collidableInferface = collidableInferface;
    }
    

    override public function implmentsCollidableInterface():Boolean {
        return true;
    }
    

    override public function toStringAppend(stringBuffer:StringMaker):void {
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        super.toStringAppend(stringBuffer);
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(this.getCollidableInferface().toString());
    }
    

    override public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        this.toStringAppend(stringBuffer);
        return stringBuffer.toString();
    }
    }
}

