// Generated Code Do Not Modify
package org.allbinary.util {
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;

    //This is a very fast and simple resizable list.
    public class BasicArrayList {
    private static const SIZE:String = ", Size: ";
        private var arrayUtil:ArrayUtil = null;
        public var objectArray:Vector.<Object> = null;
        private var currentIndex:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsBasicArrayList():void {
    this.arrayUtil = ArrayUtil.getInstance();
    
    this.currentIndex = 0;
        }
    

    public function BasicArrayList(objectArray:Vector.<Object>) {
        super();
        this.initFieldsBasicArrayList();
        this.objectArray = objectArray;
    }
    

    public function addAt(index:int, element:Object):void {
        if (index > this.currentIndex || index < 0) {
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList.SIZE);
            stringBuffer.appendint(this.currentIndex);
            throw new JException("IndexOutOfBoundsException", stringBuffer.toString());
        }
        this.ensureCapacity(int(this.currentIndex + 1));
        JSystem.arraycopy(this.objectArray, index, this.objectArray, int(index + 1), int(this.currentIndex - index));
        this.objectArray[index] = element;
        this.currentIndex++;
    }
    

    public function add(anyType:Object):Boolean {
        this.ensureCapacity(int(this.currentIndex + 1));
        this.objectArray[this.currentIndex++] = anyType;
        return true;
    }
    

    public function removeAt(index:int):Object {
        if (index >= this.currentIndex) {
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList.SIZE);
            stringBuffer.appendint(this.currentIndex);
            throw new JException("IndexOutOfBoundsException", stringBuffer.toString());
        }
        var oldValue:Object = this.objectArray[index];
        var numMoved:int = int(int(this.currentIndex - index) - 1);
        if (numMoved > 0) {
            JSystem.arraycopy(this.objectArray, int(index + 1), this.objectArray, index, numMoved);
        }
        this.objectArray[--this.currentIndex] = null;
        return oldValue;
    }
    

    public function remove(anyType:Object):Boolean {
        if (anyType == null) {
            for (index = 0; index < this.currentIndex; index++) {
                if (this.objectArray[index] == null) {
                    numMoved = int(int(this.currentIndex - index) - 1);
                    if (numMoved > 0) {
                        JSystem.arraycopy(this.objectArray, int(index + 1), this.objectArray, index, numMoved);
                    }
                    this.objectArray[--this.currentIndex] = null;
                    return true;
                }
            }
        } else {
            for (var index:int = 0; index < this.currentIndex; index++) {
                if (anyType === this.objectArray[index] || anyType.equals(this.objectArray[index])) {
                    var numMoved:int = int(int(this.currentIndex - index) - 1);
                    if (numMoved > 0) {
                        JSystem.arraycopy(this.objectArray, int(index + 1), this.objectArray, index, numMoved);
                    }
                    this.objectArray[--this.currentIndex] = null;
                    return true;
                }
            }
        }
        return false;
    }
    

    public function removeAll2(list:BasicArrayList):Boolean {
        var result:Boolean = true;
        var size:int = list.size();
        for (var index:int = 0; index < size; index++) {
            if (this.remove(list.get_(index))) {
            } else {
                result = false;
            }
        }
        return result;
    }
    

    public function addAll2(list:BasicArrayList):Boolean {
        this.ensureCapacity(this.currentIndex + list.currentIndex);
        var listSize:int = list.currentIndex;
        for (var index:int = 0; index < listSize; index++) {
            this.objectArray[this.currentIndex++] = list.objectArray[index];
        }
        return true;
    }
    

    public function addAllList(list:BasicArrayList):Boolean {
        var newObjectArray:Vector.<Object> = list.toArray();
        return this.addAll(newObjectArray);
    }
    

    public function addAll(newObjectArray:Vector.<Object>):Boolean {
        var numSize:int = newObjectArray.length;
        this.ensureCapacity(int(this.currentIndex + numSize));
        JSystem.arraycopy(newObjectArray, 0, this.objectArray, this.currentIndex, numSize);
        this.currentIndex += numSize;
        return numSize != 0;
    }
    

    public function ensureCapacity(minSize:int):void {
        var oldCapacity:int = this.objectArray.length;
        if (minSize > oldCapacity) {
            var newCapacity:int = int(((int(oldCapacity * 3)) >> 1) + 1);
            if (newCapacity < minSize) {
                newCapacity = minSize;
            }
            this.objectArray = this.arrayUtil.copyOf(this.objectArray, newCapacity);
        }
    }
    

    public function trimToSize():void {
        var oldCapacity:int = this.objectArray.length;
        if (this.currentIndex < oldCapacity) {
            this.objectArray = this.arrayUtil.copyOf(this.objectArray, this.currentIndex);
        }
    }
    

    public function indexOf(anyType:Object):int {
        if (anyType == null) {
            for (i = 0; i < this.currentIndex; i++) {
                if (this.objectArray[i] == null) {
                    return i;
                }
            }
        } else {
            for (var i:int = 0; i < this.currentIndex; i++) {
                if (anyType.equals(this.objectArray[i])) {
                    return i;
                }
            }
        }
        return -1;
    }
    

    public function lastIndexOf(anyType:Object):int {
        if (anyType == null) {
            for (i = int(this.currentIndex - 1); i >= 0; i--) {
                if (this.objectArray[i] == null) {
                    return i;
                }
            }
        } else {
            for (var i:int = int(this.currentIndex - 1); i >= 0; i--) {
                if (anyType.equals(this.objectArray[i])) {
                    return i;
                }
            }
        }
        return -1;
    }
    

    public function get_(index:int):Object {
        if (index >= this.currentIndex) {
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList.SIZE);
            stringBuffer.appendint(this.currentIndex);
            throw new JException("IndexOutOfBoundsException", stringBuffer.toString());
        }
        return this.objectArray[index];
    }
    

    public function set_(index:int, element:Object):Object {
        if (index >= this.currentIndex) {
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList.SIZE);
            stringBuffer.appendint(this.currentIndex);
            throw new JException("IndexOutOfBoundsException", stringBuffer.toString());
        }
        var oldValue:Object = this.objectArray[index];
        this.objectArray[index] = element;
        return oldValue;
    }
    

    public function clear():void {
        for (var i:int = 0; i < this.currentIndex; i++) {
            this.objectArray[i] = null;
        }
        this.currentIndex = 0;
    }
    

    public function size():int {
        return this.currentIndex;
    }
    

    public function isEmpty():Boolean {
        return this.currentIndex == 0;
    }
    

    public function contains(anyType:Object):Boolean {
        return this.indexOf(anyType) >= 0;
    }
    

    public function toArray():Vector.<Object> {
        return this.arrayUtil.copyOf(this.objectArray, this.currentIndex);
    }
    

    public function toArrayType(objectArray:Vector.<Object>):Vector.<Object> {
        if (objectArray.length < this.currentIndex) {
            return this.arrayUtil.copyOfType(this.objectArray, this.currentIndex, JSystem.className(objectArray));
        }
        JSystem.arraycopy(this.objectArray, 0, objectArray, 0, this.currentIndex);
        if (objectArray.length > this.currentIndex) {
            objectArray[this.currentIndex] = null;
        }
        return objectArray;
    }
    

    public function clone():Object {
        var size:int = this.size();
        var list:BasicArrayList = new BasicArrayListS(size);
        var anyType:Object = null;
        for (var index:int = 0; index < size; index++) {
            anyType = this.objectArray[index];
            list.add(anyType);
        }
        return list;
    }
    

    public function toString():String {
        var COMMA_SEP:String = CommonSeps.getInstance().COMMA_SEP;
        var stringBuffer:StringMaker = new StringMaker();
        for (var index:int = 0; index < this.currentIndex; index++) {
            stringBuffer.append(this.objectArray[index].toString());
            stringBuffer.append(COMMA_SEP);
        }
        return stringBuffer.toString();
    }
    }
}

