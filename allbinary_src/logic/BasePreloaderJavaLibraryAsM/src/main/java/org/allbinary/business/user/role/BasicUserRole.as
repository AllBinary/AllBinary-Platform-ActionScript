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
        if (args.length == 2 && args[0] === JConstructor.ARGS) {
            args = args[1];
        }
        var jsuper:Array = BasicUserRole.jsuperArgs(args);
        super();
        this.initFieldsBasicUserRole();
        this.jconstruct(args);
    }

    private static function jsuperArgs(args:Array):Array {
        if (args.length == 4) {
            return BasicUserRole.jsuper_1(args[0], args[1], args[2], args[3]);
        }
        if (args.length == 5) {
            return BasicUserRole.jsuper_2(args[0], args[1], args[2], args[3], args[4]);
        }
        return [];
    }

    private static function jsuper_1(aRole:String, a_int_RoleId:int, aSessionTimeout:Number, aSessionInactivityTimeout:Number):Array {
        return BasicUserRole.jsuperArgs([aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout]);
    }

    private static function jsuper_2(aRole:String, aDisplayValue:String, a_int_RoleId:int, aSessionTimeout:Number, aSessionInactivityTimeout:Number):Array {
        return [];
    }

    private function jconstruct(args:Array):void {
        if (args.length == 4) {
            this.jconstruct_1(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 5) {
            this.jconstruct_2(args[0], args[1], args[2], args[3], args[4]);
            return;
        }
    }

    private function jconstruct_1(aRole:String, a_int_RoleId:int, aSessionTimeout:Number, aSessionInactivityTimeout:Number):void {
        this.jconstruct([aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout]);
    }

    private function jconstruct_2(aRole:String, aDisplayValue:String, a_int_RoleId:int, aSessionTimeout:Number, aSessionInactivityTimeout:Number):void {
        this.m_int_RoleId = a_int_RoleId;
        this.role = aRole;
        this.displayValue = aDisplayValue;
        this.sessionTimeout = aSessionTimeout;
        this.sessionInactivityTimeout = aSessionInactivityTimeout;
        BasicUserRoles.getInstance().roleVector.add(this);
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

