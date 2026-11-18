/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.apache.xmlrpc {
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.logic.NullUtil;

    public class NullXmlRpcHandler implements XmlRpcHandler {
    private static var NULL_XML_RPC_HANDLER_value:NullXmlRpcHandler;
    private static var NULL_XML_RPC_HANDLER_set:Boolean = false;
    public static function get NULL_XML_RPC_HANDLER():NullXmlRpcHandler {
        if (!NullXmlRpcHandler.NULL_XML_RPC_HANDLER_set) {
            NullXmlRpcHandler.NULL_XML_RPC_HANDLER_set = true;
            NullXmlRpcHandler.NULL_XML_RPC_HANDLER_value = new NullXmlRpcHandler();
        }
        return NullXmlRpcHandler.NULL_XML_RPC_HANDLER_value;
    }
    

    public function execute(method:String, params:BasicArrayList):Object {
        return NullUtil.getInstance().NULL_OBJECT;
    }
    }
}

