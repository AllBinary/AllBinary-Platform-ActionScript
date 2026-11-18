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
package org.allbinary.game.part {
    import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory;
    import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.util.BasicArrayListUtil;

    public class MakeCountedPartsSingletonArrayFactory {
    private static var instance_value:MakeCountedPartsSingletonArrayFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():MakeCountedPartsSingletonArrayFactory {
        if (!MakeCountedPartsSingletonArrayFactory.instance_set) {
            MakeCountedPartsSingletonArrayFactory.instance_set = true;
            MakeCountedPartsSingletonArrayFactory.instance_value = new MakeCountedPartsSingletonArrayFactory();
        }
        return MakeCountedPartsSingletonArrayFactory.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsMakeCountedPartsSingletonArrayFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.list = BasicArrayListUtil.getInstance().getImmutableInstance();
        }

        public function MakeCountedPartsSingletonArrayFactory() {
            super();
            this.initFieldsMakeCountedPartsSingletonArrayFactory();
        }
    

    public static function getInstance():MakeCountedPartsSingletonArrayFactory {
        return MakeCountedPartsSingletonArrayFactory.instance;
    }
    

    public function getUpdated(partInterfaceArray:Vector.<PartInterface>):Vector.<PartInterface> {
        this.list = new BasicArrayListD();
        for (var index:int = 0; index < partInterfaceArray.length; index++) {
            this.list.add(partInterfaceArray[index]);
        }
        var countedBasicArrayList:BasicArrayList = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList();
        var layerInterfaceFactoryInterface:CountedPickedUpLayerInterfaceFactory = null;
        var size:int = countedBasicArrayList.size();
        for (index = 0; index < size; index++) {
            layerInterfaceFactoryInterface = (countedBasicArrayList.objectArray[index] as CountedPickedUpLayerInterfaceFactory);
            this.list.add(new CountedLayerInterfaceFactoryPart(0, layerInterfaceFactoryInterface));
        }
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("Total Parts: ");
        stringBuffer.appendint(this.list.size());
        stringBuffer.append(" Counted: ");
        stringBuffer.appendint(countedBasicArrayList.size());
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.GET_INSTANCE);
        var newPartInterfaceArray:Vector.<PartInterface> = new Vector.<PartInterface>(this.list.size());
        var newSize:int = newPartInterfaceArray.length;
        for (index = 0; index < newSize; index++) {
            newPartInterfaceArray[index] = (this.list.get_(index) as PartInterface);
        }
        return newPartInterfaceArray;
    }
    }
}

