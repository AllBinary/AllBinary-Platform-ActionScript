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
package org.allbinary.logic.math {
    import org.allbinary.logic.string.StringMaker;

    public class PrimitiveLongSingleton {
    private static var instance_value:PrimitiveLongSingleton;
    private static var instance_set:Boolean = false;
    private static function get instance():PrimitiveLongSingleton {
        if (!PrimitiveLongSingleton.instance_set) {
            PrimitiveLongSingleton.instance_set = true;
            PrimitiveLongSingleton.instance_value = new PrimitiveLongSingleton();
        }
        return PrimitiveLongSingleton.instance_value;
    }
        public var UNK:Vector.<int> = null;
        public var NUMBER_ARRAY:Vector.<int> = null;
        public var NUMBER_CHAR_ARRAY:Vector.<int> = null;
        public var NUMBER_CHAR_ARRAYS:Vector.<Vector.<int>> = null;
        public var ZERO:Vector.<int> = null;

        // Java field initializers run after the base constructor
        private function initFieldsPrimitiveLongSingleton():void {
    this.UNK = new <int>["U".charCodeAt(0), "n".charCodeAt(0), "k".charCodeAt(0)];
    this.NUMBER_ARRAY = new <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    this.NUMBER_CHAR_ARRAY = new <int>["0".charCodeAt(0), "1".charCodeAt(0), "2".charCodeAt(0), "3".charCodeAt(0), "4".charCodeAt(0), "5".charCodeAt(0), "6".charCodeAt(0), "7".charCodeAt(0), "8".charCodeAt(0), "9".charCodeAt(0)];
    this.NUMBER_CHAR_ARRAYS = new <Vector.<int>>[new <int>["0".charCodeAt(0)], new <int>["1".charCodeAt(0)], new <int>["2".charCodeAt(0)], new <int>["3".charCodeAt(0)], new <int>["4".charCodeAt(0)], new <int>["5".charCodeAt(0)], new <int>["6".charCodeAt(0)], new <int>["7".charCodeAt(0)], new <int>["8".charCodeAt(0)], new <int>["9".charCodeAt(0)]];
    this.ZERO = new <int>[this.NUMBER_CHAR_ARRAY[0]];
        }

        public function PrimitiveLongSingleton() {
            super();
            this.initFieldsPrimitiveLongSingleton();
        }
    

    public static function getInstance():PrimitiveLongSingleton {
        return PrimitiveLongSingleton.instance;
    }
    

    public function getNumberFromChar(numberAsChar:int):int {
        var size:int = this.NUMBER_CHAR_ARRAY.length;
        for (var index:int = 0; index < size; index++) {
            if (this.NUMBER_CHAR_ARRAY[index] == numberAsChar) {
                return this.NUMBER_ARRAY[index];
            }
        }
        throw new JException("Exception", new StringMaker().append("numberAsChar was not in array: ").appendchar(numberAsChar).toString());
    }
    }
}

