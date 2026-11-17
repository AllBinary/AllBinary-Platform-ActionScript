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
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonLabels;

    public class CircularIndexUtil {
    private static var NULL_CIRCULAR_INDEX_UTIL_value:CircularIndexUtil;
    private static var NULL_CIRCULAR_INDEX_UTIL_set:Boolean = false;
    public static function get NULL_CIRCULAR_INDEX_UTIL():CircularIndexUtil {
        if (!CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL_set) {
            CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL_set = true;
            CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL_value = new CircularIndexUtil(0, 0);
        }
        return CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL_value;
    }
        private var index:int = 0;
        private var lastIndex:int = 0;
        private var size:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsCircularIndexUtil():void {
    this.index = 0;
    this.lastIndex = 0;
    this.size = 0;
        }
    

    public function CircularIndexUtil(index:int, size:int) {
        super();
        this.initFieldsCircularIndexUtil();
        this.setSize(size);
        this.setIndex(index);
    }
    

    public function next():int {
        if (this.index >= this.lastIndex) {
            this.index = 0;
        } else {
            this.index++;
        }
        return this.index;
    }
    

    public function previous():int {
        if (this.index < 1) {
            this.index = this.lastIndex;
        } else {
            this.index--;
        }
        return this.index;
    }
    

    public function setIndex(index:int):void {
        if (index > this.lastIndex) {
            return;
        }
        this.index = index;
    }
    

    public function getIndex():int {
        return this.index;
    }
    

    public static function createInstance(max:int):CircularIndexUtil {
        return new CircularIndexUtil(0, max);
    }
    

    public static function createInstanceAt(index:int, max:int):CircularIndexUtil {
        return new CircularIndexUtil(index, max);
    }
    

    public function setSize(size:int):void {
        this.size = size;
        this.lastIndex = int(size - 1);
        this.index = 0;
    }
    

    public function getSize():int {
        return this.size;
    }
    

    public function toString():String {
        return new StringMaker().append(CommonLabels.getInstance().INDEX_LABEL).appendint(this.index).append("lastIndex: ").appendint(this.lastIndex).append("size: ").appendint(this.size).toString();
    }
    }
}

