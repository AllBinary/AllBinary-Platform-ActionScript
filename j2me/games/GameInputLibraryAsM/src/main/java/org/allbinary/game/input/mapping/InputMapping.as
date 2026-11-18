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
package org.allbinary.game.input.mapping {
    import org.allbinary.game.input.Input;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.util.ABHashtable;

    public class InputMapping {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var hashtable:ABHashtable = null;
        private var mappedList:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsInputMapping():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.hashtable = StdUtil.getInstance().createHashtable();
    this.mappedList = new BasicArrayListD();
        }
    

    public function InputMapping() {
        super();
        this.initFieldsInputMapping();
    }
    

    public function getTotalMapped():int {
        return this.hashtable.size();
    }
    

    public function isDefaultNew():Boolean {
        return false;
    }
    

    public function getDefault():InputToGameKeyMapping {
        return InputToGameKeyMapping.getNullInstance();
    }
    

    public function removeAll():void {
        this.hashtable.clear();
        this.mappedList.clear();
    }
    

    public function remove(input:Input, mappedToInput:Input):void {
        var stringBuffer:StringMaker = new StringMaker();
        var stringUtil:StringUtil = StringUtil.getInstance();
        stringBuffer.append(CommonLabels.getInstance().START_LABEL);
        stringBuffer.append(stringUtil.toString1(input));
        stringBuffer.append(" == ");
        stringBuffer.append(stringUtil.toString1(mappedToInput));
        this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove");
        var list:BasicArrayList = this.getMappedInput(input);
        if (list.contains(mappedToInput)) {
            list.remove(mappedToInput);
            this.mappedList.remove(mappedToInput);
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append("Removed: ");
            stringBuffer.append(stringUtil.toString1(input));
            stringBuffer.append(" == ");
            stringBuffer.append(stringUtil.toString1(mappedToInput));
            this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove");
        } else {
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append("Not Deleted: ");
            stringBuffer.append(stringUtil.toString1(input));
            stringBuffer.append(" == ");
            stringBuffer.append(stringUtil.toString1(mappedToInput));
            this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove");
        }
    }
    

    public function addMapping(inputToGameKeyMapping:InputToGameKeyMapping):void {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function add(input:Input, mappedToInput:Input):void {
        var list:BasicArrayList = this.getMappedInput(input);
        if (!list.contains(mappedToInput)) {
            list.add(mappedToInput);
            this.mappedList.add(mappedToInput);
        }
    }
    

    public function isMapped(input:Input):Boolean {
        return this.mappedList.contains(input);
    }
    

    public function getMappedInput(id:Input):BasicArrayList {
        var mappingInputCanBeNullList:Object = this.hashtable.get_(id);
        if (mappingInputCanBeNullList == null) {
            var list:BasicArrayList = new BasicArrayListD();
            this.hashtable.put(id, list);
            return list;
        }
        return (mappingInputCanBeNullList as BasicArrayList);
    }
    

    public function getHashtable():ABHashtable {
        return this.hashtable;
    }
    }
}

