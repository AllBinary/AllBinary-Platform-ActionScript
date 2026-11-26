// Generated Code Do Not Modify
package org.allbinary.game.layer.weapon {
    import org.allbinary.animation.Animation;
    import org.allbinary.game.combat.weapon.WeaponProperties;
    import org.allbinary.game.multiplayer.layer.RemoteInfo;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.physics.movement.Movement;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import org.allbinary.time.TimeDelayHelper;
    import org.allbinary.view.ViewPositionBase;

    public class TempExplosionWeaponLayer extends SimpleWeaponLayer {
        public var weaponProperties:WeaponProperties = null;
        private var timeDelayHelper:TimeDelayHelper = null;

        // Java field initializers run after the base constructor
        private function initFieldsTempExplosionWeaponLayer():void {
    this.weaponProperties = new WeaponProperties(-1, -1, 0, 1000, ((int(0) << 16) >> 16));
    this.timeDelayHelper = new TimeDelayHelper(0);
        }
    

    public function TempExplosionWeaponLayer(name:String, movement:Movement, animationInterface:Animation, rectangle:Rectangle, viewPosition:ViewPositionBase, timeDelay:int) {
        super(name, RemoteInfo.REMOTE_INFO, -1, movement, animationInterface, SimpleWeaponLayer.createDestroyed(), rectangle, viewPosition);
        this.initFieldsTempExplosionWeaponLayer();
        this.timeDelayHelper.delay = timeDelay;
    }
    

    override public function processTick(...args):void {
        if (args.length == 1) {
            this.processTick_jo1(args[0]);
            return;
        }
        super.processTick.apply(this, args);
    }

    private function processTick_jo1(allBinaryLayerManager:AllBinaryLayerManager):void {
        if (this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            this.getCollidableInferface().collide(this, this);
            this.totalDamage = int(this.getInitDamage() + 1);
        }
        super.processTick(allBinaryLayerManager);
    }
    }
}

