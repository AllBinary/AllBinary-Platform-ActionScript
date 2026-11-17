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
package org.allbinary.game.rand {
    import java.util.JRandom;
    import org.allbinary.logic.math.MathUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;
    import java.lang.JInteger;

    //Do not use in client code for money related things.
    public class MyRandomFactory {
    private static var instance_value:MyRandomFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():MyRandomFactory {
        if (!MyRandomFactory.instance_set) {
            MyRandomFactory.instance_set = true;
            MyRandomFactory.instance_value = new MyRandomFactory();
        }
        return MyRandomFactory.instance_value;
    }
        private var mathUtil:MathUtil = null;
        private var rand:JRandom = null;

        // Java field initializers run after the base constructor
        private function initFieldsMyRandomFactory():void {
    this.mathUtil = MathUtil.getInstance();
    
        }
    

    public static function getInstance():MyRandomFactory {
        return MyRandomFactory.instance;
    }
    

    public function MyRandomFactory() {
        super();
        this.initFieldsMyRandomFactory();
        this.rand = new JRandom(JSystem.currentTimeMillis());
    }
    

    public function setSeed(seed:Number):void {
        this.rand = new JRandom(seed);
    }
    

    public function getNextInt(range:int):int {
        var div:int = int((int(JInteger.MAX_VALUE / range)) + 1);
        return (int(this.rand.nextInt() / div));
    }
    

    public function getAbsoluteNextInt(range:int):int {
        return this.mathUtil.abs(this.getNextInt(range));
    }
    

    public function getAbsoluteNextIntAllowZero(range:int):int {
        if (range == 0) {
            return 0;
        } else {
            return this.mathUtil.abs(this.getNextInt(range));
        }
    }
    

    public function shuffle(intArray:Vector.<int>):void {
        this.shuffleTotal(intArray, int(intArray.length * 7));
    }
    

    public function shuffleTotal(intArray:Vector.<int>, shuffleTotal:int):void {
        var size:int = intArray.length;
        var randomIndex:int = 0;
        var randomIndex2:int = 0;
        var value:int = 0;
        for (var index:int = 0; index < shuffleTotal; index++) {
            randomIndex = this.getAbsoluteNextIntAllowZero(size);
            randomIndex2 = this.getAbsoluteNextIntAllowZero(size);
            value = intArray[randomIndex];
            intArray[randomIndex] = intArray[randomIndex2];
            intArray[randomIndex2] = value;
        }
    }
    

    public function shuffle2(intArray:Vector.<int>, intArray2:Vector.<int>):void {
        this.shuffle2Total(intArray, intArray2, int(intArray.length * 7));
    }
    

    public function shuffle2Total(intArray:Vector.<int>, intArray2:Vector.<int>, shuffleTotal:int):void {
        var size:int = intArray.length;
        var randomIndex:int = 0;
        var randomIndex2:int = 0;
        var value:int = 0;
        var value2:int = 0;
        for (var index:int = 0; index < shuffleTotal; index++) {
            randomIndex = this.getAbsoluteNextIntAllowZero(size);
            randomIndex2 = this.getAbsoluteNextIntAllowZero(size);
            value = intArray[randomIndex];
            value2 = intArray2[randomIndex];
            intArray[randomIndex] = intArray[randomIndex2];
            intArray[randomIndex2] = value;
            intArray2[randomIndex] = intArray2[randomIndex2];
            intArray2[randomIndex2] = value2;
        }
    }
    

    public static function main(args:Vector.<String>):void {
        var randomFactory:MyRandomFactory = MyRandomFactory.getInstance();
        var stringBuilder:StringMaker = new StringMaker();
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        var size2:int = 100;
        for (var index:int = 0; index < size2; index++) {
            stringBuilder.appendint(randomFactory.getAbsoluteNextInt(3)).append(commonSeps.COMMA);
        }
        trace(stringBuilder.toString());
        stringBuilder.delete_(0, stringBuilder.length());
        var intArray:Vector.<int> = new Vector.<int>(52);
        var intArray2:Vector.<int> = new Vector.<int>(52);
        var size:int = intArray.length;
        for (index = 0; index < size; index++) {
            intArray[index] = index;
            intArray2[index] = index;
        }
        randomFactory.shuffle2(intArray, intArray2);
        for (index = 0; index < size; index++) {
            stringBuilder.appendint(intArray[index]).append(commonSeps.COMMA);
        }
        trace(stringBuilder.toString());
        stringBuilder.delete_(0, stringBuilder.length());
        for (index = 0; index < size; index++) {
            stringBuilder.appendint(intArray2[index]).append(commonSeps.COMMA);
        }
        trace(stringBuilder.toString());
        var found:Boolean = false;
        for (index = 0; index < size; index++) {
            found = false;
            for (var index2:int = 0; index2 < size; index2++) {
                if (intArray[index2] == index) {
                    found = true;
                }
            }
            if (!found) {
                throw new JException("RuntimeException", "");
            }
        }
    }
    }
}

