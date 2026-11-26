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
package org.allbinary.logic.visual.transform.info {
    import org.allbinary.data.tree.dom.DomNodeHelper;
    import org.allbinary.data.tree.dom.DomSearchHelper;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonLabels;
    import org.w3c.dom.Attr;
    import org.w3c.dom.NamedNodeMap;
    import org.w3c.dom.Node;
    import org.w3c.dom.NodeList;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;

    public class TransformInfoPropertiesFactory {
    private static var instance_value:TransformInfoPropertiesFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():TransformInfoPropertiesFactory {
        if (!TransformInfoPropertiesFactory.instance_set) {
            TransformInfoPropertiesFactory.instance_set = true;
            TransformInfoPropertiesFactory.instance_value = new TransformInfoPropertiesFactory();
        }
        return TransformInfoPropertiesFactory.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsTransformInfoPropertiesFactory():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public static function getInstance():TransformInfoPropertiesFactory {
        return TransformInfoPropertiesFactory.instance;
    }
    

    public function TransformInfoPropertiesFactory() {
        super();
        this.initFieldsTransformInfoPropertiesFactory();
    }
    

    public function getInstance1(node:Node):TransformInfoProperties {
        var transformInfoChildNodeList:NodeList = node.getChildNodes();
        var transformInfoData:TransformInfoData = TransformInfoData.getInstance();
        var attributes:NamedNodeMap = node.getAttributes();
        var attrNode:Attr = (attributes.getNamedItem(transformInfoData.NAME) as Attr);
        var name:String = attrNode.getValue();
        if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().VIEW)) {
            this.logUtil.putF(CommonLabels.getInstance().NEXT + " View Name: " + name, this, "toTransformInfoPropertiesHashMap()");
        }
        var labelNode:Node = DomSearchHelper.getNodeNoThrow(transformInfoData.LABEL, transformInfoChildNodeList);
        var label:String = DomNodeHelper.getTextNodesValue(labelNode);
        if (label == null) {
            label = name;
        }
        var descriptionNode:Node = DomSearchHelper.getNode(transformInfoData.DESCRIPTION, transformInfoChildNodeList);
        var description:String = DomNodeHelper.getTextNodesValue(descriptionNode);
        var objectFileNode:Node = DomSearchHelper.getNode(transformInfoData.OBJECTFILENAME, transformInfoChildNodeList);
        var objectFileName:String = DomNodeHelper.getTextNodeValue(objectFileNode);
        var objectConfigFileNode:Node = DomSearchHelper.getNode(transformInfoData.OBJECTCONFIGFILENAME, transformInfoChildNodeList);
        var objectConfigFileName:String = DomNodeHelper.getTextNodeValue(objectConfigFileNode);
        var templateFileNode:Node = DomSearchHelper.getNode(transformInfoData.TEMPLATEFILENAME, transformInfoChildNodeList);
        var templateFileName:String = DomNodeHelper.getTextNodeValue(templateFileNode);
        var transformInfoProperties:TransformInfoProperties = new TransformInfoProperties(name, label, description, objectFileName, objectConfigFileName, templateFileName);
        return transformInfoProperties;
    }
    }
}

