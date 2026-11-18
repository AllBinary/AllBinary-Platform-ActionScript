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
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.NullAnimationFactory;
    import org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehaviorFactory;
    import org.allbinary.game.combat.destroy.DestroyedLayerProcessor;
    import org.allbinary.game.identification.BasicGroupFactory;
    import org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer;
    import org.allbinary.game.multiplayer.layer.RemoteInfo;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface;
    import org.allbinary.view.ViewPositionBase;

    public class PickupLayer extends MultiPlayerGameLayer implements PickedUpLayerInterface, PickupableInterface {
        private var pickedUpLayerInterfaceFactoryInterface:PickedUpLayerInterfaceFactoryInterface = null;
        private var destroyed:Boolean = false;
        private var animationInterface:Animation = null;

        // Java field initializers run after the base constructor
        private function initFieldsPickupLayer():void {
    this.pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
    this.destroyed = false;
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
        }
    

    public function PickupLayer(name:String, remoteInfo:RemoteInfo, total:int, pickedUpLayerInterfaceFactoryInterface:PickedUpLayerInterfaceFactoryInterface, animationInterface:Animation, rectangle:Rectangle, viewPosition:ViewPositionBase) {
        super(remoteInfo, BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition);
        this.initFieldsPickupLayer();
        this.setCollidableInferface(CollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance().createBehavior());
        this.setLayerWidth(10);
        this.setLayerHeight(10);
        this.init(pickedUpLayerInterfaceFactoryInterface, animationInterface);
    }
    

    public function init(pickedUpLayerInterfaceFactoryInterface:PickedUpLayerInterfaceFactoryInterface, animationInterface:Animation):void {
        this.pickedUpLayerInterfaceFactoryInterface = pickedUpLayerInterfaceFactoryInterface;
        this.animationInterface = animationInterface;
        this.setDestroyed(false);
    }
    

    public function initXYZ(x:int, y:int, z:int):void {
        this.setPosition(x, y, z);
    }
    

    override public function paint(graphics:Graphics):void {
        var viewPosition:ViewPositionBase = this.getViewPosition();
        var viewX:int = viewPosition.getX();
        var viewY:int = viewPosition.getY();
        this.animationInterface.paintXY(graphics, viewX, viewY);
    }
    

    override public function paintThreed(graphics:Graphics):void {
        var viewPosition:ViewPositionBase = this.getViewPosition();
        var viewX:int = viewPosition.getX();
        var viewY:int = viewPosition.getY();
        this.animationInterface.paintThreedXYZ(graphics, viewX, viewY, 3);
    }
    

    public function getPickedUpLayerInterfaceFactoryInterface():PickedUpLayerInterfaceFactoryInterface {
        return this.pickedUpLayerInterfaceFactoryInterface;
    }
    

    public function setPickedUp():void {
        this.setDestroyed(true);
    }
    

    override public function isDestroyed():Boolean {
        return this.destroyed;
    }
    

    public function setDestroyed(destroyed:Boolean):void {
        this.destroyed = destroyed;
        if (this.isDestroyed()) {
            DestroyedLayerProcessor.getInstance().add(this);
        }
    }
    

    override public function damage(damage:int, damageType:int):void {
    }
    

    override public function getDamage(damageType:int):int {
        return 0;
    }
    

    override public function set_(gl:GL):void {
        var openGLSurfaceChangedInterface:OpenGLSurfaceChangedInterface = (this.animationInterface as OpenGLSurfaceChangedInterface);
        openGLSurfaceChangedInterface.set_(gl);
    }
    }
}

