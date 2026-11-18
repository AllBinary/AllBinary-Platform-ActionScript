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
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.color.BasicColorSetUtil;
    import org.allbinary.graphics.paint.NullPaintable;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.view.ViewPositionBase;
    import org.allbinary.view.event.ViewPositionEvent;
    import org.allbinary.view.event.ViewPositionEventListenerInterface;

    public class AllBinaryGameLayer extends AllBinaryLayer implements ViewPositionEventListenerInterface, OpenGLSurfaceChangedInterface {
        public var commonStrings:CommonStrings = null;
        public var basicSetColorUtil:BasicColorSetUtil = null;
        public var RED:BasicColor = null;
        private var paintable:Paintable = null;
        private var gameKeyEventList:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryGameLayer():void {
    this.commonStrings = CommonStrings.getInstance();
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.RED = BasicColorFactory.getInstance().RED;
    this.paintable = AllBinaryGameLayer.createPaintable();
    this.gameKeyEventList = new BasicArrayListD();
        }
    

    private static function createPaintable():Paintable {
        if (SWTUtil.isSWT) {
            return new SWTBlackPaintable();
        }
        return NullPaintable.getInstance();
    }
    

    public function AllBinaryGameLayer(name:String, layerInfo:Rectangle, viewPosition:ViewPositionBase) {
        super(name, layerInfo, viewPosition);
        this.initFieldsAllBinaryGameLayer();
    }
    

    public function set_(gl:GL):void {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function move():void {
    }
    

    public function getGameKeyEventList():BasicArrayList {
        return this.gameKeyEventList;
    }
    

    public function processInput(allBinaryLayerManager:AllBinaryLayerManager):void {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function processTick(allBinaryLayerManager:AllBinaryLayerManager):void {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public function onViewPositionChangeEvent():void {
        this.onChangeEvent(this.viewPositionEvent);
    }
    

    override public function onChangeEvent(layerManagerEvent:ViewPositionEvent):void {
        if (GameLayerUtil.isOnScreen(this)) {
            this.setVisible(true);
        } else {
            this.setVisible(false);
        }
    }
    

    public function paintFirst(graphics:Graphics):void {
        this.paintable.paint(graphics);
    }
    

    public function paintDebug(graphics:Graphics):void {
        var viewPosition:ViewPositionBase = this.getViewPosition();
        var viewX:int = viewPosition.getX();
        var viewY:int = viewPosition.getY();
        this.basicSetColorUtil.setBasicColorP(graphics, this.RED);
        graphics.drawRect(viewX, viewY, this.getWidth(), this.getHeight());
    }
    

    public function setWidth(width:int):void {
        super.setLayerWidth(width);
        this.setHalfWidth(width >> 1);
    }
    

    public function setHeight(height:int):void {
        super.setLayerHeight(height);
        this.setHalfHeight(height >> 1);
    }
    }
}

