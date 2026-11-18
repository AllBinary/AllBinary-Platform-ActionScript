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
package org.allbinary.logic.math.permutations {
    import org.allbinary.logic.util.visitor.Visitor;
    import org.allbinary.logic.string.StringMaker;

    public class OrderedIntArrayPermutationUtil {
    private static var instance_value:OrderedIntArrayPermutationUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():OrderedIntArrayPermutationUtil {
        if (!OrderedIntArrayPermutationUtil.instance_set) {
            OrderedIntArrayPermutationUtil.instance_set = true;
            OrderedIntArrayPermutationUtil.instance_value = new OrderedIntArrayPermutationUtil();
        }
        return OrderedIntArrayPermutationUtil.instance_value;
    }
        private var TOTAL_ITERATIONS_TABLE:String = null;
        private var FINISHED:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsOrderedIntArrayPermutationUtil():void {
    this.TOTAL_ITERATIONS_TABLE = "Total Iterations: ";
    this.FINISHED = "\nFINISHED";
        }
    

    public static function getInstance():OrderedIntArrayPermutationUtil {
        return OrderedIntArrayPermutationUtil.instance;
    }
    

    public function OrderedIntArrayPermutationUtil() {
        super();
        this.initFieldsOrderedIntArrayPermutationUtil();
    }
    

    public function getNext(data:Vector.<int>):void {
        var length:int = data.length;
        var i:int = int(length - 1);
        while (data[int(i - 1)] >= data[i]) {
            i = int(i - 1);
        }
        var j:int = length;
        while (data[int(j - 1)] <= data[int(i - 1)]) {
            j = int(j - 1);
        }
        this.swap(data, int(i - 1), int(j - 1));
        i++;
        j = length;
        while (i < j) {
            this.swap(data, int(i - 1), int(j - 1));
            i++;
            j--;
        }
    }
    

    public function swap(data:Vector.<int>, a:int, b:int):void {
        var temp:int = data[a];
        data[a] = data[b];
        data[b] = temp;
    }
    

    public function factorial(dataLength:int):Number {
        var temp:Number = 1;
        if (dataLength > 1) {
            for (var i:int = 1; i <= dataLength; i++) {
                temp *= Number(i);
            }
        }
        return temp;
    }
    

    public function generate(data:Vector.<int>, visitor:Visitor):void {
        var iterations:Number = this.factorial(data.length);
        trace(this.TOTAL_ITERATIONS_TABLE);
        trace(String(iterations));
        for (var count:Number = 0; count < iterations - 1; count++) {
            this.getNext(data);
            visitor.visit(this);
        }
        trace(this.FINISHED);
    }
    

    public static function main(args:Vector.<String>):void {
        var TOTAL:int = 3;
        var data:Vector.<int> = new Vector.<int>(TOTAL);
        for (var i:int = 0; i < TOTAL; i++) {
            data[i] = i;
        }
        var permutationVisitor:IntPermutationVisitor = new IntPermutationVisitor(data);
        var ORIGINAL_DATA_LABEL:String = "Original Data: ";
        trace(ORIGINAL_DATA_LABEL);
        permutationVisitor.print(data, new StringMaker());
        OrderedIntArrayPermutationUtil.getInstance().generate(data, permutationVisitor);
    }
    }
}

