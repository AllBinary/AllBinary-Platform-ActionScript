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
package org.allbinary.data.tree.dom.document {
    import java.io.JInputStream;
    import java.io.JStringBufferInputStream;
    import org.allbinary.string.CommonPhoneStrings;
    import org.w3c.dom.Document;

    public class DomDocumentHelper {
    

    public function DomDocumentHelper() {
        super();
    }
    

    public static function init():void {
        var commonPhoneStrings:CommonPhoneStrings = CommonPhoneStrings.getInstance();
        JSystem.setProperty("jdk.xml.maxElementDepth", commonPhoneStrings.ZERO);
        JSystem.setProperty("jdk.xml.xpathExprOpLimit", commonPhoneStrings.ZERO);
        JSystem.setProperty("jdk.xml.xpathTotalOpLimit", commonPhoneStrings.ZERO);
        var LIMIT:String = "500000";
        JSystem.setProperty("jdk.xml.maxGeneralEntitySizeLimit", LIMIT);
        JSystem.setProperty("jdk.xml.totalEntitySizeLimit", LIMIT);
    }
    

    public static function create():Document {
        try {
            var factory:DocumentBuilderFactory = DocumentBuilderFactory.newInstance();
            var builder:DocumentBuilder = factory.newDocumentBuilder();
            var document:Document = builder.newDocument();
            return document;
        } catch (e:*) {
            return null;
        }
    }
    

    public static function create(inputStream:InputStream):Document {
        try {
            var factory:DocumentBuilderFactory = DocumentBuilderFactory.newInstance();
            var builder:DocumentBuilder = factory.newDocumentBuilder();
            var document:Document = builder.parse(inputStream);
            return document;
        } catch (e:*) {
            throw e;
        }
    }
    

    public static function create(xmlString:String):Document {
        try {
            var factory:DocumentBuilderFactory = DocumentBuilderFactory.newInstance();
            var builder:DocumentBuilder = factory.newDocumentBuilder();
            var document:Document = builder.parse(new StringBufferInputStream(xmlString));
            return document;
        } catch (e:*) {
            throw e;
        }
    }
    }
}

