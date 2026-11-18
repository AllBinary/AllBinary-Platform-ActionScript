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
package org.allbinary.logic.system.security.licensing {
    import org.allbinary.thirdparty.store.LongArrayIdentifierInterface;

    public class StoreAppClientInformation extends AbeClientInformation implements LongArrayIdentifierInterface {
        private var longArrayIdentifier:Vector.<Number> = null;

        // Java field initializers run after the base constructor
        private function initFieldsStoreAppClientInformation():void {
    
        }
    

    public function StoreAppClientInformation(name:String, version:String, specialName:String, shortName:String, longArrayIdentifier:Vector.<Number>) {
        super(name, version, specialName, shortName);
        this.initFieldsStoreAppClientInformation();
        this.longArrayIdentifier = longArrayIdentifier;
    }
    

    public function getLongArrayIdentifier():Vector.<Number> {
        return this.longArrayIdentifier;
    }
    }
}

