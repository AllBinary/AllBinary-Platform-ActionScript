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
package org.allbinary.logic.visual.transform.info.dom {
    import java.util.JHashMap;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.data.tree.dom.DomSearchHelper;
    import org.allbinary.data.tree.dom.document.DomDocumentFileHelper;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.visual.transform.info.TransformInfoData;
    import org.allbinary.logic.visual.transform.info.TransformInfoProperties;
    import org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory;
    import org.allbinary.logic.visual.transform.info.TransformInfosData;
    import org.allbinary.string.CommonStrings;
    import org.w3c.dom.Document;
    import org.w3c.dom.Node;
    import org.w3c.dom.NodeList;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;

    public class TransformInfoPropertiesDocument {
        public var logUtil:LogUtil = null;
        private var document:Document = null;

        // Java field initializers run after the base constructor
        private function initFieldsTransformInfoPropertiesDocument():void {
    this.logUtil = LogUtil.getInstance();
    
        }
    

    public function TransformInfoPropertiesDocument(filePath:String) {
        super();
        this.initFieldsTransformInfoPropertiesDocument();
        var xmlFile:AbFile = AbFile.createAbFile(filePath);
        this.document = DomDocumentFileHelper.createDocument(xmlFile);
    }
    

    public function toTransformInfoPropertiesHashMap():JHashMap {
        try {
            var transformInfoPropertiesHashMap:JHashMap = StdUtil.getInstance().createHashMap();
            var transformInfosNode:Node = this.document.getElementsByTagName(TransformInfosData.getInstance().NAME).item(0);
            var transformInfosChildNodeList:NodeList = transformInfosNode.getChildNodes();
            var transformInfoNodeVector:BasicArrayList = DomSearchHelper.getAllNodes(TransformInfoData.getInstance().NAME, transformInfosChildNodeList);
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().VIEW)) {
                this.logUtil.putF("Size: " + String(transformInfoNodeVector.size()), this, "toTransformInfoPropertiesHashMap()");
            }
            var size:int = transformInfoNodeVector.size();
            var node:Node = null;
            var transformInfoProperties:TransformInfoProperties = null;
            for (var index:int = 0; index < size; index++) {
                node = (transformInfoNodeVector.get_(index) as Node);
                transformInfoProperties = TransformInfoPropertiesFactory.getInstance().getInstance1(node);
                transformInfoPropertiesHashMap.put(transformInfoProperties.getName(), transformInfoProperties);
            }
            return transformInfoPropertiesHashMap;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().VIEWERROR)) {
                var commonStrings:CommonStrings = CommonStrings.getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, "toTransformInfoPropertiesHashMap()", e);
            }
            return null;
        }
    }
    }
}

