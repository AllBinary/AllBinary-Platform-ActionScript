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
package org.allbinary.thirdparty.store {
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;

    public class ThirdPartyStore {
        private var authorized:Boolean = false;
        private var name:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsThirdPartyStore():void {
    this.authorized = false;
    
        }
    

    public function ThirdPartyStore(name:String) {
        super();
        this.initFieldsThirdPartyStore();
        this.name = name;
    }
    

    public function authorize(clientInformationInterface:AbeClientInformationInterface):void {
    }
    

    public function isAuthorized():Boolean {
        return this.authorized;
    }
    

    public function setAuthorized(authorized:Boolean):void {
        this.authorized = authorized;
    }
    

    public function getName():String {
        return this.name;
    }
    }
}

