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
    import java.util.JArrays;
    import org.allbinary.TsUtil;
    import org.allbinary.logic.util.visitor.Visitor;

    public class OrderedObjectArrayPermutationUtil {
    private static var instance_value:OrderedObjectArrayPermutationUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():OrderedObjectArrayPermutationUtil {
        if (!OrderedObjectArrayPermutationUtil.instance_set) {
            OrderedObjectArrayPermutationUtil.instance_set = true;
            OrderedObjectArrayPermutationUtil.instance_value = new OrderedObjectArrayPermutationUtil();
        }
        return OrderedObjectArrayPermutationUtil.instance_value;
    }
        private var TOTAL_ITERATIONS_TABLE:String = null;
        private var FINISHED:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsOrderedObjectArrayPermutationUtil():void {
    this.TOTAL_ITERATIONS_TABLE = "Total Iterations: ";
    this.FINISHED = "\nFINISHED";
        }
    

    public static function getInstance():OrderedObjectArrayPermutationUtil {
        return OrderedObjectArrayPermutationUtil.instance;
    }
    

    public function OrderedObjectArrayPermutationUtil() {
        super();
        this.initFieldsOrderedObjectArrayPermutationUtil();
    }
    

    public function getNext(data:Vector.<Object>):void {
        var length:int = data.length;
        var i:int = int(length - 1);
        var tsUtil:TsUtil = TsUtil.getInstance();
        while (tsUtil.hashCode(data[int(i - 1)]) >= tsUtil.hashCode(data[i])) {
            i = int(i - 1);
        }
        var j:int = length;
        while (tsUtil.hashCode(data[int(j - 1)]) <= tsUtil.hashCode(data[int(i - 1)])) {
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
    

    public function swap(data:Vector.<Object>, a:int, b:int):void {
        var temp:Object = data[a];
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
    

    public function generate(data:Vector.<Object>, visitor:Visitor):void {
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
        var TOTAL:int = 7;
        var data:Vector.<Object> = new Vector.<Object>(TOTAL);
        for (var i:int = 0; i < TOTAL; i++) {
            data[i] = new ComparableObject();
        }
        JArrays.sort(data);
        var permutationVisitor:ObjectPermutationVisitor = new ObjectPermutationVisitor(data);
        var ORIGINAL_DATA_LABEL:String = "Original Data: ";
        trace(ORIGINAL_DATA_LABEL);
        permutationVisitor.visit(data);
        OrderedObjectArrayPermutationUtil.getInstance().generate(data, permutationVisitor);
    }
    }
}

