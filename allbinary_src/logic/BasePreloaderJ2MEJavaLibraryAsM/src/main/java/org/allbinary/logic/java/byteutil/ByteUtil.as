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
package org.allbinary.logic.java.byteutil {

    public class ByteUtil {
    private static var instance_value:ByteUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ByteUtil {
        if (!ByteUtil.instance_set) {
            ByteUtil.instance_set = true;
            ByteUtil.instance_value = new ByteUtil();
        }
        return ByteUtil.instance_value;
    }
    

    public static function getInstance():ByteUtil {
        return ByteUtil.instance;
    }
    

    public function ByteUtil() {
        super();
    }
    

    public function xor(array:Vector.<int>, mask:int):Vector.<int> {
        var bytes:Vector.<int> = new Vector.<int>(array.length);
        var size:int = array.length;
        var index:int = 0;
        var currentByte:int = 0;
        while (index < size) {
            currentByte = array[index];
            bytes[index] = ((int((currentByte ^ mask)) << 24) >> 24);
            index++;
        }
        return bytes;
    }
    

    public function not(array:Vector.<int>):Vector.<int> {
        var bytes:Vector.<int> = new Vector.<int>(array.length);
        var size:int = array.length;
        var index:int = 0;
        while (index < size) {
            bytes[index] = ((int(~array[index]) << 24) >> 24);
            index++;
        }
        return bytes;
    }
    

    public function xorByte(array:Vector.<int>, index:int):Vector.<int> {
        var mask:int = 0;
        if (index == 0) {
            mask = 1;
        }
        if (index == 1) {
            mask = 2;
        }
        if (index == 2) {
            mask = 4;
        }
        if (index == 3) {
            mask = 8;
        }
        if (index == 4) {
            mask = 16;
        }
        if (index == 5) {
            mask = 32;
        }
        if (index == 6) {
            mask = 64;
        }
        if (index == 7) {
            mask = ((int(-127) << 24) >> 24);
        }
        return this.xor(array, mask);
    }
    

    public function compare(newByteArray:Vector.<int>, oldByteArray:Vector.<int>):Boolean {
        if (newByteArray.length != oldByteArray.length) {
            return false;
        } else {
        }
        var size:int = newByteArray.length;
        for (var index:int = 0; index < size; index++) {
            if (newByteArray[index] != oldByteArray[index]) {
                return false;
            }
        }
        return true;
    }
    

    public function compareWithStats(newByteArray:Vector.<int>, newSize:int, oldByteArray:Vector.<int>, stats:Vector.<int>):Boolean {
        if (newSize != oldByteArray.length) {
            stats[0] = -1;
            stats[2] = newSize;
            stats[3] = oldByteArray.length;
            return false;
        } else {
            stats[0] = newSize;
        }
        stats[1] = 0;
        var size:int = newSize;
        for (var index:int = 0; index < size; index++) {
            if (newByteArray[index] != oldByteArray[index]) {
                return false;
            }
            stats[1]++;
        }
        return true;
    }
    }
}

