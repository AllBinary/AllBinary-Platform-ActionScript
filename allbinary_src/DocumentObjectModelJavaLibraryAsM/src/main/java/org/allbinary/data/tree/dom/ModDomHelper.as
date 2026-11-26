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
    import java.util.JHashMap;
    import java.util.JSet;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.logic.java.object.clazz.ClassUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonSeps;
    import org.w3c.dom.Document;
    import org.w3c.dom.Node;
    import java.lang.JInteger;

    public class ModDomHelper {
    

    public function ModDomHelper() {
        super();
    }
    

    public static function createTextNode(document:Document, name:String, text:String):Node {
        var newValueNode:Node = document.createElement(name);
        var newValueTextNode:Node = document.createTextNode(text);
        newValueNode.appendChild(newValueTextNode);
        return newValueNode;
    }
    

    public static function createValueNode(document:Document, text:String):Node {
        return ModDomHelper.createTextNode(document, DomData.VALUE, text);
    }
    

    public static function createNameNode(document:Document, text:String):Node {
        return ModDomHelper.createTextNode(document, DomData.NAME, text);
    }
    

    public static function createIndexNode(document:Document, index:int):Node {
        return ModDomHelper.createTextNode(document, DomData.INDEX, index.toString());
    }
    

    public static function createNameValueNodes(...args):Node {
        if (args.length == 4 && args[0] is Document && args[1] is String && args[2] is String && args[3] is String) {
            return ModDomHelper.createNameValueNodes_jo4_1(args[0], args[1], args[2], args[3]);
        }
        if (args.length == 3 && args[0] is Document && args[1] is String && args[2] is String) {
            return ModDomHelper.createNameValueNodes_jo3_1(args[0], args[1], args[2]);
        }
        if (args.length == 3 && args[0] is Document && args[1] is String && args[2] is JHashMap) {
            return ModDomHelper.createNameValueNodes_jo3_2(args[0], args[1], args[2]);
        }
        if (args.length == 3) {
            return ModDomHelper.createNameValueNodes_jo3_3(args[0], args[1], args[2]);
        }
        if (args.length == 4) {
            return ModDomHelper.createNameValueNodes_jo4_2(args[0], args[1], args[2], args[3]);
        }
        throw new JException("IllegalArgumentException", "createNameValueNodes");
    }

    private static function createNameValueNodes_jo4_1(document:Document, elementName:String, nameText:String, valueText:String):Node {
        var newNode:Node = document.createElement(elementName);
        newNode.appendChild(ModDomHelper.createNameNode(document, nameText));
        newNode.appendChild(ModDomHelper.createValueNode(document, valueText));
        return newNode;
    }

    private static function createNameValueNodes_jo3_1(document:Document, elementNameAndNameText:String, valueText:String):Node {
        var newNode:Node = ModDomHelper.createNameValueNodes(document, elementNameAndNameText, elementNameAndNameText, valueText);
        return newNode;
    }

    private static function createNameValueNodes_jo3_2(document:Document, rootNode:String, hashMap:JHashMap):Node {
        var node:Node = document.createElement(rootNode);
        return ModDomHelper.createNameValueNodes(document, node, hashMap);
    }

    private static function createNameValueNodes_jo3_3(document:Document, node:Node, hashMap:JHashMap):Node {
        var stringUtil:StringUtil = StringUtil.getInstance();
        var keySet:JSet = hashMap.keySet();
        var keyArray:Vector.<Object> = keySet.toArray();
        var size:int = keyArray.length;
        for (var i:int = 0; i < size; i++) {
            var objectKey:Object = keyArray[i];
            var name:String = (objectKey as String);
            var anyType:Object = (hashMap.get_(objectKey) as Object);
            if (anyType == null) {
                value = stringUtil.EMPTY_STRING;
                node.appendChild(ModDomHelper.createNameValueNodes(document, name, value));
            } else if ((anyType is String)) {
                var value:String = stringUtil.getNonNull((anyType as String));
                node.appendChild(ModDomHelper.createNameValueNodes(document, name, value));
            } else if ((anyType is JHashMap)) {
                node.appendChild(ModDomHelper.createNameValueNodes(document, name, hashMap));
            } else {
                throw new JException("Exception", "HashMap value is the wrong instance and is: " + ClassUtil.viewAll(anyType, CommonSeps.getInstance().NEW_LINE));
            }
        }
        return node;
    }

    private static function createNameValueNodes_jo4_2(document:Document, rootNodeName:String, duplicateNodeName:String, valueVector:BasicArrayList):Node {
        var stringUtil:StringUtil = StringUtil.getInstance();
        var node:Node = document.createElement(rootNodeName);
        var size:int = valueVector.size();
        for (var i:int = 0; i < size; i++) {
            var value:String = stringUtil.getNonNull((valueVector.get_(i) as String));
            node.appendChild(ModDomHelper.createNameValueNodes(document, duplicateNodeName, value));
        }
        return node;
    }
    
    

    public static function createNameValueIndexNodes(...args):Node {
        if (args.length == 4 && args[0] is Document && args[1] is String && args[2] is int && args[3] is String) {
            return ModDomHelper.createNameValueIndexNodes_jo4_1(args[0], args[1], args[2], args[3]);
        }
        if (args.length == 4) {
            return ModDomHelper.createNameValueIndexNodes_jo4_2(args[0], args[1], args[2], args[3]);
        }
        throw new JException("IllegalArgumentException", "createNameValueIndexNodes");
    }

    private static function createNameValueIndexNodes_jo4_1(document:Document, elementNameAndNameText:String, index:int, valueText:String):Node {
        var newNode:Node = ModDomHelper.createNameValueNodes(document, elementNameAndNameText, valueText);
        newNode.appendChild(ModDomHelper.createIndexNode(document, index));
        return newNode;
    }

    private static function createNameValueIndexNodes_jo4_2(document:Document, rootNodeName:String, duplicateNodeName:String, valueVector:BasicArrayList):Node {
        var stringUtil:StringUtil = StringUtil.getInstance();
        var node:Node = document.createElement(rootNodeName);
        var size:int = valueVector.size();
        for (var index:int = 0; index < size; index++) {
            var value:String = stringUtil.getNonNull((valueVector.get_(index) as String));
            node.appendChild(ModDomHelper.createNameValueIndexNodes(document, duplicateNodeName, index, value));
        }
        return node;
    }
    
    
    
    
    

    public static function createNodeWithValueNodes(...args):Node {
        if (args.length == 3 && args[0] is Document && args[1] is String && args[2] is JHashMap) {
            return ModDomHelper.createNodeWithValueNodes_jo3_1(args[0], args[1], args[2]);
        }
        if (args.length == 3) {
            return ModDomHelper.createNodeWithValueNodes_jo3_2(args[0], args[1], args[2]);
        }
        throw new JException("IllegalArgumentException", "createNodeWithValueNodes");
    }

    private static function createNodeWithValueNodes_jo3_1(document:Document, rootNode:String, hashMap:JHashMap):Node {
        var node:Node = document.createElement(rootNode);
        return ModDomHelper.createNodeWithValueNodes(document, node, hashMap);
    }

    private static function createNodeWithValueNodes_jo3_2(document:Document, node:Node, hashMap:JHashMap):Node {
        var stringUtil:StringUtil = StringUtil.getInstance();
        var keySet:JSet = hashMap.keySet();
        var keyArray:Vector.<Object> = keySet.toArray();
        var size:int = keyArray.length;
        for (var i:int = 0; i < size; i++) {
            var name:String = (keyArray[i] as String);
            var anyType:Object = (hashMap.get_(name) as Object);
            var value:String = stringUtil.getNonNull((anyType as String));
            node.appendChild(ModDomHelper.createTextNode(document, name, value));
        }
        return node;
    }
    
    }
}

