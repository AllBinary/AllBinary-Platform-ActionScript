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
package org.allbinary.game.input {
    import java.io.JByteArrayInputStream;
    import java.io.JByteArrayOutputStream;
    import java.io.JDataInputStream;
    import java.io.JDataOutputStream;
    import org.allbinary.TsUtil;
    import org.allbinary.game.configuration.persistance.BasicPersitance;
    import org.allbinary.game.configuration.persistance.NullRecordComparator;
    import org.allbinary.game.configuration.persistance.NullRecordFilter;
    import org.allbinary.game.configuration.persistance.NullRecordStore;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.HashtableUtil;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.util.ABHashtable;
    import java.lang.JInteger;

    //GameInputPersistanceLibrary
    public class InputPersistance extends BasicPersitance {
        private var tsUtil:TsUtil = null;
        private var hashtableUtil:HashtableUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsInputPersistance():void {
    this.tsUtil = TsUtil.getInstance();
    this.hashtableUtil = HashtableUtil.getInstance();
        }
    

    public function InputPersistance(name:String) {
        super(name);
        this.initFieldsInputPersistance();
    }
    

    public function loadAll(abeClientInformation:AbeClientInformationInterface):void {
        var recordStore:RecordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            var recordEnum:RecordEnumeration = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
            var gameActionInputId:Number = 0;
            var inputId:Number = 0;
            var gameActionInput:Input = null;
            var input:Input = null;
            var hashtable:ABHashtable = null;
            var gameKeyFactory:GameKeyMappingFactory = GameKeyMappingFactory.getInstance();
            var stringBuffer:StringMaker = new StringMaker();
            var inputFactory:InputFactory = InputFactory.getInstance();
            var smallIntegerSingletonFactory:SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
            var stdUtil:StdUtil = StdUtil.getInstance();
            var recordAsBytes:Vector.<int> = null;
            var byteArrayInputStream:ByteArrayInputStream = null;
            var inputStream:DataInputStream = null;
            while (recordEnum.hasNextElement()) {
                var id:int = recordEnum.nextRecordId();
                stringBuffer.delete_(0, stringBuffer.length());
                this.logUtil.putF(stringBuffer.append(this.persistanceStrings.LOADING_ID).appendint(id).toString(), this, this.persistanceStrings.LOAD_ALL);
                recordAsBytes = this.tsUtil.getRecord(recordStore, id);
                if (recordAsBytes != null) {
                    byteArrayInputStream = new ByteArrayInputStream(recordAsBytes);
                    inputStream = new DataInputStream(byteArrayInputStream);
                    hashtable = stdUtil.createHashtable();
                    var value:int = 0;
                    while (inputStream.available() > 0) {
                        var gameActionInputIdAsString:String = inputStream.readUTF();
                        value = int(parseInt(gameActionInputIdAsString));
                        gameActionInputId = Number(value);
                        inputStream.readUTF();
                        value = int(parseInt(inputStream.readUTF()));
                        inputId = Number(value);
                        gameActionInput = gameKeyFactory.getGameKey(int(gameActionInputId));
                        input = inputFactory.getInstanceById(int(inputId));
                        if (input == inputFactory.NO_INPUT || gameActionInput == null) {
                            stringBuffer.delete_(0, stringBuffer.length());
                            if (input == inputFactory.NO_INPUT) {
                                stringBuffer.append(this.persistanceStrings.ERROR_LOADING_ID);
                                stringBuffer.appendlong(inputId);
                                stringBuffer.append(this.persistanceStrings.GAME_ACTION_INPUT);
                                stringBuffer.appendlong(gameActionInputId);
                                PreLogUtil.put(stringBuffer.toString(), this, this.persistanceStrings.LOAD_ALL);
                            }
                            if (gameActionInput == null) {
                                stringBuffer.delete_(0, stringBuffer.length());
                                stringBuffer.append(this.persistanceStrings.ERROR_LOADING);
                                stringBuffer.appendlong(gameActionInputId);
                                stringBuffer.append(this.persistanceStrings.ID);
                                stringBuffer.appendlong(inputId);
                                PreLogUtil.put(stringBuffer.toString(), this, this.persistanceStrings.LOAD_ALL);
                            }
                        } else {
                        }
                        hashtable.put(input, gameActionInput);
                    }
                    this.valueList.add(hashtable);
                    this.idList.add(smallIntegerSingletonFactory.getAt(id));
                } else {
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
            var stringBuffer:StringMaker = new StringMaker();
            PreLogUtil.put(stringBuffer.append(this.persistanceStrings.SAVING).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, this.commonStrings.SAVE);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            var byteArrayOutputStream:JByteArrayOutputStream = new JByteArrayOutputStream();
            var outputStream:DataOutputStream = new DataOutputStream(byteArrayOutputStream);
            var gameActionInput:Input = null;
            var list:BasicArrayList = null;
            var input:Input = null;
            var savedGameBytes:Vector.<int> = null;
            var commonSeps:CommonSeps = CommonSeps.getInstance();
            var smallIntegerSingletonFactory:SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
            var inputObjectArray:Vector.<Object> = this.hashtableUtil.getKeysAsArray(hashtable);
            var size:int = inputObjectArray.length;
            for (var index:int = 0; index < size; index++) {
                gameActionInput = (inputObjectArray[index] as Input);
                list = (hashtable.get_((inputObjectArray[index] as Object)) as BasicArrayList);
                for (var index2:int = 0; index2 < list.size(); index2++) {
                    var gameActionInputIdAsString:String = smallIntegerSingletonFactory.getAt(gameActionInput.getId()).toString();
                    outputStream.writeUTF(gameActionInputIdAsString);
                    outputStream.writeUTF(commonSeps.EQUALS);
                    input = (list.objectArray[index2] as Input);
                    var inputIdAsString:String = smallIntegerSingletonFactory.getAt(input.getId()).toString();
                    outputStream.writeUTF(inputIdAsString);
                }
            }
            savedGameBytes = byteArrayOutputStream.toByteArray();
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
    }
}

