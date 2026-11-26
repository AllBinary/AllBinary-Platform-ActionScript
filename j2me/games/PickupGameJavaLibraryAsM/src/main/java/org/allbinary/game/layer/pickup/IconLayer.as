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
package org.allbinary.game.layer.pickup {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.NullAnimationFactory;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.view.ViewPosition;

    public class IconLayer extends AllBinaryLayer {
    private static var NULL_ICON_LAYER_value:IconLayer;
    private static var NULL_ICON_LAYER_set:Boolean = false;
    public static function get NULL_ICON_LAYER():IconLayer {
        if (!IconLayer.NULL_ICON_LAYER_set) {
            IconLayer.NULL_ICON_LAYER_set = true;
            IconLayer.NULL_ICON_LAYER_value = new IconLayer(NullAnimationFactory.getFactoryInstance().getInstance1(0), 0, 0);
        }
        return IconLayer.NULL_ICON_LAYER_value;
    }
        private var animationInterface:Animation = null;

        // Java field initializers run after the base constructor
        private function initFieldsIconLayer():void {
    
        }
    

    public function IconLayer(animationInterface:Animation, width:int, height:int) {
        super(StringUtil.getInstance().EMPTY_STRING, new Rectangle(PointFactory.getInstance().ZERO_ZERO, width, height), ViewPosition.getInstanceD());
        this.initFieldsIconLayer();
        this.animationInterface = animationInterface;
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.animationInterface.paintXY(graphics, this.x, this.y);
    }
    

    override public function paintThreed(graphics:Graphics):void {
        this.animationInterface.paintThreedXYZ(graphics, this.x, this.y, this.z);
    }
    

    public function getAnimationInterface():Animation {
        return this.animationInterface;
    }
    }
}

