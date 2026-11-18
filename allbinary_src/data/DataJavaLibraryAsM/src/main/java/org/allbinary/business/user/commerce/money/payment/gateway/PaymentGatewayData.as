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
package org.allbinary.business.user.commerce.money.payment.gateway {

    public class PaymentGatewayData {
    public static const CRYPTNUM:int = 5;
    private static var ID_value:PaymentGatewayData;
    private static var ID_set:Boolean = false;
    public static function get ID():PaymentGatewayData {
        if (!PaymentGatewayData.ID_set) {
            PaymentGatewayData.ID_set = true;
            PaymentGatewayData.ID_value = new PaymentGatewayData("PAYMENTGATEWAY_ID");
        }
        return PaymentGatewayData.ID_value;
    }
    private static var NAME_value:PaymentGatewayData;
    private static var NAME_set:Boolean = false;
    public static function get NAME():PaymentGatewayData {
        if (!PaymentGatewayData.NAME_set) {
            PaymentGatewayData.NAME_set = true;
            PaymentGatewayData.NAME_value = new PaymentGatewayData("PAYMENTGATEWAY_NAME");
        }
        return PaymentGatewayData.NAME_value;
    }
    private static var VALUE_value:PaymentGatewayData;
    private static var VALUE_set:Boolean = false;
    public static function get VALUE():PaymentGatewayData {
        if (!PaymentGatewayData.VALUE_set) {
            PaymentGatewayData.VALUE_set = true;
            PaymentGatewayData.VALUE_value = new PaymentGatewayData("PAYMENTGATEWAY_VALUE");
        }
        return PaymentGatewayData.VALUE_value;
    }
    private static var PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE_value:PaymentGatewayData;
    private static var PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE_set:Boolean = false;
    public static function get PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE():PaymentGatewayData {
        if (!PaymentGatewayData.PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE_set) {
            PaymentGatewayData.PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE_set = true;
            PaymentGatewayData.PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE_value = new PaymentGatewayData("PAYMENTGATEWAY_PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE");
        }
        return PaymentGatewayData.PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE_value;
    }
    private static var PAYMENTPROCESSORINTERFACEFACTORYINTERFACE_value:PaymentGatewayData;
    private static var PAYMENTPROCESSORINTERFACEFACTORYINTERFACE_set:Boolean = false;
    public static function get PAYMENTPROCESSORINTERFACEFACTORYINTERFACE():PaymentGatewayData {
        if (!PaymentGatewayData.PAYMENTPROCESSORINTERFACEFACTORYINTERFACE_set) {
            PaymentGatewayData.PAYMENTPROCESSORINTERFACEFACTORYINTERFACE_set = true;
            PaymentGatewayData.PAYMENTPROCESSORINTERFACEFACTORYINTERFACE_value = new PaymentGatewayData("PAYMENTGATEWAY_PAYMENTPROCESSORINTERFACEFACTORYINTERFACE");
        }
        return PaymentGatewayData.PAYMENTPROCESSORINTERFACEFACTORYINTERFACE_value;
    }
    private static var MODE_value:PaymentGatewayData;
    private static var MODE_set:Boolean = false;
    public static function get MODE():PaymentGatewayData {
        if (!PaymentGatewayData.MODE_set) {
            PaymentGatewayData.MODE_set = true;
            PaymentGatewayData.MODE_value = new PaymentGatewayData("MODE");
        }
        return PaymentGatewayData.MODE_value;
    }
    private static var SERVERPROTOCOL_value:PaymentGatewayData;
    private static var SERVERPROTOCOL_set:Boolean = false;
    public static function get SERVERPROTOCOL():PaymentGatewayData {
        if (!PaymentGatewayData.SERVERPROTOCOL_set) {
            PaymentGatewayData.SERVERPROTOCOL_set = true;
            PaymentGatewayData.SERVERPROTOCOL_value = new PaymentGatewayData("SERVERPROTOCOL");
        }
        return PaymentGatewayData.SERVERPROTOCOL_value;
    }
    private static var SERVER_value:PaymentGatewayData;
    private static var SERVER_set:Boolean = false;
    public static function get SERVER():PaymentGatewayData {
        if (!PaymentGatewayData.SERVER_set) {
            PaymentGatewayData.SERVER_set = true;
            PaymentGatewayData.SERVER_value = new PaymentGatewayData("SERVER");
        }
        return PaymentGatewayData.SERVER_value;
    }
    private static var SERVERPORT_value:PaymentGatewayData;
    private static var SERVERPORT_set:Boolean = false;
    public static function get SERVERPORT():PaymentGatewayData {
        if (!PaymentGatewayData.SERVERPORT_set) {
            PaymentGatewayData.SERVERPORT_set = true;
            PaymentGatewayData.SERVERPORT_value = new PaymentGatewayData("SERVERPORT");
        }
        return PaymentGatewayData.SERVERPORT_value;
    }
    private static var SERVERPATH_value:PaymentGatewayData;
    private static var SERVERPATH_set:Boolean = false;
    public static function get SERVERPATH():PaymentGatewayData {
        if (!PaymentGatewayData.SERVERPATH_set) {
            PaymentGatewayData.SERVERPATH_set = true;
            PaymentGatewayData.SERVERPATH_value = new PaymentGatewayData("SERVERPATH");
        }
        return PaymentGatewayData.SERVERPATH_value;
    }
    private static var TESTPROTOCOL_value:PaymentGatewayData;
    private static var TESTPROTOCOL_set:Boolean = false;
    public static function get TESTPROTOCOL():PaymentGatewayData {
        if (!PaymentGatewayData.TESTPROTOCOL_set) {
            PaymentGatewayData.TESTPROTOCOL_set = true;
            PaymentGatewayData.TESTPROTOCOL_value = new PaymentGatewayData("TESTSERVERPROTOCOL");
        }
        return PaymentGatewayData.TESTPROTOCOL_value;
    }
    private static var TESTSERVER_value:PaymentGatewayData;
    private static var TESTSERVER_set:Boolean = false;
    public static function get TESTSERVER():PaymentGatewayData {
        if (!PaymentGatewayData.TESTSERVER_set) {
            PaymentGatewayData.TESTSERVER_set = true;
            PaymentGatewayData.TESTSERVER_value = new PaymentGatewayData("TESTSERVER");
        }
        return PaymentGatewayData.TESTSERVER_value;
    }
    private static var TESTPORT_value:PaymentGatewayData;
    private static var TESTPORT_set:Boolean = false;
    public static function get TESTPORT():PaymentGatewayData {
        if (!PaymentGatewayData.TESTPORT_set) {
            PaymentGatewayData.TESTPORT_set = true;
            PaymentGatewayData.TESTPORT_value = new PaymentGatewayData("TESTPORT");
        }
        return PaymentGatewayData.TESTPORT_value;
    }
    private static var TESTPATH_value:PaymentGatewayData;
    private static var TESTPATH_set:Boolean = false;
    public static function get TESTPATH():PaymentGatewayData {
        if (!PaymentGatewayData.TESTPATH_set) {
            PaymentGatewayData.TESTPATH_set = true;
            PaymentGatewayData.TESTPATH_value = new PaymentGatewayData("TESTSERVERPATH");
        }
        return PaymentGatewayData.TESTPATH_value;
    }
    private static var TIMEOUT_value:PaymentGatewayData;
    private static var TIMEOUT_set:Boolean = false;
    public static function get TIMEOUT():PaymentGatewayData {
        if (!PaymentGatewayData.TIMEOUT_set) {
            PaymentGatewayData.TIMEOUT_set = true;
            PaymentGatewayData.TIMEOUT_value = new PaymentGatewayData("TIMEOUT");
        }
        return PaymentGatewayData.TIMEOUT_value;
    }
    private static var PROXYPROTOCOL_value:PaymentGatewayData;
    private static var PROXYPROTOCOL_set:Boolean = false;
    public static function get PROXYPROTOCOL():PaymentGatewayData {
        if (!PaymentGatewayData.PROXYPROTOCOL_set) {
            PaymentGatewayData.PROXYPROTOCOL_set = true;
            PaymentGatewayData.PROXYPROTOCOL_value = new PaymentGatewayData("PROXYPROTOCOL");
        }
        return PaymentGatewayData.PROXYPROTOCOL_value;
    }
    private static var PROXYSERVER_value:PaymentGatewayData;
    private static var PROXYSERVER_set:Boolean = false;
    public static function get PROXYSERVER():PaymentGatewayData {
        if (!PaymentGatewayData.PROXYSERVER_set) {
            PaymentGatewayData.PROXYSERVER_set = true;
            PaymentGatewayData.PROXYSERVER_value = new PaymentGatewayData("PROXYSERVER");
        }
        return PaymentGatewayData.PROXYSERVER_value;
    }
    private static var PROXYPATH_value:PaymentGatewayData;
    private static var PROXYPATH_set:Boolean = false;
    public static function get PROXYPATH():PaymentGatewayData {
        if (!PaymentGatewayData.PROXYPATH_set) {
            PaymentGatewayData.PROXYPATH_set = true;
            PaymentGatewayData.PROXYPATH_value = new PaymentGatewayData("PROXYPATH");
        }
        return PaymentGatewayData.PROXYPATH_value;
    }
    private static var PROXYUSERNAME_value:PaymentGatewayData;
    private static var PROXYUSERNAME_set:Boolean = false;
    public static function get PROXYUSERNAME():PaymentGatewayData {
        if (!PaymentGatewayData.PROXYUSERNAME_set) {
            PaymentGatewayData.PROXYUSERNAME_set = true;
            PaymentGatewayData.PROXYUSERNAME_value = new PaymentGatewayData("PROXYUSERNAME");
        }
        return PaymentGatewayData.PROXYUSERNAME_value;
    }
    private static var PROXYPASSWORD_value:PaymentGatewayData;
    private static var PROXYPASSWORD_set:Boolean = false;
    public static function get PROXYPASSWORD():PaymentGatewayData {
        if (!PaymentGatewayData.PROXYPASSWORD_set) {
            PaymentGatewayData.PROXYPASSWORD_set = true;
            PaymentGatewayData.PROXYPASSWORD_value = new PaymentGatewayData("PROXYPASSWORD");
        }
        return PaymentGatewayData.PROXYPASSWORD_value;
    }
    private static var PROXYPORT_value:PaymentGatewayData;
    private static var PROXYPORT_set:Boolean = false;
    public static function get PROXYPORT():PaymentGatewayData {
        if (!PaymentGatewayData.PROXYPORT_set) {
            PaymentGatewayData.PROXYPORT_set = true;
            PaymentGatewayData.PROXYPORT_value = new PaymentGatewayData("PROXYPORT");
        }
        return PaymentGatewayData.PROXYPORT_value;
    }
    private static var PROXYTIMEOUT_value:PaymentGatewayData;
    private static var PROXYTIMEOUT_set:Boolean = false;
    public static function get PROXYTIMEOUT():PaymentGatewayData {
        if (!PaymentGatewayData.PROXYTIMEOUT_set) {
            PaymentGatewayData.PROXYTIMEOUT_set = true;
            PaymentGatewayData.PROXYTIMEOUT_value = new PaymentGatewayData("PROXYTIMEOUT");
        }
        return PaymentGatewayData.PROXYTIMEOUT_value;
    }
    private static var SPECIAL1_value:PaymentGatewayData;
    private static var SPECIAL1_set:Boolean = false;
    public static function get SPECIAL1():PaymentGatewayData {
        if (!PaymentGatewayData.SPECIAL1_set) {
            PaymentGatewayData.SPECIAL1_set = true;
            PaymentGatewayData.SPECIAL1_value = new PaymentGatewayData("SPECIAL1");
        }
        return PaymentGatewayData.SPECIAL1_value;
    }
    private static var SPECIAL2_value:PaymentGatewayData;
    private static var SPECIAL2_set:Boolean = false;
    public static function get SPECIAL2():PaymentGatewayData {
        if (!PaymentGatewayData.SPECIAL2_set) {
            PaymentGatewayData.SPECIAL2_set = true;
            PaymentGatewayData.SPECIAL2_value = new PaymentGatewayData("SPECIAL2");
        }
        return PaymentGatewayData.SPECIAL2_value;
    }
    private static var SPECIAL3_value:PaymentGatewayData;
    private static var SPECIAL3_set:Boolean = false;
    public static function get SPECIAL3():PaymentGatewayData {
        if (!PaymentGatewayData.SPECIAL3_set) {
            PaymentGatewayData.SPECIAL3_set = true;
            PaymentGatewayData.SPECIAL3_value = new PaymentGatewayData("SPECIAL3");
        }
        return PaymentGatewayData.SPECIAL3_value;
    }
    private static var SPECIAL4_value:PaymentGatewayData;
    private static var SPECIAL4_set:Boolean = false;
    public static function get SPECIAL4():PaymentGatewayData {
        if (!PaymentGatewayData.SPECIAL4_set) {
            PaymentGatewayData.SPECIAL4_set = true;
            PaymentGatewayData.SPECIAL4_value = new PaymentGatewayData("SPECIAL4");
        }
        return PaymentGatewayData.SPECIAL4_value;
    }
    private static var SPECIAL5_value:PaymentGatewayData;
    private static var SPECIAL5_set:Boolean = false;
    public static function get SPECIAL5():PaymentGatewayData {
        if (!PaymentGatewayData.SPECIAL5_set) {
            PaymentGatewayData.SPECIAL5_set = true;
            PaymentGatewayData.SPECIAL5_value = new PaymentGatewayData("SPECIAL5");
        }
        return PaymentGatewayData.SPECIAL5_value;
    }
    private static var SPECIAL6_value:PaymentGatewayData;
    private static var SPECIAL6_set:Boolean = false;
    public static function get SPECIAL6():PaymentGatewayData {
        if (!PaymentGatewayData.SPECIAL6_set) {
            PaymentGatewayData.SPECIAL6_set = true;
            PaymentGatewayData.SPECIAL6_value = new PaymentGatewayData("SPECIAL6");
        }
        return PaymentGatewayData.SPECIAL6_value;
    }
    private static var SPECIAL7_value:PaymentGatewayData;
    private static var SPECIAL7_set:Boolean = false;
    public static function get SPECIAL7():PaymentGatewayData {
        if (!PaymentGatewayData.SPECIAL7_set) {
            PaymentGatewayData.SPECIAL7_set = true;
            PaymentGatewayData.SPECIAL7_value = new PaymentGatewayData("SPECIAL7");
        }
        return PaymentGatewayData.SPECIAL7_value;
    }
    private static var SPECIAL8_value:PaymentGatewayData;
    private static var SPECIAL8_set:Boolean = false;
    public static function get SPECIAL8():PaymentGatewayData {
        if (!PaymentGatewayData.SPECIAL8_set) {
            PaymentGatewayData.SPECIAL8_set = true;
            PaymentGatewayData.SPECIAL8_value = new PaymentGatewayData("SPECIAL8");
        }
        return PaymentGatewayData.SPECIAL8_value;
    }
    private static var SPECIAL9_value:PaymentGatewayData;
    private static var SPECIAL9_set:Boolean = false;
    public static function get SPECIAL9():PaymentGatewayData {
        if (!PaymentGatewayData.SPECIAL9_set) {
            PaymentGatewayData.SPECIAL9_set = true;
            PaymentGatewayData.SPECIAL9_value = new PaymentGatewayData("SPECIAL9");
        }
        return PaymentGatewayData.SPECIAL9_value;
    }
        private var key:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsPaymentGatewayData():void {
    
        }
    

    public function PaymentGatewayData(value:String) {
        super();
        this.initFieldsPaymentGatewayData();
        this.key = value;
    }
    

    public function toString():String {
        return this.key;
    }
    }
}

