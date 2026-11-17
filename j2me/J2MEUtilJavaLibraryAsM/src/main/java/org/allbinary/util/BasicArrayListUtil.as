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
package org.allbinary.util {
    import org.allbinary.game.rand.MyRandomFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonPhoneStrings;

    public class BasicArrayListUtil {
    private static var instance_value:BasicArrayListUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():BasicArrayListUtil {
        if (!BasicArrayListUtil.instance_set) {
            BasicArrayListUtil.instance_set = true;
            BasicArrayListUtil.instance_value = new BasicArrayListUtil();
        }
        return BasicArrayListUtil.instance_value;
    }
        public var NULL_ARRAY_OF_ARRAY:Vector.<Vector.<BasicArrayList>> = null;
        private var myRandomFactory:MyRandomFactory = null;
        private var immutableInstance:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicArrayListUtil():void {
    this.NULL_ARRAY_OF_ARRAY = (function():Vector.<Vector.<BasicArrayList>> { var array:Vector.<Vector.<BasicArrayList>> = new Vector.<Vector.<BasicArrayList>>(0); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<BasicArrayList>(0); } return array; })();
    this.myRandomFactory = MyRandomFactory.getInstance();
    this.immutableInstance = new ImmutableBasicArrayList("Immutable", 0);
        }

        public function BasicArrayListUtil() {
            super();
            this.initFieldsBasicArrayListUtil();
        }
    

    public static function getInstance():BasicArrayListUtil {
        return BasicArrayListUtil.instance;
    }
    

    public function getRandom(list:BasicArrayList):Object {
        var i_random:int = this.getRandomIndex(list);
        return list.objectArray[i_random];
    }
    

    public function getRandomIndex(list:BasicArrayList):int {
        return this.myRandomFactory.getAbsoluteNextInt(list.size());
    }
    

    public function reverse(list:BasicArrayList):void {
        var lastMinusOneIndex:int = int(list.size() - 2);
        var temp:Object = null;
        var size:int = int(lastMinusOneIndex / 2);
        var secondSwapIndex:int = 0;
        for (var index:int = 0; index <= size; index++) {
            secondSwapIndex = int(lastMinusOneIndex - index);
            temp = list.removeAt(index);
            list.addAt(index, list.removeAt(secondSwapIndex));
            list.addAt(int(secondSwapIndex + 1), temp);
        }
    }
    

    public function log(list:BasicArrayList):String {
        var S_LABEL:String = " s: ";
        var size:int = list.size();
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL);
        stringBuffer.appendint(size);
        for (var index:int = int(size - 1); index >= 0; index--) {
            var usedList:BasicArrayList = (list.objectArray[index] as BasicArrayList);
            stringBuffer.append(S_LABEL);
            stringBuffer.appendint(usedList.size());
        }
        return stringBuffer.toString();
    }
    

    public function getImmutableInstance():BasicArrayList {
        return this.immutableInstance;
    }
    

    public static function main(args:Vector.<String>):void {
        var commonPhoneStrings:CommonPhoneStrings = CommonPhoneStrings.getInstance();
        var list:BasicArrayList = new BasicArrayListD();
        list.add(commonPhoneStrings.ONE);
        list.add(commonPhoneStrings.TWO);
        list.add(commonPhoneStrings.THREE);
        list.add(commonPhoneStrings.FOUR);
        list.add(commonPhoneStrings.FIVE);
        list.add(commonPhoneStrings.SIX);
        list.add(commonPhoneStrings.SEVEN);
        list.add(commonPhoneStrings.EIGHT);
        list.add(commonPhoneStrings.NINE);
        BasicArrayListUtil.getInstance().reverse(list);
        trace(list.toString());
    }
    }
}

