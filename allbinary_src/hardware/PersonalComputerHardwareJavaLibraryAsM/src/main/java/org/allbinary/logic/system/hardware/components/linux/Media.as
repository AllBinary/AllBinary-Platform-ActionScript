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
    import org.allbinary.logic.system.hardware.components.interfaces.MediaInterface;

    public class Media implements HardwareComponentInterface, MediaInterface {
        private var data:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsMedia():void {
    
        }
    

    public function Media(data:String) {
        super();
        this.initFieldsMedia();
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

