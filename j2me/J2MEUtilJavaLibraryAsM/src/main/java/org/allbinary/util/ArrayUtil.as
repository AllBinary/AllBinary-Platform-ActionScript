// Generated Code Do Not Modify
package org.allbinary.util {
    import org.allbinary.logic.math.MathUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonSeps;

    public class ArrayUtil {
    private static var instance_value:ArrayUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ArrayUtil {
        if (!ArrayUtil.instance_set) {
            ArrayUtil.instance_set = true;
            ArrayUtil.instance_value = new ArrayUtil();
        }
        return ArrayUtil.instance_value;
    }
        private var mathUtil:MathUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsArrayUtil():void {
    this.mathUtil = MathUtil.getInstance();
        }

        public function ArrayUtil() {
            super();
            this.initFieldsArrayUtil();
        }
    

    public static function getInstance():ArrayUtil {
        return ArrayUtil.instance;
    }
    

    public function copyOf(original:Vector.<Object>, newLength:int):Vector.<Object> {
        return this.copyOfType(original, newLength, JSystem.className(original));
    }
    

    public function copyOfType(original:Vector.<Object>, newLength:int, newType:String):Vector.<Object> {
        var copy:Vector.<Object> = new Vector.<Object>(newLength);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    public function copyOfbyte(original:Vector.<int>, newLength:int):Vector.<int> {
        var copy:Vector.<int> = new Vector.<int>(newLength);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    public function copyOfshort(original:Vector.<int>, newLength:int):Vector.<int> {
        var copy:Vector.<int> = new Vector.<int>(newLength);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    public function copyOfint(original:Vector.<int>, newLength:int):Vector.<int> {
        var copy:Vector.<int> = new Vector.<int>(newLength);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    public function copyOflong(original:Vector.<Number>, newLength:int):Vector.<Number> {
        var copy:Vector.<Number> = JVectors.numbers(newLength);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    public function copyOfchar(original:Vector.<int>, newLength:int):Vector.<int> {
        var copy:Vector.<int> = new Vector.<int>(newLength);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    public function copyOffloat(original:Vector.<Number>, newLength:int):Vector.<Number> {
        var copy:Vector.<Number> = JVectors.numbers(newLength);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    public function copyOfdouble(original:Vector.<Number>, newLength:int):Vector.<Number> {
        var copy:Vector.<Number> = JVectors.numbers(newLength);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    public function copyOfboolean(original:Vector.<Boolean>, newLength:int):Vector.<Boolean> {
        var copy:Vector.<Boolean> = new Vector.<Boolean>(newLength);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    public function reverse(intArray:Vector.<int>):void {
        var length:int = int(intArray.length - 1);
        var temp:int = 0;
        var size:int = int(length / 2);
        for (var index:int = 0; index <= size; index++) {
            temp = intArray[index];
            intArray[index] = intArray[int(length - index)];
            intArray[int(length - index)] = temp;
        }
    }
    

    public function flip(intArray:Vector.<int>, width:int, height:int):void {
        var length:int = int(height - 1);
        var temp:int = 0;
        var index:int = 0;
        var rowIndex:int = 0;
        for (var y:int = 0; y <= int(length / 2); y++) {
            for (var x:int = 0; x < width; x++) {
                rowIndex = (int((int(length - y)) * width));
                index = int(x + (int(y * width)));
                temp = intArray[index];
                intArray[index] = intArray[int(rowIndex + x)];
                intArray[int(rowIndex + x)] = temp;
            }
        }
    }
    

    public function toStringFromTwoDimensionaArray(twoDimensionalIntArray:Vector.<Vector.<int>>):String {
        var stringBuffer:StringMaker = new StringMaker();
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        var endIndex:int = twoDimensionalIntArray.length;
        var endIndex2:int = twoDimensionalIntArray[0].length;
        for (var index:int = 0; index < endIndex; index++) {
            stringBuffer.append(commonSeps.BRACE_OPEN);
            for (var index2:int = 0; index2 < endIndex2; index2++) {
                stringBuffer.appendint(twoDimensionalIntArray[index][index2]);
                stringBuffer.append(commonSeps.COMMA_SEP);
            }
            stringBuffer.append(commonSeps.BRACE_CLOSE);
            stringBuffer.append(commonSeps.NEW_LINE);
        }
        return stringBuffer.toString();
    }
    

    public function toStringFromObjectArray(objectArray:Vector.<Object>):String {
        var stringBuffer:StringMaker = new StringMaker();
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        for (var index:int = 0; index < objectArray.length; index++) {
            stringBuffer.append(StringUtil.getInstance().toString1(objectArray[index]));
            stringBuffer.append(commonSeps.COMMA_SEP);
        }
        return stringBuffer.toString();
    }
    

    public function toStringFromByteArray(byteArray:Vector.<int>):String {
        var stringBuffer:StringMaker = new StringMaker();
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        for (var index:int = 0; index < byteArray.length; index++) {
            stringBuffer.appendbyte(byteArray[index]);
            stringBuffer.append(commonSeps.COMMA_SEP);
        }
        return stringBuffer.toString();
    }
    }
}

