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
package org.allbinary.game.ag.layer.weapon.mine {
    import org.allbinary.ag.weapon.media.audio.DropWeaponSound;
    import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory;
    import org.allbinary.game.layer.weapon.SimpleWeaponLayer;
    import org.allbinary.game.multiplayer.layer.RemoteInfo;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.media.audio.SecondaryPlayerQueueFactory;
    import org.allbinary.physics.movement.NoMovementFactory;
    import org.allbinary.view.ViewPositionBase;
    import org.allbinary.view.event.ViewPositionEventHandler;

    public class MineLayer extends SimpleWeaponLayer {
    private static const NAME:String = "MineLayer";
        private var viewPositionEventHandler:ViewPositionEventHandler = null;

        // Java field initializers run after the base constructor
        private function initFieldsMineLayer():void {
    this.viewPositionEventHandler = ViewPositionEventHandler.getInstance();
        }
    

    public function MineLayer(viewPosition:ViewPositionBase) {
        super(MineLayer.NAME, RemoteInfo.REMOTE_INFO, -1, NoMovementFactory.getInstance().getMovmentInstance(), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get_(MineWeaponResources.getInstance().RESOURCE).getInstance1(0), SimpleWeaponLayer.createDestroyed(), new Rectangle(PointFactory.getInstance().ZERO_ZERO, 10, 10), viewPosition);
        this.initFieldsMineLayer();
    }
    

    override public function initXYZ(x:int, y:int, z:int):void {
        this.setPosition(int(x + 5), int(y + 5), z);
        this.viewPositionEventHandler.addListener((this as AllBinaryLayer));
        SecondaryPlayerQueueFactory.getInstance().add(DropWeaponSound.getInstance());
    }
    

    override public function damage(damage:int, damageType:int):void {
        this.totalDamage = int(this.getInitDamage() + 1);
    }
    

    override public function getDamage(damageType:int):int {
        super.getDamage(damageType);
        return this.getInitDamage();
    }
    

    override public function setDestroyed(destroyed:Boolean):void {
        super.setDestroyed(destroyed);
        if (this.isDestroyed()) {
            this.viewPositionEventHandler.removeListener(this);
        }
    }
    }
}

