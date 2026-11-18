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
    import org.allbinary.TsUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonSeps;
    import java.lang.JInteger;

    public class LayerManagerLogging extends LayerManagerLoggingBase {
    private static var instance_value:LayerManagerLogging;
    private static var instance_set:Boolean = false;
    private static function get instance():LayerManagerLogging {
        if (!LayerManagerLogging.instance_set) {
            LayerManagerLogging.instance_set = true;
            LayerManagerLogging.instance_value = new LayerManagerLogging();
        }
        return LayerManagerLogging.instance_value;
    }
    private static var removeFailed:Boolean = false;
        public var logUtil:LogUtil = null;
        private var stringBuilder:StringMaker = null;
        private var APPEND:String = null;
        private var APPEND_:String = null;
        private var _AT_:String = null;
        private var ATTEMPT_REMOVE_:String = null;
        private var REMOVE_:String = null;
        private var REMOVE:String = null;
        private var DID_NOT_REMOVE:String = null;
        private var CLEAR:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLayerManagerLogging():void {
    this.logUtil = LogUtil.getInstance();
    this.stringBuilder = new StringMaker();
    this.APPEND = "append";
    this.APPEND_ = " append: ";
    this._AT_ = " at: ";
    this.ATTEMPT_REMOVE_ = " Remove Attempt: ";
    this.REMOVE_ = " Remove: ";
    this.REMOVE = "remove";
    this.DID_NOT_REMOVE = " Did not remove: ";
    this.CLEAR = " Clear List";
        }

        public function LayerManagerLogging() {
            super();
            this.initFieldsLayerManagerLogging();
        }
    

    public static function getInstance():LayerManagerLogging {
        return LayerManagerLogging.instance;
    }
    

    override public function append(layerInterface:AllBinaryLayer):void {
        this.stringBuilder.delete_(0, this.stringBuilder.length());
        this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.APPEND_).append(layerInterface.getName()).toString(), this, this.APPEND);
    }
    

    override public function appendAt(layerInterface:AllBinaryLayer, index:int):void {
        this.stringBuilder.delete_(0, this.stringBuilder.length());
        this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.APPEND_).append(layerInterface.getName()).append(this._AT_).appendint(index).toString(), this, this.APPEND);
    }
    

    override public function remove(layerInterface:AllBinaryLayer):void {
        if (layerInterface == null) {
            this.stringBuilder.delete_(0, this.stringBuilder.length());
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.ATTEMPT_REMOVE_).append(StringUtil.getInstance().toString1(layerInterface)).toString(), this, this.REMOVE);
        } else {
            this.stringBuilder.delete_(0, this.stringBuilder.length());
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.ATTEMPT_REMOVE_).append(layerInterface.getName()).toString(), this, this.REMOVE);
        }
    }
    

    override public function removeResult(layerManager:LayerManager, layerInterface:AllBinaryLayer, result:Boolean):void {
        if (layerInterface == null) {
            this.stringBuilder.delete_(0, this.stringBuilder.length());
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.REMOVE_).append(StringUtil.getInstance().toString1(layerInterface)).toString(), this, this.REMOVE);
        } else if (result) {
            if (LayerManagerLogging.removeFailed) {
                this.stringBuilder.delete_(0, this.stringBuilder.length());
                this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.REMOVE_).append(layerInterface.getName()).toString(), this, this.REMOVE);
            }
        } else {
            this.stringBuilder.delete_(0, this.stringBuilder.length());
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.DID_NOT_REMOVE).append(layerInterface.getName()).toString(), this, this.REMOVE);
            LayerManagerLogging.removeFailed = true;
        }
    }
    

    private function log(layerManager:LayerManager):void {
        this.stringBuilder.delete_(0, this.stringBuilder.length());
        var size:int = layerManager.getSize();
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        this.stringBuilder.append(JInteger.toHexString(TsUtil.getInstance().hashCode(layerManager))).append(commonSeps.COLON_SEP);
        this.stringBuilder.appendint(size).append(commonSeps.COLON_SEP);
        var allBinaryLayer:AllBinaryLayer = null;
        for (var index:int = 0; index < size; index++) {
            allBinaryLayer = ((layerManager.getLayerAt(index) as AllBinaryLayer));
            this.stringBuilder.append(allBinaryLayer.getName()).append(commonSeps.COMMA);
        }
        this.logUtil.putF(this.stringBuilder.toString(), this, this.REMOVE);
    }
    

    override public function clear():void {
        this.stringBuilder.delete_(0, this.stringBuilder.length());
        this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.CLEAR).toString(), this, this.CLEAR);
    }
    }
}

