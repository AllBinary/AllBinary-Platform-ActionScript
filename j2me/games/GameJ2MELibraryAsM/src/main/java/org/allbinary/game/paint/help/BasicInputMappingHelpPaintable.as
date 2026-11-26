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
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.BasicArrayList;

    public class BasicInputMappingHelpPaintable extends HelpPaintable {
        private var gameInputMappingArray:Vector.<GameInputMapping> = null;
        private var NONE:GameKey = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicInputMappingHelpPaintable():void {
    
    this.NONE = GameKeyFactory.getInstance().NONE;
        }
    

    public function BasicInputMappingHelpPaintable(gameInputMappingArray:Vector.<GameInputMapping>, basicColor:BasicColor) {
        super("Help Screen", BasicColorFactory.getInstance().BLACK, basicColor);
        this.initFieldsBasicInputMappingHelpPaintable();
        this.gameInputMappingArray = gameInputMappingArray;
        this.update(this.NONE, this.NONE);
    }
    

    public function update(...args):void {
        if (args.length == 2) {
            this.update_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "update");
    }

    private function update_jo2(selectedGameKey:GameKey, selectedInput:Input):void {
        var gameKeyMapping:PersistentInputMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance();
        var EQUAL:String = " = ";
        var stringMaker:StringMaker = new StringMaker();
        var size:int = this.gameInputMappingArray.length;
        var keyInfo:Vector.<String> = new Vector.<String>(size);
        var gameInputMapping:GameInputMapping = null;
        var gameKey:GameKey = null;
        var list:BasicArrayList = null;
        for (var index:int = 0; index < size; index++) {
            gameInputMapping = this.gameInputMappingArray[index];
            gameKey = gameInputMapping.getGameKey();
            list = gameKeyMapping.getInputMapping().getMappedInput(gameKey);
            stringMaker.delete_(0, stringMaker.length());
            keyInfo[index] = stringMaker.append(gameInputMapping.getName()).append(EQUAL).append(this.get_(list)).toString();
        }
        super.setInputInfoP(keyInfo);
    }
    

    private function get_(keyList:BasicArrayList):String {
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        var stringBuffer:StringMaker = new StringMaker();
        var AND:String = "and ";
        var key:Input = null;
        var size:int = keyList.size();
        for (var index:int = 0; index < size; index++) {
            key = (keyList.objectArray[index] as Input);
            stringBuffer.append(key.getName());
            if (int(index + 1) < keyList.size()) {
                if (keyList.size() == 2) {
                    stringBuffer.append(commonSeps.SPACE).append(AND);
                } else {
                    if (int(index + 2) == keyList.size()) {
                        stringBuffer.append(commonSeps.COMMA_SEP);
                        stringBuffer.append(AND);
                    } else {
                        stringBuffer.append(commonSeps.COMMA_SEP);
                    }
                }
            }
        }
        return stringBuffer.toString();
    }
    }
}

