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
package org.allbinary.game.part {
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.NullAnimationFactory;
    import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.math.PrimitiveLongUtil;
    import org.allbinary.util.ABHashtable;

    public class CountedLayerInterfaceFactoryPart implements PartInterface, UpdateMyFontInterface {
    private static var NULL_COUNTED_LAYER_INTERFACE_FACTORY_value:CountedLayerInterfaceFactoryPart;
    private static var NULL_COUNTED_LAYER_INTERFACE_FACTORY_set:Boolean = false;
    public static function get NULL_COUNTED_LAYER_INTERFACE_FACTORY():CountedLayerInterfaceFactoryPart {
        if (!CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY_set) {
            CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY_set = true;
            CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY_value = new CountedLayerInterfaceFactoryPart(0, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY);
        }
        return CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY_value;
    }
        private var updateMyFontProcessor:MyFontProcessor = null;
        private var myFontProcessor:MyFontProcessor = null;
        private var animationInterface:Animation = null;
        private var total:int = 0;
        private var totalString:Vector.<int> = null;
        private var xOffset:int = 0;
        private var countedPickedUpLayerInterfaceFactory:CountedPickedUpLayerInterfaceFactory = null;
        private var primitiveLongUtil:PrimitiveLongUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsCountedLayerInterfaceFactoryPart():void {
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
    this.total = 0;
    this.totalString = NullUtil.getInstance().NULL_CHAR_ARRAY;
    this.xOffset = 0;
    this.countedPickedUpLayerInterfaceFactory = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
    
        }
    

    public function CountedLayerInterfaceFactoryPart(total:int, countedPickedUpLayerInterfaceFactory:CountedPickedUpLayerInterfaceFactory) {
        super();
        this.initFieldsCountedLayerInterfaceFactoryPart();
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000);
        this.init(total, countedPickedUpLayerInterfaceFactory);
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.setXOffset(font.charsWidth(this.totalString, 0, this.primitiveLongUtil.getCurrentTotalDigits()) + (font.getSize() >> 1));
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    private function init(total:int, countedPickedUpLayerInterfaceFactory:CountedPickedUpLayerInterfaceFactory):void {
        this.setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory);
        this.total = total;
    }
    

    public function getInstance4(hashtable:ABHashtable, x:int, y:int, z:int):AllBinaryLayer {
        if (this.total > 0) {
            this.setTotal(int(this.total - 1));
            return this.getCountedPickedUpLayerInterfaceFactory().getNextInstance(hashtable, x, y, z);
        } else {
            throw new JException("Exception", "No more left. Could use a listener to automatically remove");
        }
    }
    

    public function getTotal():int {
        return this.total;
    }
    

    public function setTotal(total:int):void {
        this.total = total;
        this.totalString = this.primitiveLongUtil.getCharArray(total);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public function paint(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
    }
    

    public function paintThreed(graphics:Graphics):void {
    }
    

    public function getAnimationInterface():Animation {
        return this.animationInterface;
    }
    

    public function setAnimationInterface(animationInterface:Animation):void {
        this.animationInterface = animationInterface;
    }
    

    public function getXOffset():int {
        return this.xOffset;
    }
    

    private function setXOffset(totalStringWidth:int):void {
        this.xOffset = totalStringWidth;
    }
    

    public function getTotalString():Vector.<int> {
        return this.totalString;
    }
    

    public function getCountedPickedUpLayerInterfaceFactory():CountedPickedUpLayerInterfaceFactory {
        return this.countedPickedUpLayerInterfaceFactory;
    }
    

    public function setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory:CountedPickedUpLayerInterfaceFactory):void {
        this.countedPickedUpLayerInterfaceFactory = countedPickedUpLayerInterfaceFactory;
    }
    }
}

