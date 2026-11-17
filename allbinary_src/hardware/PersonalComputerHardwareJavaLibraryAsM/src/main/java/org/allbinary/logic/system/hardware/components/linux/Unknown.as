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
package org.allbinary.logic.system.hardware.components.linux {
    import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface;

    //import org.allbinary.logic.system.hardware.components.interfaces.MediaInterface;
    public class Unknown implements HardwareComponentInterface {
        private var data:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsUnknown():void {
    
        }
    

    public function Unknown(data:String) {
        super();
        this.initFieldsUnknown();
        this.data = data;
    }
    

    public function compareTo(componentInterface:HardwareComponentInterface):Boolean {
        return true;
    }
    

    public function toString():String {
        return this.data;
    }
    }
}

