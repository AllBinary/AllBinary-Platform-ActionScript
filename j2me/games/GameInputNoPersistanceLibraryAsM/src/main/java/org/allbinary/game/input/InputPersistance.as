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
    import javax.microedition.rms.RecordEnumeration;
    import javax.microedition.rms.RecordStore;
    import org.allbinary.game.configuration.persistance.BasicPersitance;
    import org.allbinary.game.configuration.persistance.NullRecordComparator;
    import org.allbinary.game.configuration.persistance.NullRecordFilter;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.HashtableUtil;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.util.ABHashtable;

    //GameInputNoPersistanceLibrary
    public class InputPersistance extends BasicPersitance {
        private var hashtableUtil:HashtableUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsInputPersistance():void {
    this.hashtableUtil = HashtableUtil.getInstance();
        }
    

    public function InputPersistance(name:String) {
        super(name);
        this.initFieldsInputPersistance();
    }
    

    public function loadAll(abeClientInformation:AbeClientInformationInterface):void {
        var recordStore:RecordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
        var recordEnum:RecordEnumeration = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
        var hashtable:ABHashtable = null;
        var stringBuffer:StringMaker = new StringMaker();
        var smallIntegerSingletonFactory:SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        var id:int = 0;
        while (recordEnum.hasNextElement()) {
            id = recordEnum.nextRecordId();
            stringBuffer.delete_(0, stringBuffer.length());
            this.logUtil.putF(stringBuffer.append(this.persistanceStrings.LOADING_ID).appendint(id).toString(), this, this.persistanceStrings.LOAD_ALL);
            hashtable = StdUtil.getInstance().createHashtable();
            this.valueList.add(hashtable);
            this.idList.add(smallIntegerSingletonFactory.getAt(id));
        }
        recordStore.closeRecordStore();
    }
    

    public function save(abeClientInformation:AbeClientInformationInterface, hashtable:ABHashtable):void {
        PreLogUtil.put(new StringMaker().append(this.persistanceStrings.NOT_SAVING).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, this.commonStrings.SAVE);
        var recordStore:RecordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
        var gameActionInput:Input = null;
        var list:BasicArrayList = null;
        var input:Input = null;
        var inputObjectArray:Vector.<Object> = this.hashtableUtil.getKeysAsArray(hashtable);
        var size:int = inputObjectArray.length;
        for (var index:int = 0; index < size; index++) {
            gameActionInput = (inputObjectArray[index] as Input);
            list = (hashtable.get_(inputObjectArray[index]) as BasicArrayList);
            for (var index2:int = 0; index2 < list.size(); index2++) {
                input = (list.get_(index2) as Input);
            }
        }
        recordStore.closeRecordStore();
    }
    }
}

