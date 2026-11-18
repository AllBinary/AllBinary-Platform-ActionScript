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
package org.allbinary.game.paint.help {
    import org.allbinary.game.input.GameKey;
    import org.allbinary.game.input.GameKeyFactory;
    import org.allbinary.game.input.Input;
    import org.allbinary.game.input.PlatformInputMappingFactory;
    import org.allbinary.game.input.mapping.GameInputMapping;
    import org.allbinary.game.input.mapping.PersistentInputMapping;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.color.BasicColorUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;

    public class InputMappingHelpPaintable extends HelpPaintable {
    private static const AND:String = " and ";
    private static const SEP:String = ", ";
    private static const MORE_THAN_TWO_IN_LIST_AND:String = ", and ";
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        public var commonSeps:CommonSeps = null;
        public var stringUtil:StringUtil = null;
        private var basicColorFactory:BasicColorFactory = null;
        private var NONE:GameKey = null;
        private var EMPTY_STRING:String = null;
        private var gameInputMappingArray:Vector.<GameInputMapping> = null;
        private var keyMappingArray:Vector.<BasicArrayList> = null;
        private var actionBasicColor:Vector.<BasicColor> = null;
        private var inputBasicColorArray:Vector.<Vector.<BasicColor>> = null;
        private var selectedBasicColor:BasicColor = null;
        private var updateMyFontProperties:UpdateMyFontProperties = null;

        // Java field initializers run after the base constructor
        private function initFieldsInputMappingHelpPaintable():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.commonSeps = CommonSeps.getInstance();
    this.stringUtil = StringUtil.getInstance();
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.NONE = GameKeyFactory.getInstance().NONE;
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    
    this.keyMappingArray = new Vector.<BasicArrayList>(0);
    this.actionBasicColor = BasicColorUtil.getInstance().ZERO_ARRAY;
    this.inputBasicColorArray = (function():Vector.<Vector.<BasicColor>> { var array:Vector.<Vector.<BasicColor>> = new Vector.<Vector.<BasicColor>>(0); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<BasicColor>(0); } return array; })();
    this.selectedBasicColor = null;
    this.updateMyFontProperties = new UpdateMyFontProperties();
        }
    

    public function InputMappingHelpPaintable(gameInputMappingArray:Vector.<GameInputMapping>, backgroundBasicColor:BasicColor, basicColor:BasicColor) {
        super("Input Mapping", backgroundBasicColor, basicColor);
        this.initFieldsInputMappingHelpPaintable();
        this.gameInputMappingArray = gameInputMappingArray;
        this.update(this.NONE, this.NONE);
        if (backgroundBasicColor == this.basicColorFactory.WHITE || basicColor == this.basicColorFactory.WHITE) {
            this.selectedBasicColor = this.basicColorFactory.RED;
        } else {
            this.selectedBasicColor = this.basicColorFactory.WHITE;
        }
    }
    

    override public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        var updateMyFontProperties:UpdateMyFontProperties = new UpdateMyFontProperties();
        updateMyFontProperties.charHeight = font.getHeight();
        var stringMaker:StringMaker = new StringMaker();
        var inputInfo:Vector.<String> = this.inputInfo;
        var size:int = inputInfo.length;
        updateMyFontProperties.actionStringArray = new Vector.<String>(size);
        updateMyFontProperties.keymappingBeginWidthArray = new Vector.<int>(size);
        updateMyFontProperties.actionStringDeltaXArray = new Vector.<int>(size);
        updateMyFontProperties.inputDeltaXArray = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(size); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(0); } return array; })();
        updateMyFontProperties.sepArray = (function():Vector.<Vector.<String>> { var array:Vector.<Vector.<String>> = new Vector.<Vector.<String>>(size); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<String>(0); } return array; })();
        updateMyFontProperties.sepWidthArray = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(size); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(0); } return array; })();
        var list:BasicArrayList = null;
        var keyMappings:String = null;
        var actionString:String = null;
        var input:Input = null;
        var size2:int = 0;
        for (var index:int = 0; index < size; index++) {
            list = this.keyMappingArray[index];
            keyMappings = this.get_(list);
            stringMaker.delete_(0, stringMaker.length());
            actionString = stringMaker.append(inputInfo[index]).append(this.commonSeps.COLON).append(this.commonSeps.SPACE).append(this.commonSeps.SPACE).toString();
            updateMyFontProperties.actionStringArray[index] = actionString;
            stringMaker.delete_(0, stringMaker.length());
            updateMyFontProperties.keymappingBeginWidthArray[index] = (font.stringWidth(stringMaker.append(updateMyFontProperties.actionStringArray[index]).append(keyMappings).toString()) >> 1);
            updateMyFontProperties.actionStringDeltaXArray[index] = font.stringWidth(actionString);
            size2 = list.size();
            updateMyFontProperties.inputDeltaXArray[index] = new Vector.<int>(size2);
            updateMyFontProperties.sepArray[index] = new Vector.<String>(size2);
            updateMyFontProperties.sepWidthArray[index] = new Vector.<int>(size2);
            for (var index2:int = 0; index2 < size2; index2++) {
                input = (list.objectArray[index2] as Input);
                updateMyFontProperties.inputDeltaXArray[index][index2] = font.stringWidth(input.getName());
                updateMyFontProperties.sepArray[index][index2] = this.EMPTY_STRING;
                if (int(index2 + 1) < list.size()) {
                    if (list.size() == 2) {
                        updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable.AND;
                    } else {
                        if (int(index2 + 2) == list.size()) {
                            updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND;
                        } else {
                            updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable.SEP;
                        }
                    }
                }
                if (updateMyFontProperties.sepArray[index][index2] != this.EMPTY_STRING) {
                    updateMyFontProperties.sepWidthArray[index][index2] = font.stringWidth(updateMyFontProperties.sepArray[index][index2]);
                }
            }
        }
        this.updateMyFontProperties = updateMyFontProperties;
        super.updateMeasurement(graphics);
    }
    

    public function update(selectedGameKey:GameKey, selectedInput:Input):void {
        var stringMaker:StringMaker = new StringMaker();
        this.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append("selected GameKey: ").append(this.stringUtil.toString1(selectedGameKey)).append(" Input: ").append(this.stringUtil.toString1(selectedInput)).toString(), this, this.commonStrings.UPDATE);
        var gameKeyMapping:PersistentInputMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance();
        var size:int = this.gameInputMappingArray.length;
        var keyInfo:Vector.<String> = new Vector.<String>(size);
        var keyMappingArray:Vector.<BasicArrayList> = new Vector.<BasicArrayList>(size);
        var actionBasicColor:Vector.<BasicColor> = new Vector.<BasicColor>(size);
        var inputBasicColorArray:Vector.<Vector.<BasicColor>> = new Vector.<Vector.<BasicColor>>(size);
        var gameInputMapping:GameInputMapping = null;
        var gameKey:GameKey = null;
        var list:BasicArrayList = null;
        for (var index:int = 0; index < size; index++) {
            gameInputMapping = this.gameInputMappingArray[index];
            gameKey = gameInputMapping.getGameKey();
            list = gameKeyMapping.getInputMapping().getMappedInput(gameKey);
            var size2:int = list.size();
            inputBasicColorArray[index] = new Vector.<BasicColor>(size2);
            for (var index2:int = 0; index2 < size2; index2++) {
                inputBasicColorArray[index][index2] = this.basicColor;
            }
            if (gameKey === selectedGameKey) {
                stringMaker.delete_(0, stringMaker.length());
                this.logUtil.putF(stringMaker.append("Found: selected GameKey: ").append(this.stringUtil.toString1(selectedGameKey)).toString(), this, this.commonStrings.UPDATE);
                actionBasicColor[index] = this.selectedBasicColor;
                var indexOfSelectedInput:int = list.indexOf(selectedInput);
                if (indexOfSelectedInput >= 0) {
                    stringMaker.delete_(0, stringMaker.length());
                    this.logUtil.putF(stringMaker.append("Found: selected Input: ").append(this.stringUtil.toString1(selectedInput)).toString(), this, this.commonStrings.UPDATE);
                    inputBasicColorArray[index][indexOfSelectedInput] = this.selectedBasicColor;
                }
            } else {
                actionBasicColor[index] = this.basicColor;
            }
            keyInfo[index] = gameInputMapping.getName();
            keyMappingArray[index] = list;
        }
        this.keyMappingArray = keyMappingArray;
        this.actionBasicColor = actionBasicColor;
        this.inputBasicColorArray = inputBasicColorArray;
        super.setInputInfoP(keyInfo);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    private function get_(keyList:BasicArrayList):String {
        var stringBuffer:StringMaker = new StringMaker();
        var key:Input = null;
        var size:int = keyList.size();
        for (var index:int = 0; index < size; index++) {
            key = (keyList.objectArray[index] as Input);
            stringBuffer.append(key.getName());
            if (int(index + 1) < keyList.size()) {
                if (keyList.size() == 2) {
                    stringBuffer.append(InputMappingHelpPaintable.AND);
                } else {
                    if (int(index + 2) == keyList.size()) {
                        stringBuffer.append(InputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND);
                    } else {
                        stringBuffer.append(InputMappingHelpPaintable.SEP);
                    }
                }
            }
        }
        return stringBuffer.toString();
    }
    

    override public function paint(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        var halfWidth:int = this.displayInfo.getLastHalfWidth();
        graphics.setColor(this.basicColor.intValue());
        graphics.drawString(this.title, halfWidth - this.titleBeginWidth, this.updateMyFontProperties.charHeight, this.anchor);
        var inputInfo:Vector.<String> = this.inputInfo;
        var size:int = inputInfo.length;
        var y:int = 0;
        var deltaX:int = 0;
        var size2:int = 0;
        var actionString:String = null;
        var input:Input = null;
        var list:BasicArrayList = null;
        var sep:String = null;
        var beginWidth:int = 0;
        for (var index:int = 0; index < size; index++) {
            y = int((int(index + 3)) * this.updateMyFontProperties.charHeight);
            deltaX = 0;
            list = this.keyMappingArray[index];
            size2 = list.size();
            beginWidth = this.updateMyFontProperties.keymappingBeginWidthArray[index];
            graphics.setColor(this.actionBasicColor[index].intValue());
            actionString = this.updateMyFontProperties.actionStringArray[index];
            graphics.drawString(actionString, int(int(halfWidth - beginWidth) + deltaX), y, this.anchor);
            deltaX += this.updateMyFontProperties.actionStringDeltaXArray[index];
            for (var index2:int = 0; index2 < size2; index2++) {
                input = (list.objectArray[index2] as Input);
                graphics.setColor(this.inputBasicColorArray[index][index2].intValue());
                graphics.drawString(input.getName(), int(int(halfWidth - beginWidth) + deltaX), y, this.anchor);
                deltaX += this.updateMyFontProperties.inputDeltaXArray[index][index2];
                sep = this.updateMyFontProperties.sepArray[index][index2];
                graphics.setColor(this.basicColor.intValue());
                graphics.drawString(sep, int(int(halfWidth - beginWidth) + deltaX), y, this.anchor);
                deltaX += this.updateMyFontProperties.sepWidthArray[index][index2];
            }
        }
    }
    }
}

