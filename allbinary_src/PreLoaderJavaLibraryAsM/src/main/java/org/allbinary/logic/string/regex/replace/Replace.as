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
package org.allbinary.logic.string.regex.replace {
    import java.util.JHashMap;
    import org.allbinary.J2SEUtil;
    import org.allbinary.globals.AppUrlGlobals;
    import org.allbinary.globals.URLGLOBALS;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import java.lang.JInteger;

    public class Replace {
        private var logUtil:LogUtil = null;
        private var j2seUtil:J2SEUtil = null;
        private var REPLACERS_:String = null;
        private var ALL:String = null;
        private var FOUND_KEY:String = null;
        private var hashMap:JHashMap = null;

        // Java field initializers run after the base constructor
        private function initFieldsReplace():void {
    this.logUtil = LogUtil.getInstance();
    this.j2seUtil = J2SEUtil.getInstance();
    this.REPLACERS_ = "Replacers: ";
    this.ALL = "all";
    this.FOUND_KEY = "found key total: ";
    
        }
    

    public function Replace(...args) {
        if (args.length == 2 && args[0] === JSuperArgs.ARGS) {
            args = args[1];
        }
        var jsuper:Array = Replace.jsuperArgs(args);
        super();
        this.initFieldsReplace();
        this.jconstruct(args);
    }

    private static function jsuperArgs(args:Array):Array {
        if (args.length == 2 && args[0] is String && args[1] is String) {
            return Replace.jsuper_1(args[0], args[1]);
        }
        if (args.length == 2) {
            return Replace.jsuper_2(args[0], args[1]);
        }
        if (args.length == 1) {
            return Replace.jsuper_3(args[0]);
        }
        return [];
    }

    private static function jsuper_1(key:String, value:String):Array {
        return [];
    }

    private static function jsuper_2(keys:Vector.<String>, values:Vector.<String>):Array {
        return [];
    }

    private static function jsuper_3(hashMap:JHashMap):Array {
        return [];
    }

    private function jconstruct(args:Array):void {
        if (args.length == 2 && args[0] is String && args[1] is String) {
            this.jconstruct_1(args[0], args[1]);
            return;
        }
        if (args.length == 2) {
            this.jconstruct_2(args[0], args[1]);
            return;
        }
        if (args.length == 1) {
            this.jconstruct_3(args[0]);
            return;
        }
    }

    private function jconstruct_1(key:String, value:String):void {
        this.hashMap = StdUtil.getInstance().createHashMap();
        this.hashMap.put(new <String>[key], new <String>[value]);
    }

    private function jconstruct_2(keys:Vector.<String>, values:Vector.<String>):void {
        this.hashMap = StdUtil.getInstance().createHashMap();
        this.hashMap.put(keys, values);
    }

    private function jconstruct_3(hashMap:JHashMap):void {
        this.hashMap = hashMap;
    }
    
    
    

    public function all(replace:String):String {
        return this.upTo(replace, JInteger.MIN_VALUE);
    }
    

    public function upTo(replace:String, total:int):String {
        var newStringBuffer:StringMaker = new StringMaker();
        var totalNumberOfReplaces:int = 0;
        var keys:Vector.<String> = null;
        var values:Vector.<String> = null;
        var keyArray:Vector.<Object> = this.j2seUtil.getHashMapAsArray(this.hashMap);
        var size:int = keyArray.length;
        for (var index2:int = 0; index2 < size; index2++) {
            keys = (JVectors.castVector(keyArray[index2], Vector.<String>) as Vector.<String>);
            values = (JVectors.castVector(this.hashMap.get_(keys), Vector.<String>) as Vector.<String>);
            var foundTotal:Number = 0;
            var index:int = 0;
            var nextKey:String = null;
            var end:int = 0;
            var nextSecondKey:String = null;
            var begin2:int = 0;
            while (index < replace.length) {
                var begin:int = JString.indexOf(replace, keys[0], index);
                if (begin != -1) {
                    foundTotal++;
                    if (foundTotal % 100 == 0) {
                        trace(this.FOUND_KEY + String(foundTotal));
                    }
                    nextKey = keys[0];
                    end = int(begin + nextKey.length);
                    newStringBuffer.delete_(0, newStringBuffer.length());
                    newStringBuffer.append(replace.substring(0, begin));
                    newStringBuffer.append(values[0]);
                    index = newStringBuffer.length();
                    newStringBuffer.append(replace.substring(end, replace.length));
                    replace = newStringBuffer.toString();
                    if (keys.length > 1) {
                        nextSecondKey = keys[1];
                        begin2 = JString.indexOf(replace, nextSecondKey, index);
                        if (begin2 != -1) {
                            var end2:int = int(begin2 + nextSecondKey.length);
                            newStringBuffer.delete_(0, newStringBuffer.length());
                            newStringBuffer.append(replace.substring(0, begin2));
                            newStringBuffer.append(values[1]);
                            index = newStringBuffer.length();
                            newStringBuffer.append(replace.substring(end2, replace.length));
                            replace = newStringBuffer.toString();
                        }
                    }
                    totalNumberOfReplaces++;
                    if (total != JInteger.MIN_VALUE && totalNumberOfReplaces >= total) {
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        if (totalNumberOfReplaces > 0) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().REPLACE)) {
                this.logUtil.putF("Total Number Of Replaces: " + String(totalNumberOfReplaces), this, this.ALL);
            }
        }
        return replace;
    }
    

    public function line(replace:String):String {
        var newStringBuffer:StringMaker = new StringMaker();
        var totalNumberOfReplaces:int = 0;
        var key:String = null;
        var value:String = null;
        var keyArray:Vector.<Object> = this.j2seUtil.getHashMapAsArray(this.hashMap);
        var size:int = keyArray.length;
        for (var index2:int = 0; index2 < size; index2++) {
            key = (keyArray[index2] as String);
            value = (this.hashMap.get_(key) as String);
            var index:int = 0;
            while (index < replace.length) {
                newStringBuffer.delete_(0, newStringBuffer.length());
                var begin:int = JString.indexOf(replace, key, index);
                if (begin != -1) {
                    trace(this.FOUND_KEY);
                    var end:int = JString.indexOf(replace, "\n".charCodeAt(0), int(begin + key.length)) + 1;
                    if (end >= 0) {
                        newStringBuffer.append(replace.substring(0, begin));
                        index = newStringBuffer.length();
                        newStringBuffer.append(replace.substring(end, replace.length));
                        replace = newStringBuffer.toString();
                        totalNumberOfReplaces++;
                    }
                } else {
                    break;
                }
            }
        }
        if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().REPLACE)) {
            this.logUtil.putF("Total Number Of Replaces: " + String(totalNumberOfReplaces), this, this.ALL);
        }
        return replace;
    }
    

    public static function main(args:Vector.<String>):void {
        try {
            var stringUtil:StringUtil = StringUtil.getInstance();
            var appUrlGlobals:AppUrlGlobals = new AppUrlGlobals();
            appUrlGlobals.setWebappPath("G:/mnt/bc/mydev/work/allbinary_src/ToolsJavaLibrary/tools");
            URLGLOBALS.init(appUrlGlobals);
            var testString:String = "\"super gun\" big tank \"goodgunriflegun";
            var replace:Replace = new Replace("gun", "abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz");
            trace("Old String: " + testString);
            testString = replace.all(testString);
            trace("New String: " + testString);
            var replaceCat:Replace = new Replace("abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz", stringUtil.EMPTY_STRING);
            testString = replaceCat.all(testString);
            trace("New String: " + testString);
        } catch (e:*) {
        }
    }
    }
}

