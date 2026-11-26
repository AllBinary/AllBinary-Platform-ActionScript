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
package org.allbinary.input.motion.button {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.CellPositionFactory;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class TouchButtonsMappingPaintable extends Paintable {
        public var logUtil:LogUtil = null;
        public var foregroundColor:int = 0;
        private var paintableTable:Vector.<Vector.<Paintable>> = null;
        private var touchButtonLocationHelper:TouchButtonLocationHelper = null;

        // Java field initializers run after the base constructor
        private function initFieldsTouchButtonsMappingPaintable():void {
    this.logUtil = LogUtil.getInstance();
    
    this.paintableTable = (function():Vector.<Vector.<Paintable>> { var array:Vector.<Vector.<Paintable>> = new Vector.<Vector.<Paintable>>(0); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<Paintable>(0); } return array; })();
    this.touchButtonLocationHelper = new TouchButtonLocationHelper();
        }
    

    public function TouchButtonsMappingPaintable(basicColor:BasicColor) {
        super();
        this.initFieldsTouchButtonsMappingPaintable();
        this.foregroundColor = basicColor.intValue();
        this.init();
    }
    

    private function init():void {
        try {
            this.paintableTable = this.createPaintableTable();
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "updateRectangle", e);
        }
    }
    

    private function createPaintableTable():Vector.<Vector.<Paintable>> {
        var totalColumns:int = this.touchButtonLocationHelper.getTotalColumns();
        var totalRows:int = this.touchButtonLocationHelper.getTotalRows();
        var paintableTable:Vector.<Vector.<Paintable>> = (function():Vector.<Vector.<Paintable>> { var array:Vector.<Vector.<Paintable>> = new Vector.<Vector.<Paintable>>(totalColumns); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<Paintable>(totalRows); } return array; })();
        var cellPositionFactory:CellPositionFactory = CellPositionFactory.getInstance();
        var commonButtons:CommonButtons = CommonButtons.getInstance();
        for (var index:int = int(totalColumns - 1); index >= 0; index--) {
            for (var rowIndex:int = int(totalRows - 1); rowIndex >= 0; rowIndex--) {
                this.paintableTable[index][rowIndex] = TouchButton.createButton(BasicTouchInputFactory.getInstance().NONE, TouchButtonBlankResource.getInstance(), commonButtons.NORMAL_BUTTON, cellPositionFactory.getInstanceColRow(index, rowIndex), this.touchButtonLocationHelper.getColumnsRemainderHalf(), this.touchButtonLocationHelper.getRowsRemainderHalf());
            }
        }
        return paintableTable;
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        var totalColumns:int = this.touchButtonLocationHelper.getTotalColumns();
        var totalRows:int = this.touchButtonLocationHelper.getTotalRows();
        for (var index:int = int(totalColumns - 1); index >= 0; index--) {
            for (var rowIndex:int = int(totalRows - 1); rowIndex >= 0; rowIndex--) {
                this.paintableTable[index][rowIndex].paint(graphics);
            }
        }
    }
    }
}

