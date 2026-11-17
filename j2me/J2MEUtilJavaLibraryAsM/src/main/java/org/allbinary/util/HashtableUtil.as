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
    import java.util.JEnumeration;

    public class HashtableUtil {
    private static var instance_value:HashtableUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():HashtableUtil {
        if (!HashtableUtil.instance_set) {
            HashtableUtil.instance_set = true;
            HashtableUtil.instance_value = new HashtableUtil();
        }
        return HashtableUtil.instance_value;
    }
        private var enumerationUtil:EnumerationUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsHashtableUtil():void {
    this.enumerationUtil = EnumerationUtil.getInstance();
        }

        public function HashtableUtil() {
            super();
            this.initFieldsHashtableUtil();
        }
    

    public static function getInstance():HashtableUtil {
        return HashtableUtil.instance;
    }
    

    public function putAll(fromHashtable:ABHashtable, hashtable:ABHashtable):void {
        var enumeration:JEnumeration = fromHashtable.keys();
        var keyCanBeNull:Object = null;
        var valueCanBeNull:Object = null;
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            keyCanBeNull = this.enumerationUtil.nextElement(enumeration);
            valueCanBeNull = hashtable.get_(keyCanBeNull);
            if (valueCanBeNull == null) {
            } else {
                hashtable.put(keyCanBeNull, valueCanBeNull);
            }
        }
    }
    

    public function getKeysAsArray(hashtable:ABHashtable):Vector.<Object> {
        var objectArray:Vector.<Object> = new Vector.<Object>(hashtable.size());
        var index:int = 0;
        var enumeration:JEnumeration = hashtable.keys();
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            objectArray[index++] = this.enumerationUtil.nextElement(enumeration);
        }
        return objectArray;
    }
    

    public function getKeysAsList(hashtable:ABHashtable):BasicArrayList {
        var list:BasicArrayList = new BasicArrayListS(hashtable.size());
        var enumeration:JEnumeration = hashtable.keys();
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            list.add(this.enumerationUtil.nextElement(enumeration));
        }
        return list;
    }
    }
}

