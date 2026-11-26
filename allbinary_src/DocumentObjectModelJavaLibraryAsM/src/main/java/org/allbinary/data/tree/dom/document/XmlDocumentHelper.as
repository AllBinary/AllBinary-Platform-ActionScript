/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
    import java.io.JByteArrayOutputStream;
    import java.io.JStringReader;
    import java.io.JStringWriter;
    import java.io.JWriter;
    import javax.xml.parsers.DocumentBuilderFactory;
    import javax.xml.transform.OutputKeys;
    import javax.xml.transform.Transformer;
    import javax.xml.transform.TransformerConfigurationException;
    import javax.xml.transform.TransformerFactory;
    import javax.xml.transform.dom.DOMSource;
    import javax.xml.transform.stream.StreamResult;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.java.characters.CharacterSetData;
    import org.w3c.dom.Document;
    import org.xml.sax.InputSource;

    public class XmlDocumentHelper {
    private static var instance_value:XmlDocumentHelper;
    private static var instance_set:Boolean = false;
    private static function get instance():XmlDocumentHelper {
        if (!XmlDocumentHelper.instance_set) {
            XmlDocumentHelper.instance_set = true;
            XmlDocumentHelper.instance_value = new XmlDocumentHelper();
        }
        return XmlDocumentHelper.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var INDENT_NUMBER:String = null;
        private var indent:int = 0;
        private var ignoreDeclaration:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsXmlDocumentHelper():void {
    this.logUtil = LogUtil.getInstance();
    this.INDENT_NUMBER = "indent-number";
    this.indent = 0;
    this.ignoreDeclaration = false;
        }
    

    public static function getInstance():XmlDocumentHelper {
        return XmlDocumentHelper.instance;
    }
    

    public function XmlDocumentHelper() {
        super();
        this.initFieldsXmlDocumentHelper();
        this.init(4, true);
    }
    

    public function init(indent:int, ignoreDeclaration:Boolean):void {
        this.indent = indent;
        this.ignoreDeclaration = ignoreDeclaration;
    }
    

    private function createTransformer(...args):Transformer {
        if (args.length == 2) {
            return this.createTransformer_jo2(args[0], args[1]);
        }
        if (args.length == 0) {
            return this.createTransformer_jo0();
        }
        throw new JException("IllegalArgumentException", "createTransformer");
    }

    private function createTransformer_jo2(indent:int, ignoreDeclaration:Boolean):Transformer {
        var booleanFactory:BooleanFactory = BooleanFactory.getInstance();
        var transformerFactory:TransformerFactory = TransformerFactory.newInstance();
        transformerFactory.setAttribute(this.INDENT_NUMBER, indent);
        var transformer:Transformer = transformerFactory.newTransformer();
        transformer.setOutputProperty(OutputKeys.ENCODING, CharacterSetData.getInstance().UTF_8);
        transformer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, (ignoreDeclaration ? booleanFactory.YES : booleanFactory.NO));
        transformer.setOutputProperty(OutputKeys.INDENT, booleanFactory.YES);
        return transformer;
    }

    private function createTransformer_jo0():Transformer {
        var currentIndent:int = 0;
        var currentIgnoreDeclaration:Boolean = false;
        {
            currentIndent = this.indent;
            currentIgnoreDeclaration = this.ignoreDeclaration;
        }
        return this.createTransformer(currentIndent, currentIgnoreDeclaration);
    }
    
    

    public function format(xmlString:String):String {
        return this.formatWithTransformer(xmlString, this.createTransformer());
    }
    

    public function formatWithTransformer(xmlString:String, transformer:Transformer):String {
        var src:InputSource = new InputSource(new JStringReader(xmlString));
        var document:Document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(src);
        var out:JWriter = new JStringWriter();
        transformer.transform(new DOMSource(document), new StreamResult(out));
        return out.toString();
    }
    

    public static function toString1(document:Document):String {
        try {
            var domSource:DOMSource = new DOMSource(document);
            var byteArrayOutputStream:JByteArrayOutputStream = new JByteArrayOutputStream();
            var streamResult:StreamResult = new StreamResult(byteArrayOutputStream);
            var copyTransformerFactory:TransformerFactory = TransformerFactory.newInstance();
            var copyTransformer:Transformer = copyTransformerFactory.newTransformer();
            copyTransformer.transform(domSource, streamResult);
            return byteArrayOutputStream.toString();
        } catch (e:*) {
            throw e;
        }
    }
    }
}

