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
package org.allbinary.game.collision {
    import org.allbinary.game.layer.CollidableCompositeLayer;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonStrings;

    public class CollidableBaseBehavior implements CollidableInterface {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        public var layerCollisionUtil:LayerCollisionUtil = null;
        private var collidable:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsCollidableBaseBehavior():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.layerCollisionUtil = LayerCollisionUtil.getInstance();
    this.collidable = true;
        }
    

    public function CollidableBaseBehavior(collidable:Boolean) {
        super();
        this.initFieldsCollidableBaseBehavior();
        this.collidable = collidable;
    }
    

    public function update():void {
    }
    

    public function getName():String {
        return JSystem.className(this);
    }
    

    public function setCollidable(collidable:Boolean):void {
        this.collidable = collidable;
    }
    

    public function isCollidable(ownerLayer:CollidableCompositeLayer):Boolean {
        return this.collidable;
    }
    

    public function collide(ownerLayer:CollidableCompositeLayer, allbinaryCollidableLayer:CollidableCompositeLayer):void {
        throw new JException("Exception", new StringMaker().append(this.commonStrings.NOT_IMPLEMENTED).append(CommonLabels.getInstance().COLON_SEP).append(JSystem.className(this)).toString());
    }
    

    public function isCollision(ownerLayer:CollidableCompositeLayer, collisionLayer:CollidableCompositeLayer):Boolean {
        return this.layerCollisionUtil.isCollision(ownerLayer, collisionLayer);
    }
    

    public function isCollisionInterface(ownerLayer:CollidableCompositeLayer, collidableInterfaceCompositeInterface:CollidableInterfaceCompositeInterface):Boolean {
        return this.layerCollisionUtil.isCollision(ownerLayer, (collidableInterfaceCompositeInterface as AllBinaryLayer));
    }
    

    public function collideInterface(ownerLayer:CollidableCompositeLayer, collidableInterfaceCompositeInterface:CollidableInterfaceCompositeInterface):void {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function paint(ownerLayer:CollidableCompositeLayer, graphics:Graphics):void {
    }
    

    public function getCollisionTypeWith(layerInterface:AllBinaryLayer):CollisionType {
        return CollisionTypeFactory.getInstance().NONE;
    }
    }
}

