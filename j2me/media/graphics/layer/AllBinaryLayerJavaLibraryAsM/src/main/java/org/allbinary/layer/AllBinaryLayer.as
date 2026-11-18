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
package org.allbinary.layer {
    import org.allbinary.game.identification.BasicGroupFactory;
    import org.allbinary.game.identification.Group;
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.RectangleFactory;
    import org.allbinary.graphics.opengles.OpenGLFeatureUtil;
    import org.allbinary.TsUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.math.PositionStrings;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.view.ViewPositionBase;
    import org.allbinary.view.event.ViewPositionEvent;
    import java.lang.JInteger;

    public class AllBinaryLayer extends Layer implements LayerInterface {
    private static var NULL_ALLBINARY_LAYER_value:AllBinaryLayer;
    private static var NULL_ALLBINARY_LAYER_set:Boolean = false;
    public static function get NULL_ALLBINARY_LAYER():AllBinaryLayer {
        if (!AllBinaryLayer.NULL_ALLBINARY_LAYER_set) {
            AllBinaryLayer.NULL_ALLBINARY_LAYER_set = true;
            AllBinaryLayer.NULL_ALLBINARY_LAYER_value = new AllBinaryLayer(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION);
        }
        return AllBinaryLayer.NULL_ALLBINARY_LAYER_value;
    }
    private static const TYPE:String = "Type: ";
        public var viewPositionEvent:ViewPositionEvent = null;
        private var halfWidth:int = 0;
        private var halfHeight:int = 0;
        private var name:String = null;
        private var viewPosition:ViewPositionBase = null;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryLayer():void {
    this.viewPositionEvent = new ViewPositionEvent(this);
    this.halfWidth = 0;
    this.halfHeight = 0;
    
    this.viewPosition = ViewPositionBase.NULL_VIEW_POSITION;
        }
    

    public function AllBinaryLayer(name:String, rectangle:Rectangle, viewPosition:ViewPositionBase) {
        super(rectangle.getWidth(), rectangle.getHeight());
        this.initFieldsAllBinaryLayer();
        var localName:String = null;
        localName = new StringMaker().append(name).append(CommonSeps.getInstance().COLON).append(JInteger.toHexString(TsUtil.getInstance().hashCode(this))).toString();
        this.name = localName;
        var point:GPoint = rectangle.getPoint();
        this.setPosition(point.getX(), point.getY(), point.getZ());
        this.setHalfWidth((this.getWidth() >> 1));
        this.setHalfHeight((this.getHeight() >> 1));
        this.viewPosition = viewPosition;
        this.viewPosition.setAllbinaryLayer(this);
    }
    

    override public function setPosition(x:int, y:int, z:int):void {
        super.setPosition(x, y, z);
    }
    

    override public function moveDXYZ(dx:int, dy:int, dz:int):void {
        super.moveDXYZ(dx, dy, dz);
    }
    

    override public function getXP():int {
        return super.getXP();
    }
    

    override public function getYP():int {
        return super.getYP();
    }
    

    override public function getZP():int {
        return super.getZP();
    }
    

    override public function getWidth():int {
        return super.getWidth();
    }
    

    override public function getHeight():int {
        return super.getHeight();
    }
    

    override public function setVisible(visible:Boolean):void {
        super.setVisible(visible);
    }
    

    override public function isVisible():Boolean {
        return super.isVisible();
    }
    

    override public function paint(graphics:Graphics):void {
        super.paint(graphics);
    }
    

    public function onChangeEvent(layerManagerEvent:ViewPositionEvent):void {
    }
    

    public function paintThreed(graphics:Graphics):void {
    }
    

    public function getX2():int {
        return int(this.getXP() + this.getWidth());
    }
    

    public function getY2():int {
        return int(this.getYP() + this.getHeight());
    }
    

    public function getZ2():int {
        return (this.getZP() + this.getDepth());
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function setHalfWidth(halfWidth:int):void {
        this.halfWidth = halfWidth;
    }
    

    public function getHalfWidth():int {
        return this.halfWidth;
    }
    

    public function setHalfHeight(halfHeight:int):void {
        this.halfHeight = halfHeight;
    }
    

    public function getHalfHeight():int {
        return this.halfHeight;
    }
    

    public function getHalfDepth():int {
        return int(this.getDepth() / 2);
    }
    

    public function getViewPosition():ViewPositionBase {
        return this.viewPosition;
    }
    

    public function setViewPosition(viewPosition:ViewPositionBase):void {
        this.viewPosition = viewPosition;
    }
    

    public function getGroupInterface():Vector.<Group> {
        return BasicGroupFactory.getInstance().NONE_ARRAY;
    }
    

    public function implmentsTickableInterface():Boolean {
        return false;
    }
    

    public function implmentsGameInputInterface():Boolean {
        return false;
    }
    

    public function implmentsArtificialIntelligenceCompositeInterface():Boolean {
        return false;
    }
    

    public function implmentsCollidableInterface():Boolean {
        return false;
    }
    

    public function implementsThreedInterface():Boolean {
        return OpenGLFeatureUtil.getInstance().isAnyThreed();
    }
    

    public function getType():int {
        return -1;
    }
    

    public function getMultiPlayerType():int {
        return -1;
    }
    

    override public function toStringAppend(stringBuffer:StringMaker):void {
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        var positionStrings:PositionStrings = PositionStrings.getInstance();
        var commonLabels:CommonLabels = CommonLabels.getInstance();
        stringBuffer.append(this.getName());
        stringBuffer.append(commonSeps.COLON);
        stringBuffer.append(AllBinaryLayer.TYPE);
        stringBuffer.appendint(this.getType());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.appendint(this.getXP());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.appendint(this.getYP());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.appendint(this.getZP());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.getWidth());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.getHeight());
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        this.toStringAppend(stringBuffer);
        return stringBuffer.toString();
    }
    }
}

