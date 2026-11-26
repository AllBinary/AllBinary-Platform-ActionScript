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
    import java.io.JByteArrayInputStream;
    import java.io.JByteArrayOutputStream;
    import java.io.JDataInputStream;
    import java.io.JDataOutputStream;
    import javax.microedition.rms.RecordEnumeration;
    import javax.microedition.rms.RecordStore;
    import org.allbinary.TsUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.HashtableUtil;

    public class KeyValuePersistance extends BasicPersitance {
        private var tsUtil:TsUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsKeyValuePersistance():void {
    this.tsUtil = TsUtil.getInstance();
        }
    

    public function KeyValuePersistance(recordId:String) {
        super(recordId);
        this.initFieldsKeyValuePersistance();
    }
    

    public function loadAll(abeClientInformation:AbeClientInformationInterface):void {
        this.loadAllSize(abeClientInformation, 1);
    }
    

    public function loadAllSize(abeClientInformation:AbeClientInformationInterface, size:int):void {
        var recordStore:RecordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            var recordEnum:RecordEnumeration = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
            var hashtable:ABHashtable = null;
            var name:String = null;
            var value:String = null;
            var smallIntegerSingletonFactory:SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
            var stringBuffer:StringMaker = new StringMaker();
            var recordAsBytes:Vector.<int> = null;
            var byteArrayInputStream:JByteArrayInputStream = null;
            var inputStream:JDataInputStream = null;
            while (recordEnum.hasNextElement()) {
                var id:int = recordEnum.nextRecordId();
                stringBuffer.delete_(0, stringBuffer.length());
                this.logUtil.putF(stringBuffer.append(this.persistanceStrings.LOADING_ID).appendint(id).toString(), this, this.persistanceStrings.LOAD_ALL);
                recordAsBytes = this.tsUtil.getRecord(recordStore, id);
                if (recordAsBytes != null) {
                    byteArrayInputStream = new JByteArrayInputStream(recordAsBytes);
                    inputStream = new JDataInputStream(byteArrayInputStream);
                    hashtable = new ABHashtable();
                    for (var index:int = 0; index < size; index++) {
                        name = inputStream.readUTF();
                        inputStream.readUTF();
                        value = inputStream.readUTF();
                        hashtable.put(name, value);
                    }
                    this.valueList.add(hashtable);
                    this.idList.add(smallIntegerSingletonFactory.getAt(id));
                }
            }
        } catch (e:*) {
            throw e;
        } finally {
            if (recordStore != null) {
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.persistanceStrings.LOAD_ALL);
                recordStore.closeRecordStore();
            }
        }
    }
    

    public function save(abeClientInformation:AbeClientInformationInterface, hashtable:ABHashtable):void {
        var recordStore:RecordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            this.logUtil.putF(new StringMaker().append(this.persistanceStrings.SAVING).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, this.commonStrings.SAVE);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            var byteArrayOutputStream:JByteArrayOutputStream = new JByteArrayOutputStream();
            var outputStream:JDataOutputStream = new JDataOutputStream(byteArrayOutputStream);
            var value:String = null;
            var commonSeps:CommonSeps = CommonSeps.getInstance();
            var objectArray:Vector.<Object> = HashtableUtil.getInstance().getKeysAsArray(hashtable);
            var anyType:Object = null;
            var size:int = objectArray.length;
            for (var index:int = 0; index < size; index++) {
                outputStream.writeUTF((objectArray[index] as String));
                outputStream.writeUTF(commonSeps.EQUALS);
                anyType = (objectArray[index] as Object);
                value = (hashtable.get_(anyType) as String);
                outputStream.writeUTF(value);
            }
            var tsUtil:TsUtil = TsUtil.getInstance();
            var savedGameBytes:Vector.<int> = tsUtil.getByteArray(byteArrayOutputStream.toString());
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length);
        } catch (e:*) {
            throw e;
        } finally {
            if (recordStore != null) {
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.SAVE);
                recordStore.closeRecordStore();
            }
        }
    }
    

    public function get_(index:int):ABHashtable {
        var hashtable:ABHashtable = (this.valueList.objectArray[index] as ABHashtable);
        return hashtable;
    }
    }
}

