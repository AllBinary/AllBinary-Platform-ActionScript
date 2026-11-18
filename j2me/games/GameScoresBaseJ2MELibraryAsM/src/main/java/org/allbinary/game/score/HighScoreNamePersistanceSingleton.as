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
package org.allbinary.game.score {
    import java.io.JByteArrayInputStream;
    import java.io.JByteArrayOutputStream;
    import java.io.JDataInputStream;
    import java.io.JDataOutputStream;
    import org.allbinary.TsUtil;
    import org.allbinary.game.GameInfo;
    import org.allbinary.game.configuration.persistance.NullRecordComparator;
    import org.allbinary.game.configuration.persistance.NullRecordFilter;
    import org.allbinary.game.configuration.persistance.NullRecordStore;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.java.exception.ExceptionUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.persistance.PlatformRecordIdUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import java.lang.JInteger;

    public class HighScoreNamePersistanceSingleton {
    private static var SINGLETON_value:HighScoreNamePersistanceSingleton;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():HighScoreNamePersistanceSingleton {
        if (!HighScoreNamePersistanceSingleton.SINGLETON_set) {
            HighScoreNamePersistanceSingleton.SINGLETON_set = true;
            HighScoreNamePersistanceSingleton.SINGLETON_value = new HighScoreNamePersistanceSingleton();
        }
        return HighScoreNamePersistanceSingleton.SINGLETON_value;
    }
        public var logUtil:LogUtil = null;
        private var tsUtil:TsUtil = null;
        private var commonStrings:CommonStrings = null;
        private var platformRecordIdUtil:PlatformRecordIdUtil = null;
        private var RECORD_ID:String = null;
        private var name:String = null;
        private var nameBasicArrayList:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsHighScoreNamePersistanceSingleton():void {
    this.logUtil = LogUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.platformRecordIdUtil = PlatformRecordIdUtil.getInstance();
    this.RECORD_ID = "_SN";
    this.name = StringUtil.getInstance().EMPTY_STRING;
    this.nameBasicArrayList = new BasicArrayListD();
        }

        public function HighScoreNamePersistanceSingleton() {
            super();
            this.initFieldsHighScoreNamePersistanceSingleton();
        }
    

    public static function getInstance():HighScoreNamePersistanceSingleton {
        return HighScoreNamePersistanceSingleton.SINGLETON;
    }
    

    public function clear():void {
        this.name = StringUtil.getInstance().EMPTY_STRING;
    }
    

    public function deleteAll(abeClientInformation:AbeClientInformationInterface, gameInfo:GameInfo):void {
        var size:int = this.nameBasicArrayList.size();
        for (var index:int = 0; index < size; index++) {
            var integer:* = (this.nameBasicArrayList.objectArray[index] as *);
            this.delete_(abeClientInformation, gameInfo, integer.intValue());
        }
        this.clear();
    }
    

    private function getRecordId(abeClientInformation:AbeClientInformationInterface):String {
        return this.platformRecordIdUtil.getRecordId(abeClientInformation, this.RECORD_ID);
    }
    

    public function delete_(abeClientInformation:AbeClientInformationInterface, gameInfo:GameInfo, deleteId:int):void {
        var recordStore:RecordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            this.logUtil.putF(new StringMaker().append("Deleting: ").appendint(deleteId).toString(), this, this.commonStrings.delete_);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            recordStore.deleteRecord(deleteId);
        } catch (e:*) {
            throw e;
        } finally {
            if (recordStore != null) {
                PreLogUtil.put("Closing RecordStore", this, this.commonStrings.delete_);
                recordStore.closeRecordStore();
            }
        }
    }
    

    public function getIds():BasicArrayList {
        return this.nameBasicArrayList;
    }
    

    public function load(abeClientInformation:AbeClientInformationInterface, gameInfo:GameInfo):String {
        var recordStore:RecordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            if (this.name == StringUtil.getInstance().EMPTY_STRING) {
                var LOADING_ID:String = "Loading id: ";
                recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
                var recordEnum:RecordEnumeration = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
                var smallIntegerSingletonFactory:SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
                var recordAsBytes:Vector.<int> = null;
                var byteArrayInputStream:ByteArrayInputStream = null;
                var inputStream:DataInputStream = null;
                while (recordEnum.hasNextElement()) {
                    var id:int = recordEnum.nextRecordId();
                    this.logUtil.putF(new StringMaker().append(LOADING_ID).appendint(id).toString(), this, this.commonStrings.LOAD);
                    recordAsBytes = this.tsUtil.getRecord(recordStore, id);
                    byteArrayInputStream = new ByteArrayInputStream(recordAsBytes);
                    inputStream = new DataInputStream(byteArrayInputStream);
                    while (inputStream.available() > 0) {
                        this.name = inputStream.readUTF();
                    }
                    this.nameBasicArrayList.add(smallIntegerSingletonFactory.getAt(id));
                }
            }
        } catch (e:*) {
            this.save(abeClientInformation, gameInfo, this.name);
            this.logUtil.putF(new StringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(ExceptionUtil.getInstance().getStackTrace(e)).toString(), this, this.commonStrings.LOAD);
        } finally {
            try {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.LOAD);
                    recordStore.closeRecordStore();
                }
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.LOAD, e);
            }
        }
        return this.name;
    }
    

    public function save(abeClientInformation:AbeClientInformationInterface, gameInfo:GameInfo, name:String):void {
        var recordStore:RecordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            this.logUtil.putF(new StringMaker().append("Saving: ").append(name).toString(), this, this.commonStrings.SAVE);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            var byteArrayOutputStream:JByteArrayOutputStream = new JByteArrayOutputStream();
            var outputStream:DataOutputStream = new DataOutputStream(byteArrayOutputStream);
            outputStream.writeUTF(name);
            var savedGameBytes:Vector.<int> = byteArrayOutputStream.toByteArray();
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length);
            this.name = name;
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.SAVE, e);
        } finally {
            try {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.SAVE);
                    recordStore.closeRecordStore();
                }
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.SAVE, e);
            }
        }
    }
    }
}

