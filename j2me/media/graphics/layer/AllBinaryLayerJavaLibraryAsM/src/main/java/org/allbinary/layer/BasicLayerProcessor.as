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
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class BasicLayerProcessor {
    private static var NULL_LAYER_PROCESSOR_value:BasicLayerProcessor;
    private static var NULL_LAYER_PROCESSOR_set:Boolean = false;
    public static function get NULL_LAYER_PROCESSOR():BasicLayerProcessor {
        if (!BasicLayerProcessor.NULL_LAYER_PROCESSOR_set) {
            BasicLayerProcessor.NULL_LAYER_PROCESSOR_set = true;
            BasicLayerProcessor.NULL_LAYER_PROCESSOR_value = new BasicLayerProcessor();
        }
        return BasicLayerProcessor.NULL_LAYER_PROCESSOR_value;
    }
        public var logUtil:LogUtil = null;
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicLayerProcessor():void {
    this.logUtil = LogUtil.getInstance();
    this.list = new BasicArrayListD();
        }
    

    public function BasicLayerProcessor() {
        super();
        this.initFieldsBasicLayerProcessor();
    }
    

    public function add(layerInterface:AllBinaryLayer):void {
        if (!this.list.contains(layerInterface)) {
            this.list.add(layerInterface);
        }
    }
    

    public function process(allBinaryLayerManager:AllBinaryLayerManager):void {
        throw new JException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED);
    }
    

    public function getList():BasicArrayList {
        return this.list;
    }
    }
}

