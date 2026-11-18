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
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class LockableFeatureFactory {
    private static var instance_value:LockableFeatureFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():LockableFeatureFactory {
        if (!LockableFeatureFactory.instance_set) {
            LockableFeatureFactory.instance_set = true;
            LockableFeatureFactory.instance_value = new LockableFeatureFactory();
        }
        return LockableFeatureFactory.instance_value;
    }
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsLockableFeatureFactory():void {
    this.list = new BasicArrayListD();
        }

        public function LockableFeatureFactory() {
            super();
            this.initFieldsLockableFeatureFactory();
        }
    

    public static function getInstance():LockableFeatureFactory {
        return LockableFeatureFactory.instance;
    }
    

    public function getList():BasicArrayList {
        return this.list;
    }
    }
}

