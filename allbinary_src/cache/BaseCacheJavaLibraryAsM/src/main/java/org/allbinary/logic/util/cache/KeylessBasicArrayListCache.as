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
package org.allbinary.logic.util.cache {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListUtil;

    public class KeylessBasicArrayListCache extends IndexedBasicArrayListCache {
        public var logUtil:LogUtil = null;
        public var basicArrayListUtil:BasicArrayListUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsKeylessBasicArrayListCache():void {
    this.logUtil = LogUtil.getInstance();
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
        }
    

    public function KeylessBasicArrayListCache() {
        super();
        this.initFieldsKeylessBasicArrayListCache();
    }
    

    public function get_(...args):* {
        if (args.length == 0) {
            return this.get__jo0();
        }
        throw new JException("IllegalArgumentException", "get");
    }

    private function get__jo0():BasicArrayList {
        try {
            if (this.index >= this.list.size()) {
                this.addDefault();
            }
            var list:BasicArrayList = (this.getAt(this.index++) as BasicArrayList);
            return list;
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET, e);
            return this.basicArrayListUtil.getImmutableInstance();
        }
    }
    

    override public function clear():void {
        super.clear();
        var basicArrayList:BasicArrayList = null;
        for (var index:int = int(this.list.size() - 1); index >= 0; index--) {
            basicArrayList = ((this.list.objectArray[index] as BasicArrayList));
            basicArrayList.clear();
        }
    }
    

    override public function log():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("S: ");
        stringBuffer.appendint(this.list.size());
        var S_LABEL:String = " s: ";
        var basicArrayList:BasicArrayList = null;
        for (var index:int = int(this.list.size() - 1); index >= 0; index--) {
            stringBuffer.append(S_LABEL);
            basicArrayList = ((this.list.objectArray[index] as BasicArrayList));
            stringBuffer.appendint(basicArrayList.size());
        }
        return stringBuffer.toString();
    }
    }
}

