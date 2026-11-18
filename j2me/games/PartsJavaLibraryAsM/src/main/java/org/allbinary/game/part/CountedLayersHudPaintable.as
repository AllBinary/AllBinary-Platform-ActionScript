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
    import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.paint.PaintableInterface;
    import org.allbinary.layer.AllBinaryLayer;

    public class CountedLayersHudPaintable implements PaintableInterface, UpdateMyFontInterface {
    private static var XXStringWidth:int = 0;
        private var displayInfoSingleton:DisplayInfoSingleton = null;
        private var partInterfaceArray:Vector.<PartInterface> = null;
        private var countedTotalStringColor:int = 0;
        private var countedPartsBorder:int = 0;
        private var startIndex:int = 0;
        private var dropSize:int = 0;
        private var myFontProcessor:MyFontProcessor = null;
        private var height:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsCountedLayersHudPaintable():void {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    
    
    
    
    
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.height = 0;
        }
    

    public function CountedLayersHudPaintable(partInterfaceArray:Vector.<PartInterface>, dropSize:int, startIndex:int, countedTotalStringColor:int, countedPartsBorder:int) {
        super();
        this.initFieldsCountedLayersHudPaintable();
        this.partInterfaceArray = partInterfaceArray;
        this.startIndex = startIndex;
        this.countedTotalStringColor = countedTotalStringColor;
        this.countedPartsBorder = countedPartsBorder;
        this.dropSize = dropSize;
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.height = font.getHeight();
        if (this.dropSize > font.getHeight()) {
            this.height = this.dropSize;
        }
        if (CountedLayersHudPaintable.XXStringWidth == 0) {
            var XXString:String = "XX";
            CountedLayersHudPaintable.XXStringWidth = font.stringWidth(XXString);
        }
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public function paint(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        var lastWidth:int = this.displayInfoSingleton.getLastWidth();
        var widthEdge:int = int(lastWidth - this.dropSize);
        var size:int = this.partInterfaceArray.length;
        var count:int = 0;
        var y:int = 0;
        var countedLayerInterfaceFactory:CountedLayerInterfaceFactoryPart = null;
        var pickedUpLayerInterfaceFactoryInterface:PickedUpLayerInterfaceFactoryInterface = null;
        var layerInterface:AllBinaryLayer = null;
        var charArray:Vector.<int> = null;
        for (var index:int = this.startIndex; index < size; index++) {
            countedLayerInterfaceFactory = (this.partInterfaceArray[index] as CountedLayerInterfaceFactoryPart);
            if (countedLayerInterfaceFactory.getTotal() > 0) {
                pickedUpLayerInterfaceFactoryInterface = countedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory();
                layerInterface = pickedUpLayerInterfaceFactoryInterface.getIconLayer();
                y = int(40 + (int(count * this.height)));
                layerInterface.setPosition(widthEdge, y, layerInterface.getZP());
                layerInterface.paint(graphics);
                graphics.setColor(this.countedTotalStringColor);
                countedLayerInterfaceFactory.paint(graphics);
                charArray = countedLayerInterfaceFactory.getTotalString();
                graphics.drawChars(charArray, 0, charArray.length, int(widthEdge - countedLayerInterfaceFactory.getXOffset()), y, 0);
                count++;
            }
        }
        if (count > 0) {
            graphics.setColor(this.countedPartsBorder);
            graphics.drawRect(lastWidth - (CountedLayersHudPaintable.XXStringWidth + this.dropSize), 40, CountedLayersHudPaintable.XXStringWidth + this.dropSize, int((int(count * this.height)) + 3));
        }
    }
    

    public function paintThreed(graphics:Graphics):void {
    }
    }
}

