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
package org.allbinary.game.layer.weapon {
    import javax.microedition.khronos.opengles.GL;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.animation.NullAnimationFactory;
    import org.allbinary.game.collision.CollidableBaseBehavior;
    import org.allbinary.game.combat.destroy.DestroyedLayerProcessor;
    import org.allbinary.game.combat.weapon.WeaponProperties;
    import org.allbinary.game.configuration.GameConfigurationUtil;
    import org.allbinary.game.identification.BasicGroupFactory;
    import org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer;
    import org.allbinary.game.multiplayer.layer.RemoteInfo;
    import org.allbinary.game.score.NoScoreable;
    import org.allbinary.game.score.ScoreableInterface;
    import org.allbinary.game.tick.TickableInterface;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.physics.movement.Movement;
    import org.allbinary.view.ViewPositionBase;

    public class WeaponLayer extends MultiPlayerGameLayer implements TickableInterface {
        private var animationInterface:Animation = null;
        public var initAnimationInterface:Animation = null;
        private var destroyedAnimationInterface:Animation = null;
        private var sourceLayerInterface:AllBinaryLayer = null;
        public var totalDamage:int = 0;
        private var initDamage:int = 0;
        private var destroyed:Boolean = false;
        public var scoreableInterface:ScoreableInterface = null;
        private var movement:Movement = null;
        private var weaponProperties:WeaponProperties = null;
        private var multiPlayerType:int = 0;
        private var collidableWeaponBehavior:CollidableWeaponBehavior = null;

        // Java field initializers run after the base constructor
        private function initFieldsWeaponLayer():void {
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
    
    
    this.sourceLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    this.totalDamage = 0;
    this.initDamage = 0;
    this.destroyed = true;
    this.scoreableInterface = NoScoreable.getInstance();
    
    this.weaponProperties = WeaponProperties.NULL_WEAPON_PROPERTIES;
    
    this.collidableWeaponBehavior = CollidableWeaponBehavior.getNullInstance();
        }
    

    public function WeaponLayer(name:String, remoteInfo:RemoteInfo, multiPlayerType:int, movement:Movement, animationInterface:Animation, destroyedAnimationInterface:Animation, rectangle:Rectangle, viewPosition:ViewPositionBase) {
        super(remoteInfo, BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition);
        this.initFieldsWeaponLayer();
        this.initAnimationInterface = animationInterface;
        this.setAnimationInterface(animationInterface);
        this.destroyedAnimationInterface = destroyedAnimationInterface;
        this.movement = movement;
        this.multiPlayerType = multiPlayerType;
    }
    

    override public function setCollidableInferface(collidableInferface:CollidableBaseBehavior):void {
        super.setCollidableInferface(collidableInferface);
        this.collidableWeaponBehavior = (this.getCollidableInferface() as CollidableWeaponBehavior);
    }
    

    public function initXYZ(x:int, y:int, z:int):void {
        this.x = x;
        this.y = y;
        this.z = z;
    }
    

    public function init(...args):void {
        if (args.length == 5) {
            this.init_jo5(args[0], args[1], args[2], args[3], args[4]);
            return;
        }
        throw new JException("IllegalArgumentException", "init");
    }

    private function init_jo5(sourceLayerInterface:AllBinaryLayer, angle:int, otherAngle:int, weaponProperties:WeaponProperties, scoreable:ScoreableInterface):void {
        this.setWeaponPropertiesP(weaponProperties);
        this.setReadyForExplosion(false);
        this.setAnimationInterface(this.getInitAnimationInterfaceP());
        this.setOwnerLayerInterface(sourceLayerInterface);
        this.collidableWeaponBehavior.init(sourceLayerInterface);
        this.setGroupInterfaces();
        if (scoreable != null) {
            this.scoreableInterface = scoreable;
        }
        this.totalDamage = 0;
        this.initDamage = weaponProperties.getDamage();
        this.setDestroyed(false);
        this.movement.init(weaponProperties.getSpeed(), angle, otherAngle);
    }
    

    public function setGroupInterfaces():void {
        var basicGroupFactory:BasicGroupFactory = BasicGroupFactory.getInstance();
        if (this.sourceLayerInterface.getGroupInterface()[0] == basicGroupFactory.ENEMY) {
            this.setGroupInterface(basicGroupFactory.ENEMY_ARRAY);
        } else {
            this.setGroupInterface(this.sourceLayerInterface.getGroupInterface());
        }
    }
    

    override public function processTick(...args):void {
        if (args.length == 1) {
            this.processTick_jo1(args[0]);
            return;
        }
        super.processTick.apply(this, args);
    }

    private function processTick_jo1(allBinaryLayerManager:AllBinaryLayerManager):void {
        if (this.isExhausted() && !this.isDestroyed()) {
            if (this.isReadyForExplosion()) {
                var indexedAnimationInterface:IndexedAnimation = (this.getAnimationInterface() as IndexedAnimation);
                var currentFrame:int = indexedAnimationInterface.getFrame();
                if (currentFrame < int(indexedAnimationInterface.getAnimationSize() - 1)) {
                    indexedAnimationInterface.nextFrame();
                } else {
                    this.setDestroyed(true);
                }
            } else {
                var collidableWeaponBehavior:CollidableWeaponBehavior = (this.getCollidableInferface() as CollidableWeaponBehavior);
                if (collidableWeaponBehavior.isCollided()) {
                    this.setAnimationInterface(this.destroyedAnimationInterface);
                    this.getMovement().stop();
                    this.setReadyForExplosion(true);
                } else {
                    this.setDestroyed(true);
                }
            }
        }
        this.movement.process(this);
        this.totalDamage += this.weaponProperties.getDissipation();
    }
    

    override public function isDestroyed():Boolean {
        return this.destroyed;
    }
    

    override public function damage(damage:int, damageType:int):void {
        this.totalDamage += int(damage * damage);
    }
    

    public function givePoints(total:int):void {
        this.scoreableInterface.addPoints(int(GameConfigurationUtil.getInstance().getCompetitionValue() * total));
    }
    

    public function isExhausted():Boolean {
        if (this.totalDamage > this.getInitDamage() || this.totalDamage < 0) {
            return true;
        } else {
            return false;
        }
    }
    

    override public function getDamage(damageType:int):int {
        if (!this.isExhausted()) {
            var total:int = int(this.getInitDamage() - this.totalDamage);
            this.givePoints(total);
            return total;
        }
        return 0;
    }
    

    public function setDestroyed(destroyed:Boolean):void {
        this.destroyed = destroyed;
        if (this.isDestroyed()) {
            this.scoreableInterface = NoScoreable.getInstance();
            DestroyedLayerProcessor.getInstance().add(this);
        }
    }
    

    public function getInitDamage():int {
        return this.initDamage;
    }
    

    public function setAnimationInterface(animationInterface:Animation):void {
        this.animationInterface = animationInterface;
    }
    

    public function getAnimationInterface():Animation {
        return this.animationInterface;
    }
    

    public function getInitAnimationInterfaceP():Animation {
        return this.initAnimationInterface;
    }
    

    public function setInitAnimationInterfaceP(initAnimationInterface:Animation):void {
        this.initAnimationInterface = initAnimationInterface;
    }
    

    public function getDestroyedAnimationInterface():Animation {
        return this.destroyedAnimationInterface;
    }
    

    public function getOwnerLayerInterface():AllBinaryLayer {
        return this.sourceLayerInterface;
    }
    

    public function setOwnerLayerInterface(sourceLayerInterface:AllBinaryLayer):void {
        this.sourceLayerInterface = sourceLayerInterface;
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        var viewPosition:ViewPositionBase = this.getViewPosition();
        this.animationInterface.paintXY(graphics, int(viewPosition.getX() - this.getHalfWidth()), int(viewPosition.getY() - this.getHalfHeight()));
    }
    

    override public function paintThreed(graphics:Graphics):void {
        var viewPosition:ViewPositionBase = this.getViewPosition();
        this.animationInterface.paintThreedXYZ(graphics, int(viewPosition.getX() - this.getHalfWidth()), int(viewPosition.getY() - this.getHalfHeight()), int(viewPosition.getZ() - this.getHalfDepth()));
    }
    

    public function getMovement():Movement {
        return this.movement;
    }
    

    public function setMovement(movement:Movement):void {
        this.movement = movement;
    }
    

    override public function getType():int {
        return WeaponLayer.getStaticType();
    }
    

    public static function getStaticType():int {
        return 0;
    }
    

    override public function getMultiPlayerType():int {
        return this.multiPlayerType;
    }
    

    public function setWeaponPropertiesP(weaponProperties:WeaponProperties):void {
        this.weaponProperties = weaponProperties;
    }
    

    public function getWeaponPropertiesP():WeaponProperties {
        return this.weaponProperties;
    }
    

    override public function implmentsTickableInterface():Boolean {
        return true;
    }
    

    override public function set_(...args):* {
        if (args.length == 1) {
            return this.set__jo1(args[0]);
        }
        return super.set_.apply(this, args);
    }

    private function set__jo1(gl:GL):void {
        this.initAnimationInterface.set_(gl);
    }
    }
}

