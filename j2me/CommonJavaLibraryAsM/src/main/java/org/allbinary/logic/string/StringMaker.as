// Generated Code Do Not Modify
package org.allbinary.logic.string {
    import java.lang.JInteger;
    import java.lang.JLong;
    import java.lang.JFloat;

    public class StringMaker {
        private var charArray:Vector.<int> = null;
        private var currentLength:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsStringMaker():void {
    
    this.currentLength = 0;
        }
    

    public function StringMaker() {
        super();
        this.initFieldsStringMaker();
        this.charArray = new Vector.<int>(20);
    }
    

    public function append(string:String):StringMaker {
        var stringLength:int = string.length;
        this.ensureCapacity(int(this.currentLength + stringLength));
        JString.getChars(string, 0, stringLength, this.charArray, this.currentLength);
        this.currentLength += stringLength;
        return this;
    }
    

    public function appendchar(c:int):StringMaker {
        this.ensureCapacity(int(this.currentLength + 1));
        this.charArray[this.currentLength++] = c;
        return this;
    }
    

    public function appendCharArray(charArray:Vector.<int>, start:int, end:int):StringMaker {
        this.ensureCapacity(int(this.currentLength + (int(end - start))));
        for (var index:int = start; index < end; index++) {
            this.charArray[this.currentLength++] = charArray[index];
        }
        return this;
    }
    

    public function appendbyte(b:int):StringMaker {
        this.append(String(b));
        return this;
    }
    

    public function appendshort(b:int):StringMaker {
        this.append(String(b));
        return this;
    }
    

    public function appendint(i:int):StringMaker {
        this.append(String(i));
        return this;
    }
    

    public function appendlong(l:Number):StringMaker {
        this.append(String(l));
        return this;
    }
    

    public function appendfloat(f:Number):StringMaker {
        this.append(JString.ofNumber(f));
        return this;
    }
    

    public function appendboolean(bool:Boolean):StringMaker {
        if (bool) {
            this.ensureCapacity(int(this.currentLength + 4));
            this.charArray[this.currentLength++] = "t".charCodeAt(0);
            this.charArray[this.currentLength++] = "r".charCodeAt(0);
            this.charArray[this.currentLength++] = "u".charCodeAt(0);
            this.charArray[this.currentLength++] = "e".charCodeAt(0);
        } else {
            this.ensureCapacity(int(this.currentLength + 5));
            this.charArray[this.currentLength++] = "f".charCodeAt(0);
            this.charArray[this.currentLength++] = "a".charCodeAt(0);
            this.charArray[this.currentLength++] = "l".charCodeAt(0);
            this.charArray[this.currentLength++] = "s".charCodeAt(0);
            this.charArray[this.currentLength++] = "e".charCodeAt(0);
        }
        return this;
    }
    

    public function ensureCapacity(minSize:int):void {
        var oldCapacity:int = this.charArray.length;
        if (minSize > oldCapacity) {
            var newCapacity:int = int(oldCapacity * 3);
            if (newCapacity < minSize) {
                newCapacity = minSize;
            }
            var copy:Vector.<int> = new Vector.<int>(newCapacity);
            var min:int = this.min(this.charArray.length, newCapacity);
            JSystem.arraycopy(this.charArray, 0, copy, 0, min);
            this.charArray = copy;
        }
    }
    

    public function min(value:int, value2:int):int {
        return ((value <= value2) ? value : value2);
    }
    

    public function delete_(start:int, end:int):StringMaker {
        this.currentLength -= (int(end - start));
        return this;
    }
    

    public function length():int {
        return this.currentLength;
    }
    

    public function toString():String {
        return JString.fromChars(this.charArray, 0, this.currentLength);
    }
    }
}

