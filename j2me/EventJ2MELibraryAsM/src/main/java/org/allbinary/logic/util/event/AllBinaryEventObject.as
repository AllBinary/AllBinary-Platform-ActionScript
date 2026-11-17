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
package org.allbinary.logic.util.event {
    import org.allbinary.logic.NullUtil;

    public class AllBinaryEventObject {
    private static var NULL_EVENT_value:AllBinaryEventObject;
    private static var NULL_EVENT_set:Boolean = false;
    public static function get NULL_EVENT():AllBinaryEventObject {
        if (!AllBinaryEventObject.NULL_EVENT_set) {
            AllBinaryEventObject.NULL_EVENT_set = true;
            AllBinaryEventObject.NULL_EVENT_value = new AllBinaryEventObject(NullUtil.getInstance().NULL_OBJECT);
        }
        return AllBinaryEventObject.NULL_EVENT_value;
    }
        private var source:Object = null;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryEventObject():void {
    
        }
    

    public function AllBinaryEventObject(anyType:Object) {
        super();
        this.initFieldsAllBinaryEventObject();
        this.source = anyType;
    }
    

    public function getSource():Object {
        return this.source;
    }
    

    public function setSource(source:Object):void {
        this.source = source;
    }
    }
}

