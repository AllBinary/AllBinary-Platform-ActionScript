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
package org.allbinary.logic.system.security.licensing.registration {
    import org.allbinary.logic.string.StringMaker;

    public class RegistrationConfiguration {
    private static var SINGLETON_value:RegistrationConfiguration;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():RegistrationConfiguration {
        if (!RegistrationConfiguration.SINGLETON_set) {
            RegistrationConfiguration.SINGLETON_set = true;
            RegistrationConfiguration.SINGLETON_value = new RegistrationConfiguration();
        }
        return RegistrationConfiguration.SINGLETON_value;
    }
        private var registrationCode:String = null;
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsRegistrationConfiguration():void {
    this.registrationCode = "No Registration Code";
    this.NAME = "registrationid";
        }
    

    public function RegistrationConfiguration() {
        super();
        this.initFieldsRegistrationConfiguration();
    }
    

    public static function getInstance():RegistrationConfiguration {
        return RegistrationConfiguration.SINGLETON;
    }
    

    private function read():void {
    }
    

    public function write():void {
    }
    

    public function toString():String {
        return new StringMaker().append("Registration Code: ").append(this.getRegistrationCode()).toString();
    }
    

    public function setRegistrationCode(registrationCode:String):void {
        this.registrationCode = registrationCode;
    }
    

    public function getRegistrationCode():String {
        return this.registrationCode;
    }
    }
}

