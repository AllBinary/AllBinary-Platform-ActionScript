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
package org.allbinary.game.input.mapping {
    import java.util.JEnumeration;
    import org.allbinary.game.configuration.persistance.GamePersistanceStrings;
    import org.allbinary.game.input.Input;
    import org.allbinary.game.input.InputPersistance;
    import org.allbinary.game.input.mapping.event.InputMappingEvent;
    import org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface;
    import org.allbinary.game.input.mapping.event.NullInputMappingEventListener;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.EnumerationUtil;
    import org.allbinary.util.ABHashtable;

    //GameInputNoPersistanceLibrary
    public class PersistentInputMapping {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    public static function get instance():Object {
        if (!PersistentInputMapping.instance_set) {
            PersistentInputMapping.instance_set = true;
            PersistentInputMapping.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return PersistentInputMapping.instance_value;
    }
    public static function set instance(value:Object):void {
        PersistentInputMapping.instance_set = true;
        PersistentInputMapping.instance_value = value;
    }
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var enumerationUtil:EnumerationUtil = null;
        private var inputMapping:InputToGameKeyMapping = null;
        private var inputMappingEventListenerInterface:InputMappingEventListenerInterface = null;
        private var inputPersistance:InputPersistance = null;
        private var inputMappingEvent:InputMappingEvent = null;

        // Java field initializers run after the base constructor
        private function initFieldsPersistentInputMapping():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.enumerationUtil = EnumerationUtil.getInstance();
    this.inputMapping = new InputToGameKeyMapping();
    this.inputMappingEventListenerInterface = NullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENER;
    
    this.inputMappingEvent = new InputMappingEvent(this);
        }
    

    public static function getNullInstance():PersistentInputMapping {
        if (PersistentInputMapping.instance == NullUtil.getInstance().NULL_OBJECT) {
            PersistentInputMapping.instance = new PersistentInputMapping(GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID);
        }
        return (PersistentInputMapping.instance as PersistentInputMapping);
    }
    

    public function PersistentInputMapping(name:String) {
        super();
        this.initFieldsPersistentInputMapping();
        this.inputPersistance = new InputPersistance(name);
    }
    

    public function getTotalMapped():int {
        return this.getInputMapping().getHashtable().size();
    }
    

    public function isDefaultNew():Boolean {
        return false;
    }
    

    public function getDefault():InputToGameKeyMapping {
        return InputToGameKeyMapping.getNullInstance();
    }
    

    public function setDefault(abeClientInformation:AbeClientInformationInterface):void {
        this.getInputMapping().removeAll();
        this.getInputMapping().addMapping(this.getDefault());
        this.save(abeClientInformation);
    }
    

    public function update(abeClientInformation:AbeClientInformationInterface):void {
        this.inputPersistance.deleteAll(abeClientInformation);
        this.save(abeClientInformation);
    }
    

    public function save(abeClientInformation:AbeClientInformationInterface):void {
        this.inputPersistance.save(abeClientInformation, this.getInputMapping().getHashtable());
        this.inputMappingEvent.setInputToGameKeyMapping(this.getInputMapping());
        if (this.getInputMappingEventListenerInterface() != null) {
            this.getInputMappingEventListenerInterface().onInputMappingEvent(this.inputMappingEvent);
        }
    }
    

    public function init(abeClientInformation:AbeClientInformationInterface):void {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT);
        try {
            this.inputPersistance.loadAll(abeClientInformation);
        } catch (e:*) {
            PreLogUtil.putOE(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e);
            this.inputPersistance.deleteRecoreStore(abeClientInformation);
            this.setDefault(abeClientInformation);
            this.inputPersistance.loadAll(abeClientInformation);
        }
        var list:BasicArrayList = this.inputPersistance.getList();
        var totalMappedTo:int = 0;
        var size:int = list.size();
        var hashtable:ABHashtable = null;
        var enumeration:JEnumeration = null;
        var mappedToInput:Input = null;
        var gameActionInput:Input = null;
        for (var index:int = 0; index < size; index++) {
            hashtable = (list.objectArray[index] as ABHashtable);
            enumeration = hashtable.keys();
            while (this.enumerationUtil.hasMoreElements(enumeration)) {
                mappedToInput = (this.enumerationUtil.nextElement(enumeration) as Input);
                gameActionInput = (hashtable.get_(mappedToInput) as Input);
                totalMappedTo++;
                this.getInputMapping().add(gameActionInput, mappedToInput);
            }
        }
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("End - Total Loaded Keys Mapped: ");
        stringBuffer.appendint(this.getTotalMapped());
        stringBuffer.append(" to: ");
        stringBuffer.appendint(totalMappedTo);
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
    }
    

    public function setInputMappingEventListenerInterface(inputMappingEventListenerInterface:InputMappingEventListenerInterface):void {
        this.inputMappingEventListenerInterface = inputMappingEventListenerInterface;
    }
    

    private function getInputMappingEventListenerInterface():InputMappingEventListenerInterface {
        return this.inputMappingEventListenerInterface;
    }
    

    public function getInputMapping():InputToGameKeyMapping {
        return this.inputMapping;
    }
    

    public function isDelete(input:Input):Boolean {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function isSystemInput(input:Input):Boolean {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    }
}

