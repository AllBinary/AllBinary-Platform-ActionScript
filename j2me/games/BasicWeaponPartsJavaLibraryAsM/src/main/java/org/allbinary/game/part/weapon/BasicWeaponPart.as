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
package org.allbinary.game.part.weapon {
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.NullAnimationFactory;
    import org.allbinary.game.combat.weapon.WeaponProperties;
    import org.allbinary.game.part.PartInterface;
    import org.allbinary.game.score.NoScoreable;
    import org.allbinary.game.score.ScoreableInterface;
    import org.allbinary.graphics.RelativeRelationship;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.view.ViewPositionBase;

    public class BasicWeaponPart implements PartInterface, SalvoInterface {
    private static var NULL_BASIC_WEAPON_PART_value:BasicWeaponPart;
    private static var NULL_BASIC_WEAPON_PART_set:Boolean = false;
    public static function get NULL_BASIC_WEAPON_PART():BasicWeaponPart {
        if (!BasicWeaponPart.NULL_BASIC_WEAPON_PART_set) {
            BasicWeaponPart.NULL_BASIC_WEAPON_PART_set = true;
            BasicWeaponPart.NULL_BASIC_WEAPON_PART_value = BasicWeaponPart.createBasicWeaponPart(NullAnimationFactory.getFactoryInstance().getInstance1(0));
        }
        return BasicWeaponPart.NULL_BASIC_WEAPON_PART_value;
    }
        private var animationInterface:Animation = null;
        private var ownerLayerInterface:AllBinaryLayer = null;
        private var weaponProperties:WeaponProperties = null;
        private var scoreableInterface:ScoreableInterface = null;
        public var relativeRelationship:RelativeRelationship = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicWeaponPart():void {
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
    this.ownerLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    this.weaponProperties = WeaponProperties.NULL_WEAPON_PROPERTIES;
    this.scoreableInterface = NoScoreable.getInstance();
    this.relativeRelationship = RelativeRelationship.NULL_RELATIVE_RELATIONSHIP;
        }
    

    public static function createBasicWeaponPart(animationInterface:Animation):BasicWeaponPart {
        return new BasicWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP);
    }
    

    public function BasicWeaponPart(animationInterface:Animation, sourceLayerInterface:AllBinaryLayer, weaponProperties:WeaponProperties, scoreableInterface:ScoreableInterface, relativeRelationship:RelativeRelationship) {
        super();
        this.initFieldsBasicWeaponPart();
        this.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        this.setAnimationInterface(animationInterface);
    }
    

    public function init(sourceLayerInterface:AllBinaryLayer, weaponProperties:WeaponProperties, scoreableInterface:ScoreableInterface, relativeRelationship:RelativeRelationship):void {
        this.setOwnerLayerInterface(sourceLayerInterface);
        this.setWeaponProperties(weaponProperties);
        this.scoreableInterface = scoreableInterface;
        this.relativeRelationship = relativeRelationship;
    }
    

    public function process(allbinaryLayerManager:AllBinaryLayerManager, angle:int, otherAngle:int):void {
        this.processScore(allbinaryLayerManager, angle, otherAngle, this.getWeaponProperties(), this.scoreableInterface);
    }
    

    public function processScore(allbinaryLayerManager:AllBinaryLayerManager, angle:int, otherAngle:int, weaponProperties:WeaponProperties, scoreableInterface:ScoreableInterface):void {
        throw new JException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED);
    }
    

    public function getOwnerLayerInterface():AllBinaryLayer {
        return this.ownerLayerInterface;
    }
    

    public function setOwnerLayerInterface(ownerLayerInterface:AllBinaryLayer):void {
        this.ownerLayerInterface = ownerLayerInterface;
    }
    

    public function getAnimationInterface():Animation {
        return this.animationInterface;
    }
    

    public function setAnimationInterface(animationInterface:Animation):void {
        this.animationInterface = animationInterface;
    }
    

    public function paint(graphics:Graphics):void {
        var viewPosition:ViewPositionBase = this.getOwnerLayerInterface().getViewPosition();
        var viewX:int = viewPosition.getX();
        var viewY:int = viewPosition.getY();
        this.animationInterface.paintXY(graphics, viewX, viewY);
    }
    

    public function paintThreed(graphics:Graphics):void {
    }
    

    public function getWeaponProperties():WeaponProperties {
        return this.weaponProperties;
    }
    

    public function setWeaponProperties(weaponProperties:WeaponProperties):void {
        this.weaponProperties = weaponProperties;
    }
    }
}

