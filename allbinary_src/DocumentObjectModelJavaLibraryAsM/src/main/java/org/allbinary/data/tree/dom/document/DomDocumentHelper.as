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
    import javax.xml.parsers.DocumentBuilder;
    import javax.xml.parsers.DocumentBuilderFactory;
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
    

    public static function create(...args):Document {
        if (args.length == 0) {
            return DomDocumentHelper.create_jo0();
        }
        if (args.length == 1 && args[0] is JInputStream) {
            return DomDocumentHelper.create_jo1_1(args[0]);
        }
        if (args.length == 1) {
            return DomDocumentHelper.create_jo1_2(args[0]);
        }
        throw new JException("IllegalArgumentException", "create");
    }

    private static function create_jo0():Document {
        try {
            var factory:DocumentBuilderFactory = DocumentBuilderFactory.newInstance();
            var builder:DocumentBuilder = factory.newDocumentBuilder();
            var document:Document = builder.newDocument();
            return document;
        } catch (e:*) {
            return null;
        }
    }

    private static function create_jo1_1(inputStream:JInputStream):Document {
        try {
            var factory:DocumentBuilderFactory = DocumentBuilderFactory.newInstance();
            var builder:DocumentBuilder = factory.newDocumentBuilder();
            var document:Document = builder.parse(inputStream);
            return document;
        } catch (e:*) {
            throw e;
        }
    }

    private static function create_jo1_2(xmlString:String):Document {
        try {
            var factory:DocumentBuilderFactory = DocumentBuilderFactory.newInstance();
            var builder:DocumentBuilder = factory.newDocumentBuilder();
            var document:Document = builder.parse(new JStringBufferInputStream(xmlString));
            return document;
        } catch (e:*) {
            throw e;
        }
    }
    
    
    }
}

