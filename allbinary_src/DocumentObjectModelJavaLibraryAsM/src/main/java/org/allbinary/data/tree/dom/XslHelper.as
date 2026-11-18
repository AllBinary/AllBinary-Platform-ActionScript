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
package org.allbinary.data.tree.dom {
    import java.io.JByteArrayOutputStream;
    import java.io.JFile;
    import java.io.JOutputStream;
    import java.io.JStringBufferInputStream;
    import org.allbinary.data.tree.dom.document.XmlDocumentHelper;
    import org.w3c.dom.Document;

    //import org.allbinary.data.tree.dom.document.DomDocumentHelper;
    public class XslHelper {
    private static var instance_value:XslHelper;
    private static var instance_set:Boolean = false;
    private static function get instance():XslHelper {
        if (!XslHelper.instance_set) {
            XslHelper.instance_set = true;
            XslHelper.instance_value = new XslHelper();
        }
        return XslHelper.instance_value;
    }
    

    public static function getInstance():XslHelper {
        return XslHelper.instance;
    }
    

    public function XslHelper() {
        super();
    }
    

    public function translate(xsltStreamSource:StreamSource, xmlStreamSource:StreamSource, streamResult:StreamResult):OutputStream {
        try {
            var transformerFactory:TransformerFactory = TransformerFactory.newInstance();
            var transformer:Transformer = transformerFactory.newTransformer(xsltStreamSource);
            transformer.transform(xmlStreamSource, streamResult);
            return streamResult.getOutputStream();
        } catch (e:*) {
            throw e;
        }
    }
    

    public function translate(resolver:URIResolver, xsltStreamSource:StreamSource, xmlStreamSource:StreamSource, streamResult:StreamResult):OutputStream {
        try {
            var tFactory:TransformerFactory = TransformerFactory.newInstance();
            tFactory.setURIResolver(resolver);
            var transformer:Transformer = tFactory.newTransformer(xsltStreamSource);
            transformer.transform(xmlStreamSource, streamResult);
            return streamResult.getOutputStream();
        } catch (e:*) {
            throw e;
        }
    }
    

    public function translateTemplate(templates:Templates, xmlStreamSource:StreamSource):String {
        try {
            var outputStream:JByteArrayOutputStream = new JByteArrayOutputStream();
            var streamResult:StreamResult = new StreamResult(outputStream);
            templates.newTransformer().transform(xmlStreamSource, streamResult);
            return streamResult.getOutputStream().toString();
        } catch (e:*) {
            throw e;
        }
    }
    

    public function translate(xsltStreamSource:StreamSource, xmlDocument:Document):String {
        try {
            var outputStream:JByteArrayOutputStream = new JByteArrayOutputStream();
            return this.translate(xsltStreamSource, new StreamSource(new StringBufferInputStream(XmlDocumentHelper.toString1(xmlDocument))), new StreamResult(outputStream)).toString();
        } catch (e:*) {
            throw e;
        }
    }
    

    public function translate(xsltStreamSource:StreamSource, xmlStreamSource:StreamSource):String {
        try {
            var outputStream:JByteArrayOutputStream = new JByteArrayOutputStream();
            return this.translate(xsltStreamSource, xmlStreamSource, new StreamResult(outputStream)).toString();
        } catch (e:*) {
            throw e;
        }
    }
    

    public function translate(resolver:URIResolver, xsltStreamSource:StreamSource, xmlStreamSource:StreamSource):String {
        try {
            var outputStream:JByteArrayOutputStream = new JByteArrayOutputStream();
            return this.translate(resolver, xsltStreamSource, xmlStreamSource, new StreamResult(outputStream)).toString();
        } catch (e:*) {
            throw e;
        }
    }
    

    public function export(outputFile:JFile, xsltFilePath:String, xmlDocument:Document):void {
        try {
            outputFile.createNewFile();
            this.translate(new StreamSource(xsltFilePath), new StreamSource(new StringBufferInputStream(XmlDocumentHelper.toString1(xmlDocument))), new StreamResult(outputFile));
        } catch (e:*) {
            throw e;
        }
    }
    }
}

