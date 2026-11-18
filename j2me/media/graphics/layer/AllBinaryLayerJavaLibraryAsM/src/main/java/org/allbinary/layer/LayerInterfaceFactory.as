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
package org.allbinary.layer {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.util.BasicArrayListUtil;
    import java.lang.JInteger;

    public class LayerInterfaceFactory {
    private static var SINGLETON_value:LayerInterfaceFactory;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():LayerInterfaceFactory {
        if (!LayerInterfaceFactory.SINGLETON_set) {
            LayerInterfaceFactory.SINGLETON_set = true;
            LayerInterfaceFactory.SINGLETON_value = new LayerInterfaceFactory();
        }
        return LayerInterfaceFactory.SINGLETON_value;
    }
        public var logUtil:LogUtil = null;
        private var list:BasicArrayList = null;
        private var HASHTABLE_LABEL:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLayerInterfaceFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.list = BasicArrayListUtil.getInstance().getImmutableInstance();
    this.HASHTABLE_LABEL = "Hashtable: ";
        }

        public function LayerInterfaceFactory() {
            super();
            this.initFieldsLayerInterfaceFactory();
        }
    

    public static function getInstance():LayerInterfaceFactory {
        return LayerInterfaceFactory.SINGLETON;
    }
    

    public function init():void {
        this.list = new BasicArrayListD();
    }
    

    public function getNexInstance(hashtable:ABHashtable, x:int, y:int, z:int):AllBinaryLayer {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        this.logUtil.putF(new StringMaker().append(this.HASHTABLE_LABEL).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, commonStrings.GET_INSTANCE);
        var typeInteger:* = (hashtable.get_((Layer.ID as Object)) as *);
        var layerInterfaceFactoryInterface:LayerInterfaceFactoryInterface = (this.list.objectArray[typeInteger.intValue() - 1] as LayerInterfaceFactoryInterface);
        return layerInterfaceFactoryInterface.getNextInstance(hashtable, x, y, z);
    }
    

    public function add(layerInterfaceFactoryInterface:LayerInterfaceFactoryInterface):void {
        this.list.add(layerInterfaceFactoryInterface);
    }
    }
}

