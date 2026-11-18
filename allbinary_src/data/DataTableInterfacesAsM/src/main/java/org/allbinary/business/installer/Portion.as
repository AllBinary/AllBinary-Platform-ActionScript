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
package org.allbinary.business.installer {
    import java.util.JHashMap;
    import java.lang.JInteger;

    public class Portion {
        private var current:* = null;
        private var total:* = null;

        // Java field initializers run after the base constructor
        private function initFieldsPortion():void {
    
    
        }
    

    public function Portion(hashMap:JHashMap) {
        super();
        this.initFieldsPortion();
        this.current = (hashMap.get_("current") as *);
        this.total = (hashMap.get_("total") as *);
    }
    

    public function getCurrent():* {
        return this.current;
    }
    

    public function getTotal():* {
        return this.total;
    }
    }
}

