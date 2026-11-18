// Generated Code Do Not Modify
package org.allbinary.layer {
    import org.allbinary.TsUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.thread.SynchObject;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.logic.ABSystemWrapper;

    public class LayerManager {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var systemWrapper:ABSystemWrapper = null;
        private var tsUtil:TsUtil = null;
        private var layerManagerLogging:LayerManagerLoggingBase = null;
        private var list:BasicArrayList = null;
        private var anyType:SynchObject = null;

        // Java field initializers run after the base constructor
        private function initFieldsLayerManager():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.systemWrapper = ABSystemWrapper.getInstance();
    this.tsUtil = TsUtil.getInstance();
    
    this.list = new BasicArrayListD();
    this.anyType = new SynchObject();
        }
    

    public function LayerManager(layerManagerLogging:LayerManagerLoggingBase) {
        super();
        this.initFieldsLayerManager();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.layerManagerLogging = layerManagerLogging;
    }
    

    public function contains(layerInterface:AllBinaryLayer):Boolean {
        return this.list.contains(layerInterface);
    }
    

    public function update(layerInterface:AllBinaryLayer):void {
        var had:Boolean = this.list.remove(layerInterface);
        if (had) {
            var nextLayerInterface:AllBinaryLayer = null;
            var size:int = this.list.size();
            for (var index:int = 0; index < size; index++) {
                nextLayerInterface = (this.list.get_(index) as AllBinaryLayer);
                if (layerInterface.getZP() > nextLayerInterface.getZP()) {
                    this.list.addAt(index, layerInterface);
                    return;
                }
            }
            this.list.add(layerInterface);
        }
    }
    

    public function insert(layerInterface:AllBinaryLayer):void {
        var nextLayerInterface:AllBinaryLayer = null;
        var size:int = this.list.size();
        for (var index:int = 0; index < size; index++) {
            nextLayerInterface = (this.list.get_(index) as AllBinaryLayer);
            if (layerInterface.getZP() > nextLayerInterface.getZP()) {
                this.appendAt(layerInterface, index);
                return;
            }
        }
        this.append(layerInterface);
    }
    

    public function append(layerInterface:AllBinaryLayer):void {
        this.layerManagerLogging.append(layerInterface);
        this.list.add(layerInterface);
    }
    

    public function appendAt(layerInterface:AllBinaryLayer, index:int):void {
        this.layerManagerLogging.appendAt(layerInterface, index);
        this.list.addAt(index, layerInterface);
    }
    

    public function remove(layerInterface:AllBinaryLayer):void {
        {
            this.layerManagerLogging.remove(layerInterface);
            var result:Boolean = this.list.remove(layerInterface);
            this.layerManagerLogging.removeResult(this, layerInterface, result);
        }
    }
    

    public function getLayerAt(index:int):Layer {
        return (this.list.objectArray[index] as Layer);
    }
    

    public function getSize():int {
        return this.list.size();
    }
    

    public function cleanup():void {
        {
            this.list.clear();
            this.layerManagerLogging.clear();
            this.tsUtil.gc();
            this.tsUtil.gc();
        }
    }
    

    public function paint(g:Graphics, x:int, y:int):void {
        {
            var comp:Layer = null;
            for (var index:int = this.list.size(); --index >= 0; ) {
                comp = (this.list.objectArray[index] as Layer);
                if (comp != null && comp.isVisible()) {
                    comp.paint(g);
                }
            }
        }
    }
    }
}

