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
package org.allbinary.util {
    import org.allbinary.logic.communication.log.ForcedLogUtil;

    public class ImmutableBasicArrayList extends BasicArrayListS {
        private var name:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsImmutableBasicArrayList():void {
    
        }
    

    public function ImmutableBasicArrayList(name:String, size:int) {
        super(size);
        this.initFieldsImmutableBasicArrayList();
        this.name = name;
    }
    

    override public function add(...args):* {
        if (args.length == 1) {
            return this.add_jo1(args[0]);
        }
        return super.add.apply(this, args);
    }

    private function add_jo1(e:Object):Boolean {
        ForcedLogUtil.log(this.name, this);
        return true;
    }
    

    override public function addAt(index:int, element:Object):void {
        ForcedLogUtil.log(this.name, this);
    }
    

    override public function toString():String {
        return this.name;
    }
    }
}

