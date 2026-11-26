/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.logic.io.file {
    import java.io.JByteArrayOutputStream;
    import java.io.JInputStream;
    import java.io.JOutputStream;
    import java.io.JReader;
    import java.io.JWriter;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.NullOutputStream;
    import org.allbinary.logic.io.NullReader;
    import org.allbinary.logic.io.NullWriter;
    import org.allbinary.logic.io.StreamUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class SimpleFileUtil {
    private static var instance_value:SimpleFileUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():SimpleFileUtil {
        if (!SimpleFileUtil.instance_set) {
            SimpleFileUtil.instance_set = true;
            SimpleFileUtil.instance_value = new SimpleFileUtil();
        }
        return SimpleFileUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        public var NULL_WRITER:JWriter = null;
        public var NULL_READER:JReader = null;
        private var commonStrings:CommonStrings = null;
        private var nullUtil:NullUtil = null;
        private var streamUtil:StreamUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsSimpleFileUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.NULL_WRITER = SimpleFileUtil.nullWriter();
    this.NULL_READER = SimpleFileUtil.nullReader();
    this.commonStrings = CommonStrings.getInstance();
    this.nullUtil = NullUtil.getInstance();
    this.streamUtil = StreamUtil.getInstance();
        }

        public function SimpleFileUtil() {
            super();
            this.initFieldsSimpleFileUtil();
        }
    

    public static function getInstance():SimpleFileUtil {
        return SimpleFileUtil.instance;
    }
    

    public static function nullOutputStream():JOutputStream {
        return NullOutputStream.NULL_OUTPUT_STREAM;
    }
    

    public static function nullWriter():JWriter {
        return NullWriter.NULL_WRITER;
    }
    

    public static function nullReader():JReader {
        return NullReader.NULL_READER;
    }
    

    public function loadFileAsList(inputStream:JInputStream, max:int, byteArray1:Vector.<int>):BasicArrayList {
        return this.loadFileAsListReturnLine(inputStream, max, byteArray1, 0);
    }
    

    public function loadFileAsListReturnLine(inputStream:JInputStream, max:int, byteArray1:Vector.<int>, includeReturnLine:int):BasicArrayList {
        var stringList:BasicArrayList = new BasicArrayListD();
        if (inputStream == null) {
            return stringList;
        }
        var byteArray:Vector.<int> = this.nullUtil.NULL_BYTE_ARRAY;
        try {
            var outputStream2:JByteArrayOutputStream = new JByteArrayOutputStream(max);
            byteArray = this.streamUtil.getByteArray(inputStream, outputStream2, byteArray1);
            this.streamUtil.close(inputStream);
        } catch (e:*) {
            this.streamUtil.close(inputStream);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e);
        }
        if (byteArray == null) {
            return stringList;
        }
        var size:int = byteArray.length;
        var index:int = 0;
        var startIndex:int = 0;
        var returnLine:int = 0;
        while (index < size) {
            startIndex = index;
            while (index < int(size - 1) && byteArray[index] != ((int("\n".charCodeAt(0)) << 24) >> 24)) {
                index++;
            }
            if (includeReturnLine == 0) {
                if (index > 0 && byteArray[int(index - 1)] == ((int("\r".charCodeAt(0)) << 24) >> 24)) {
                    returnLine = 1;
                } else {
                    returnLine = 0;
                }
            }
            var s:String = JString.ofBytes(byteArray, startIndex, (int(int(int(index + includeReturnLine) - returnLine) - startIndex)));
            stringList.add(s);
            index++;
        }
        return stringList;
    }
    

    public function createStringFromArrayOfStrings(stringArray:Vector.<String>):String {
        var stringMaker:StringMaker = new StringMaker();
        var size:int = stringArray.length;
        for (var index:int = 0; index < size; index++) {
            stringMaker.append(stringArray[index]);
        }
        return stringMaker.toString();
    }
    }
}

