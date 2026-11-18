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
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListUtil;

    public class BaseTouchInput {
        public var commonStrings:CommonStrings = null;
        private var basicArrayListUtil:BasicArrayListUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsBaseTouchInput():void {
    this.commonStrings = CommonStrings.getInstance();
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
        }
    

    public function BaseTouchInput() {
        super();
        this.initFieldsBaseTouchInput();
    }
    

    public function getList():BasicArrayList {
        return this.basicArrayListUtil.getImmutableInstance();
    }
    

    public function toString():String {
        return JSystem.className(this);
    }
    }
}

