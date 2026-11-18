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
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.util.BasicArrayListUtil;

    public class BasicTouchButtonsBuilder extends BaseTouchInput {
    private static var SINGLETON_value:BasicTouchButtonsBuilder;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():BasicTouchButtonsBuilder {
        if (!BasicTouchButtonsBuilder.SINGLETON_set) {
            BasicTouchButtonsBuilder.SINGLETON_set = true;
            BasicTouchButtonsBuilder.SINGLETON_value = new BasicTouchButtonsBuilder();
        }
        return BasicTouchButtonsBuilder.SINGLETON_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicTouchButtonsBuilder():void {
    this.logUtil = LogUtil.getInstance();
        }

        public function BasicTouchButtonsBuilder() {
            super();
            this.initFieldsBasicTouchButtonsBuilder();
        }
    

    public static function getInstance():BaseTouchInput {
        return BasicTouchButtonsBuilder.SINGLETON;
    }
    

    override public function getList():BasicArrayList {
        try {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.GET_LIST);
            var list:BasicArrayList = new BasicArrayListD();
            return list;
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e);
            return BasicArrayListUtil.getInstance().getImmutableInstance();
        }
    }
    }
}

