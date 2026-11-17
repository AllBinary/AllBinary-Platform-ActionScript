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
package org.allbinary.business.user.role {
    import java.io.JSerializable;

    public class BasicUserRole implements JSerializable {
        private var m_int_RoleId:int = 0;
        private var role:String = null;
        private var displayValue:String = null;
        private var sessionTimeout:Number = 0;
        private var sessionInactivityTimeout:Number = 0;

        // Java field initializers run after the base constructor
        private function initFieldsBasicUserRole():void {
    
    
    
    
    
        }
    

    public function BasicUserRole(...args) {
        super();
        this.initFieldsBasicUserRole();
        this.jconstruct(args);
    }

    private function jconstruct(args:Array):void {
        if (args.length == 4) {
            (function(aRole:String, a_int_RoleId:int, aSessionTimeout:Number, aSessionInactivityTimeout:Number):void {
        this.jconstruct([aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout]);
            }).apply(this, args);
            return;
        }
        if (args.length == 5) {
            (function(aRole:String, aDisplayValue:String, a_int_RoleId:int, aSessionTimeout:Number, aSessionInactivityTimeout:Number):void {
        this.m_int_RoleId = a_int_RoleId;
        this.role = aRole;
        this.displayValue = aDisplayValue;
        this.sessionTimeout = aSessionTimeout;
        this.sessionInactivityTimeout = aSessionInactivityTimeout;
        BasicUserRoles.getInstance().roleVector.add(this);
            }).apply(this, args);
            return;
        }
    }
    
    

    private function getRoleId():int {
        return this.m_int_RoleId;
    }
    

    public function getRole():String {
        return this.role;
    }
    

    public function getSessionTimeout():Number {
        return this.sessionTimeout;
    }
    

    public function getSessionInactivityTimeout():Number {
        return this.sessionInactivityTimeout;
    }
    

    public function equals(basicUserRole:BasicUserRole):Boolean {
        if (this.getRoleId() == basicUserRole.getRoleId()) {
            return true;
        }
        return false;
    }
    

    public function toString():String {
        return this.getRole();
    }
    }
}

