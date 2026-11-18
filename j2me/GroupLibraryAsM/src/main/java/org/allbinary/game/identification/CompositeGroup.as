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
package org.allbinary.game.identification {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class CompositeGroup {
        public var logUtil:LogUtil = null;
        private var groupInterface:Group = null;
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsCompositeGroup():void {
    this.logUtil = LogUtil.getInstance();
    
    this.list = new BasicArrayListD();
        }
    

    public function CompositeGroup(groupInterface:Group) {
        super();
        this.initFieldsCompositeGroup();
        this.groupInterface = groupInterface;
    }
    

    public function clear():void {
        this.list.clear();
    }
    

    public function add(groupInterface:Group):void {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        var groupCommonFactory:GroupCommonFactory = GroupCommonFactory.getInstance();
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(groupCommonFactory.ADDING_LABEL);
        stringBuffer.append(groupInterface.toString());
        stringBuffer.append(groupCommonFactory.TO_LABEL);
        stringBuffer.append(StringUtil.getInstance().toString1(this.groupInterface));
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.ADD);
        this.list.add(groupInterface);
    }
    

    public function isInGroup(groupInterface:Group):Boolean {
        if (this.list.contains(groupInterface)) {
            return true;
        } else {
            return false;
        }
    }
    

    public function getGroup():Group {
        return this.groupInterface;
    }
    }
}

