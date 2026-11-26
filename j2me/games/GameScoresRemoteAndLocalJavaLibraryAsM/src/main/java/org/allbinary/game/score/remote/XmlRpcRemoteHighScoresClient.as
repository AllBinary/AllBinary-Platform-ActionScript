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
package org.allbinary.game.score.remote {
    import org.allbinary.logic.string.StringUtil;
    import java.io.JIOException;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.init.crypt.jcehelper.CryptInterface;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient;
    import org.allbinary.logic.java.exception.ExceptionUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.util.ABHashtable;
    import org.apache.xmlrpc.XmlRpcClient;
    import org.apache.xmlrpc.XmlRpcException;

    public class XmlRpcRemoteHighScoresClient extends XmlRpcAbeClient {
        private var page:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsXmlRpcRemoteHighScoresClient():void {
    this.logUtil = LogUtil.getInstance();
    
        }
    

    public function XmlRpcRemoteHighScoresClient(clientInfo:AbeClientInformationInterface, page:String, remoteMethod:String) {
        super(clientInfo, remoteMethod);
        this.initFieldsXmlRpcRemoteHighScoresClient();
        this.page = page;
        this.setServer(0);
    }
    

    override public function get_(...args):Object {
        if (args.length == 2) {
            return this.get__jo2(args[0], args[1]);
        }
        return super.get_.apply(this, args);
    }

    private function get__jo2(anyType:Object, cryptInterface:CryptInterface):Object {
        try {
            var param:BasicArrayList = new BasicArrayListD();
            var serverUrl:String = this.getClientInfo().getLicenseServer(this.getServer());
            var index:int = JString.lastIndexOf(serverUrl, "/".charCodeAt(0));
            serverUrl = serverUrl.substring(0, int(index + 1)) + this.page;
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append(this.TRYING);
            stringBuffer.appendint(this.getServer());
            stringBuffer.append(this.SEP);
            stringBuffer.append(serverUrl);
            this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.GET);
            var xmlRpcClient:XmlRpcClient = new XmlRpcClient(serverUrl);
            this.setClient(xmlRpcClient);
            xmlRpcClient.setBasicAuthentication(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING);
            var hashtable:ABHashtable = (anyType as ABHashtable);
            this.logUtil.putF(String(this.CLIENT_INFO) + hashtable.toString(), this, this.commonStrings.GET);
            param.add(hashtable);
            var result:Object = xmlRpcClient.executeWithCrypt(this.getRemoteMethod(), param, cryptInterface);
            this.logUtil.putF(String(this.RESULT) + result.toString(), this, this.commonStrings.GET);
            XmlRpcAbeClient.isOnline = true;
            return result;
        } catch (e:*) {
            this.logUtil.put(String(this.TRYING_OTHER_SERVERS) + ExceptionUtil.getInstance().getStackTrace(e), this, this.commonStrings.GET, e);
            if (!JString.startsWith(e.getMessage(), this.HOST_NOT_RESOLVED)) {
                return this.tryAnother(anyType);
            } else {
                throw new JException("Exception", this.HOST_NOT_RESOLVED_MSG);
            }
        } catch (e:*) {
            this.logUtil.put(this.SERVER_REPORTED_ERROR, this, this.commonStrings.GET, e);
            return this.tryAnother(anyType);
        } catch (e:*) {
            this.logUtil.put(this.UNKNOWN_ERROR, this, this.commonStrings.GET, e);
            return this.tryAnother(anyType);
        }
    }
    }
}

