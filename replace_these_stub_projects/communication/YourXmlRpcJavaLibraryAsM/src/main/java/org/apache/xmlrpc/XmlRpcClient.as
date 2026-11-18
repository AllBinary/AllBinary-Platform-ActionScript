// Generated Code Do Not Modify
package org.apache.xmlrpc {
    import java.io.JIOException;
    import java.net.JMalformedURLException;
    import java.net.JURL;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.init.crypt.jcehelper.CryptInterface;
    import org.allbinary.logic.NullUtil;

    public class XmlRpcClient implements XmlRpcHandler {
        private var url:URL = null;

        // Java field initializers run after the base constructor
        private function initFieldsXmlRpcClient():void {
    
        }
    

    public function XmlRpcClient(url:String) {
        super();
        this.initFieldsXmlRpcClient();
        this.url = new URL(url);
    }
    

    public function getURL():URL {
        return this.url;
    }
    

    public function setBasicAuthentication(user:String, password:String):void {
    }
    

    public function execute(method:String, params:BasicArrayList):Object {
        return NullUtil.getInstance().NULL_OBJECT;
    }
    

    public function executeWithCrypt(method:String, params:BasicArrayList, cryptInterface:CryptInterface):Object {
        return NullUtil.getInstance().NULL_OBJECT;
    }
    }
}

