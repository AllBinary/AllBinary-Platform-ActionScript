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
package org.allbinary.init {
    import org.allbinary.string.CommonStrings;

    public class Init implements InitInterface {
        public var commonStrings:CommonStrings = null;

        // Java field initializers run after the base constructor
        private function initFieldsInit():void {
    this.commonStrings = CommonStrings.getInstance();
        }

        public function Init() {
            super();
            this.initFieldsInit();
        }
    

    public function init():void {
    }
    }
}

