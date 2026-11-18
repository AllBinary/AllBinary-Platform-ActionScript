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
    

    public function Replace(key:String, value:String = null) {
        super();
        this.initFieldsReplace();
        this.hashMap = StdUtil.getInstance().createHashMap();
        this.hashMap.put(new <String>[key], new <String>[value]);
    }
    

    /* Java constructor: ActionScript classes have one constructor
    public function Replace(keys:Vector.<String>, values:Vector.<String> = null) {
        super();
        this.initFieldsReplace();
        this.hashMap = StdUtil.getInstance().createHashMap();
        this.hashMap.put(keys, values);
    }
    */
    

    /* Java constructor: ActionScript classes have one constructor
    public function Replace(hashMap:JHashMap) {
        super();
        this.initFieldsReplace();
        this.hashMap = hashMap;
    }
    */
    

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
            keys = (keyArray[index2] as Vector.<String>);
            values = (this.hashMap.get_(keys) as Vector.<String>);
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
            if (LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().REPLACE)) {
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
        if (LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().REPLACE)) {
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

