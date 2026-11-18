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
package org.allbinary.logic.system.security.licensing {

    public class LicenseType {
        private var name:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLicenseType():void {
    this.name = null;
        }
    

    public function LicenseType(name:String) {
        super();
        this.initFieldsLicenseType();
        this.setName(name);
    }
    

    private function setName(name:String):void {
        this.name = name;
    }
    

    public function getName():String {
        return this.name;
    }
    }
}

