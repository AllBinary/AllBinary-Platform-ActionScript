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
    import org.allbinary.game.configuration.persistance.GamePersistanceStrings;
    import org.allbinary.game.input.mapping.PersistentInputMapping;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;

    public class PCGameInputMapping extends PersistentInputMapping {
    

    public function PCGameInputMapping() {
        super(GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID);
    }
    

    override public function init(abeClientInformation:AbeClientInformationInterface):void {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT);
        PCKeyFactory.getInstance();
        super.init(abeClientInformation);
        if (this.getTotalMapped() == 0 || this.isDefaultNew()) {
            this.getInputMapping().addMapping(this.getDefault());
            this.save(abeClientInformation);
        }
    }
    

    override public function isDelete(input:Input):Boolean {
        if (input == PCKeyFactory.getInstance().DEL) {
            return true;
        } else {
            return false;
        }
    }
    

    override public function isSystemInput(input:Input):Boolean {
        return false;
    }
    }
}

