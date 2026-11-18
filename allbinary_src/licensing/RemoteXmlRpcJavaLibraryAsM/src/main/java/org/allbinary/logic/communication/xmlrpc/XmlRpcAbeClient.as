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
package org.allbinary.logic.communication.xmlrpc {
    import org.allbinary.game.rand.MyRandomFactory;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import org.apache.xmlrpc.NullXmlRpcHandler;
    import org.apache.xmlrpc.XmlRpcClient;
    import org.apache.xmlrpc.XmlRpcHandler;

    public class XmlRpcAbeClient {
    public static var isOnline:Boolean = true;
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var remoteMethod:String = null;
        private var clientInfo:AbeClientInformationInterface = null;
        private var client:XmlRpcHandler = null;
        private var server:int = 0;
        private var start:int = 0;
        private var maxServers:int = 0;
        private var isDone:Boolean = false;
        private var START_SERVER:String = null;
        public var TRYING:String = null;
        public var SEP:String = null;
        public var CLIENT_INFO:String = null;
        public var RESULT:String = null;
        public var INVALID:String = null;
        public var EXCEPTION_IN_CLIENT:String = null;
        public var SERVER_REPORTED_ERROR:String = null;
        public var UNKNOWN_ERROR:String = null;
        public var TRYING_OTHER_SERVERS:String = null;
        public var HOST_NOT_RESOLVED_MSG:String = null;
        public var HOST_NOT_RESOLVED:String = null;
        private var myRandomFactory:MyRandomFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsXmlRpcAbeClient():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    this.client = NullXmlRpcHandler.NULL_XML_RPC_HANDLER;
    
    this.start = 0;
    this.maxServers = 0;
    
    this.START_SERVER = "Start With Server #";
    this.TRYING = "Trying Server #";
    this.SEP = CommonLabels.getInstance().COLON_SEP;
    this.CLIENT_INFO = "Client Info: \n";
    this.RESULT = CommonLabels.getInstance().RESULT_ + CommonSeps.getInstance().NEW_LINE;
    this.INVALID = "License data is Invalid Trying Other Servers";
    this.EXCEPTION_IN_CLIENT = "Exception in client";
    this.SERVER_REPORTED_ERROR = "Server reported error";
    this.UNKNOWN_ERROR = "Unknown License Retrieval Failure";
    this.TRYING_OTHER_SERVERS = "IOException Trying Other Servers";
    this.HOST_NOT_RESOLVED_MSG = "Not Trying Again Since Host Unresolved";
    this.HOST_NOT_RESOLVED = "Host is unresolved";
    this.myRandomFactory = MyRandomFactory.getInstance();
        }
    

    public function XmlRpcAbeClient(clientInfo:AbeClientInformationInterface, remoteMethod:String) {
        super();
        this.initFieldsXmlRpcAbeClient();
        this.remoteMethod = remoteMethod;
        this.clientInfo = clientInfo;
        if (clientInfo.getNumberOfLicenseServers() > 1) {
            this.maxServers = int(clientInfo.getNumberOfLicenseServers() - 2);
            this.start = int(this.myRandomFactory.getAbsoluteNextInt(this.maxServers) + 1);
        } else if (clientInfo.getNumberOfLicenseServers() == 1) {
            this.maxServers = 0;
            this.start = 0;
        }
        this.isDone = false;
        this.server = this.start;
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(this.START_SERVER);
        stringBuffer.appendint(this.getServer());
        stringBuffer.append(this.SEP);
        stringBuffer.append(clientInfo.getLicenseServer(this.getServer()));
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.CONSTRUCTOR);
    }
    

    public function get_(anyType:Object):Object {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
        return NullUtil.getInstance().NULL_OBJECT;
    }
    

    public function tryAnother(anyType:Object):Object {
        if (this.getServer() < this.getMaxServers()) {
            this.setServer(int(this.getServer() + 1));
        } else {
            this.setServer(0);
        }
        if (this.getServer() != this.getStart() && !this.isIsDone()) {
            return this.get_(anyType);
        } else {
            this.setIsDone(true);
        }
        throw new JException("Exception", "Tried All Servers But Still Failed");
    }
    

    public function getClientInfo():AbeClientInformationInterface {
        return this.clientInfo;
    }
    

    public function getClient():XmlRpcHandler {
        return this.client;
    }
    

    public function setClient(client:XmlRpcClient):void {
        this.client = client;
    }
    

    public function getServer():int {
        return this.server;
    }
    

    public function setServer(server:int):void {
        this.server = server;
    }
    

    public function getStart():int {
        return this.start;
    }
    

    public function setStart(start:int):void {
        this.start = start;
    }
    

    public function getMaxServers():int {
        return this.maxServers;
    }
    

    public function setMaxServers(maxServers:int):void {
        this.maxServers = maxServers;
    }
    

    public function isIsDone():Boolean {
        return this.isDone;
    }
    

    public function setIsDone(isDone:Boolean):void {
        this.isDone = isDone;
    }
    

    public function getRemoteMethod():String {
        return this.remoteMethod;
    }
    }
}

