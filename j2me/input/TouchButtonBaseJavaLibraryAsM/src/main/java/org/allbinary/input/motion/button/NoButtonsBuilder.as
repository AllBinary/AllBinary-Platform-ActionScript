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
package org.allbinary.input.motion.button {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListUtil;

    public class NoButtonsBuilder extends BaseTouchInput {
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsNoButtonsBuilder():void {
    this.logUtil = LogUtil.getInstance();
        }

        public function NoButtonsBuilder() {
            super();
            this.initFieldsNoButtonsBuilder();
        }
    

    override public function getList():BasicArrayList {
        try {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
            var list:BasicArrayList = BasicArrayListUtil.getInstance().getImmutableInstance();
            return list;
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e);
            return BasicArrayListUtil.getInstance().getImmutableInstance();
        }
    }
    }
}

