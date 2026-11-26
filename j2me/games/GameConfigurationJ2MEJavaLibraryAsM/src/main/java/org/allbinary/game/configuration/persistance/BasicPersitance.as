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
package org.allbinary.game.configuration.persistance {
    import javax.microedition.rms.RecordStore;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.persistance.PlatformRecordIdUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import java.lang.JInteger;

    public class BasicPersitance {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        public var persistanceStrings:PersistanceStrings = null;
        private var platformRecordIdUtil:PlatformRecordIdUtil = null;
        private var recordId:String = null;
        public var valueList:BasicArrayList = null;
        public var idList:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicPersitance():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.persistanceStrings = PersistanceStrings.getInstance();
    this.platformRecordIdUtil = PlatformRecordIdUtil.getInstance();
    
    this.valueList = new BasicArrayListD();
    this.idList = new BasicArrayListD();
        }
    

    public function BasicPersitance(recordId:String) {
        super();
        this.initFieldsBasicPersitance();
        this.recordId = recordId;
    }
    

    public function deleteRecoreStore(abeClientInformation:AbeClientInformationInterface):void {
        RecordStore.deleteRecordStore(this.getRecordId(abeClientInformation));
    }
    

    public function deleteAll(abeClientInformation:AbeClientInformationInterface):void {
        var size:int = this.idList.size();
        for (var index:int = 0; index < size; index++) {
            var integer:* = (this.idList.objectArray[index] as *);
            this.delete_(abeClientInformation, int(integer));
        }
        this.clear();
    }
    

    public function delete_(abeClientInformation:AbeClientInformationInterface, deleteId:int):void {
        var recordStore:RecordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            this.logUtil.putF(new StringMaker().append(this.persistanceStrings.DELETING_WITH_ID).appendint(deleteId).toString(), this, this.commonStrings.delete_);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            recordStore.deleteRecord(deleteId);
        } catch (e:*) {
            throw e;
        } finally {
            if (recordStore != null) {
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.delete_);
                recordStore.closeRecordStore();
            }
        }
    }
    

    public function getRecordId(abeClientInformation:AbeClientInformationInterface):String {
        return this.platformRecordIdUtil.getRecordId(abeClientInformation, this.recordId);
    }
    

    public function getList():BasicArrayList {
        return this.valueList;
    }
    

    public function getIds():BasicArrayList {
        return this.idList;
    }
    

    public function clear():void {
        this.valueList.clear();
        this.idList.clear();
    }
    }
}

