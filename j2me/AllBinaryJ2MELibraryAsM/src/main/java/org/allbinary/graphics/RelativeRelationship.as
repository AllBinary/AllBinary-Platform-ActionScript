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
package org.allbinary.graphics {
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListUtil;

    public class RelativeRelationship {
    private static var NULL_RELATIVE_RELATIONSHIP_value:RelativeRelationship;
    private static var NULL_RELATIVE_RELATIONSHIP_set:Boolean = false;
    public static function get NULL_RELATIVE_RELATIONSHIP():RelativeRelationship {
        if (!RelativeRelationship.NULL_RELATIVE_RELATIONSHIP_set) {
            RelativeRelationship.NULL_RELATIVE_RELATIONSHIP_set = true;
            RelativeRelationship.NULL_RELATIVE_RELATIONSHIP_value = new RelativeRelationship(PointFactory.getInstance().ZERO_ZERO, BasicArrayListUtil.getInstance().getImmutableInstance());
        }
        return RelativeRelationship.NULL_RELATIVE_RELATIONSHIP_value;
    }
        private var typesAllowedList:BasicArrayList = null;
        private var x:int = 0;
        private var y:int = 0;
        private var z:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsRelativeRelationship():void {
    
    
    
    
        }
    

    public function RelativeRelationship(point:GPoint, typesAllowedList:BasicArrayList) {
        super();
        this.initFieldsRelativeRelationship();
        this.x = point.getX();
        this.y = point.getY();
        this.z = point.getZ();
        this.typesAllowedList = typesAllowedList;
    }
    

    public function getX():int {
        return this.x;
    }
    

    public function getY():int {
        return this.y;
    }
    

    public function getZ():int {
        return this.z;
    }
    

    public function getTypesAllowedList():BasicArrayList {
        return this.typesAllowedList;
    }
    

    public function setTypesAllowedList(typesAllowedList:BasicArrayList):void {
        this.typesAllowedList = typesAllowedList;
    }
    }
}

