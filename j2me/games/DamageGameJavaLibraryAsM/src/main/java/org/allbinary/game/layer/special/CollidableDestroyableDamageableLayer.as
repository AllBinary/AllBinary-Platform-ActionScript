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
package org.allbinary.game.layer.special {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory;
    import org.allbinary.game.combat.damage.DamageableInterface;
    import org.allbinary.game.combat.destroy.DestroyableInterface;
    import org.allbinary.game.combat.destroy.event.DestroyedEvent;
    import org.allbinary.game.identification.BasicGroupFactory;
    import org.allbinary.game.identification.Group;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.game.layer.AllBinaryGameLayerManager;
    import org.allbinary.game.layer.CollidableCompositeLayer;
    import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface;
    import org.allbinary.game.layer.pickup.PickupBehavior;
    import org.allbinary.game.layer.pickup.PickupCompositeInterface;
    import org.allbinary.game.part.PartInterface;
    import org.allbinary.game.part.PartInterfaceUtil;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.RectangleFactory;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.math.PositionStrings;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.view.ViewPositionBase;

    public class CollidableDestroyableDamageableLayer extends CollidableCompositeLayer implements DestroyableInterface, DamageableInterface, PickupCompositeInterface, SpecialGameInputInterface {
    private static var NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER_value:Object;
    private static var NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER_set:Boolean = false;
    private static function get NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER():Object {
        if (!CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER_set) {
            CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER_set = true;
            CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER_value;
    }
    private static function set NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER(value:Object):void {
        CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER_set = true;
        CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER_value = value;
    }
    private static const READYFOREXPLOSION:String = "ReadyForExplosion: ";
        private var groupInterface:Vector.<Group> = null;
        private var readyForExplosion:Boolean = false;
        private var initWidth:int = 0;
        private var initHeight:int = 0;
        private var initX:int = 0;
        private var initY:int = 0;
        private var initZ:int = 0;
        public var partInterfaceArrayP:Vector.<PartInterface> = null;
        private var pickupBehavior:PickupBehavior = null;
        public var allBinaryGameLayerManagerP:AllBinaryGameLayerManager = null;
        public var isDraggable:Boolean = false;
        public var isDragged:Boolean = false;
        public var isDropped:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsCollidableDestroyableDamageableLayer():void {
    
    this.readyForExplosion = false;
    
    
    this.initX = 0;
    this.initY = 0;
    this.initZ = 0;
    this.partInterfaceArrayP = PartInterfaceUtil.getZeroArray();
    
    this.allBinaryGameLayerManagerP = AllBinaryGameLayerManager.getNullInstance();
    this.isDraggable = false;
    this.isDragged = false;
    this.isDropped = false;
        }
    

    public static function getNullInstance():CollidableDestroyableDamageableLayer {
        if (CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER == NullUtil.getInstance().NULL_OBJECT) {
            CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = new CollidableDestroyableDamageableLayer(BasicGroupFactory.getInstance().NONE_ARRAY, StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION);
        }
        return (CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER as CollidableDestroyableDamageableLayer);
    }
    

    public function CollidableDestroyableDamageableLayer(groupInterface:Vector.<Group>, name:String, layerInfo:Rectangle, viewPosition:ViewPositionBase) {
        super(name, layerInfo, viewPosition, CollidableNeverCollideBehaviorFactory.getInstance());
        this.initFieldsCollidableDestroyableDamageableLayer();
        this.initWidth = layerInfo.getWidth();
        this.initHeight = layerInfo.getHeight();
        this.groupInterface = groupInterface;
        this.pickupBehavior = PickupBehavior.getNullInstance();
    }
    

    public function initPosition():void {
        this.setPosition(this.initX, this.initY, this.initZ);
    }
    

    public function initPositionXYZ(x:int, y:int, z:int):void {
        this.initX = x;
        this.initY = y;
        this.initZ = z;
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        super.paint(graphics);
    }
    

    public function damage(damage:int, damageType:int):void {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function getDamage(damageType:int):int {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function isDestroyed():Boolean {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    override public function getGroupInterface():Vector.<Group> {
        return this.groupInterface;
    }
    

    public function setGroupInterface(teamInterface:Vector.<Group>):void {
        this.groupInterface = teamInterface;
    }
    

    public function setAllBinaryGameLayerManager(allBinaryGameLayerManager:AllBinaryGameLayerManager):void {
        this.allBinaryGameLayerManagerP = allBinaryGameLayerManager;
        if (this.allBinaryGameLayerManagerP == null) {
            throw new JException("RuntimeException", "");
        }
    }
    

    public function isReadyForExplosion():Boolean {
        return this.readyForExplosion;
    }
    

    public function setReadyForExplosion(isReadyForExplosion:Boolean):void {
        this.readyForExplosion = isReadyForExplosion;
    }
    

    public function getInitWidth():int {
        return this.initWidth;
    }
    

    public function getInitHeight():int {
        return this.initHeight;
    }
    

    public function getInitX():int {
        return this.initX;
    }
    

    public function getInitY():int {
        return this.initY;
    }
    

    public function up():void {
    }
    

    public function down():void {
    }
    

    public function right():void {
    }
    

    public function left():void {
    }
    

    public function strafeLeft():void {
    }
    

    public function strafeRight():void {
    }
    

    public function fire(layerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
    }
    

    public function special1(layerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
    }
    

    public function special2(layerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
    }
    

    public function special3(layerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
    }
    

    public function special4(layerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
    }
    

    public function special5(layerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
    }
    

    public function upAnalog(yAnalogValue:int):void {
    }
    

    public function downAnalog(yAnalogValue:int):void {
    }
    

    public function rightAnalog(xAnalogValue:int):void {
    }
    

    public function leftAnalog(xAnalogValue:int):void {
    }
    

    public function rightTrigger(layerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent, xAnalogValue:int):void {
    }
    

    public function leftTrigger(layerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent, xAnalogValue:int):void {
    }
    

    public function onDestroyed(destroyedEvent:DestroyedEvent):void {
    }
    

    public function getPickupBehavior():PickupBehavior {
        return this.pickupBehavior;
    }
    

    public function setPickupBehavior(pickupBehavior:PickupBehavior):void {
        this.pickupBehavior = pickupBehavior;
    }
    

    public function addPart(pickedUpLayerInterfaceFactoryInterface:PickedUpLayerInterfaceFactoryInterface):void {
    }
    

    public function setPartInterfaceArray(partInterfaceArray:Vector.<PartInterface>):void {
        this.partInterfaceArrayP = partInterfaceArray;
    }
    

    public function getPartInterfaceArray():Vector.<PartInterface> {
        return this.partInterfaceArrayP;
    }
    

    override public function toStringAppend(stringBuffer:StringMaker):void {
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        var positionStrings:PositionStrings = PositionStrings.getInstance();
        super.toStringAppend(stringBuffer);
        stringBuffer.append(commonSeps.NEW_LINE);
        var groupInterfaceArray:Vector.<Group> = this.getGroupInterface();
        var size:int = groupInterfaceArray.length;
        for (var index:int = 0; index < size; index++) {
            stringBuffer.append(groupInterfaceArray[index].toString());
            stringBuffer.append(commonSeps.COMMA);
        }
        var pickupBehavior:PickupBehavior = this.getPickupBehavior();
        if (pickupBehavior != null) {
            stringBuffer.append(commonSeps.NEW_LINE);
            stringBuffer.append(pickupBehavior.toString());
        }
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(CollidableDestroyableDamageableLayer.READYFOREXPLOSION);
        stringBuffer.appendboolean(this.readyForExplosion);
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(this.commonStrings.INIT);
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.appendint(this.initX);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.appendint(this.initX);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.appendint(this.initZ);
    }
    

    override public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        this.toStringAppend(stringBuffer);
        return stringBuffer.toString();
    }
    }
}

