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
package org.allbinary.view {

    public class StaticViewPosition extends ViewPosition {
    

    public function StaticViewPosition(x:int, y:int, z:int) {
        super(x, y, z);
    }
    

    override public function getX():int {
        return this.getRawX();
    }
    

    override public function getY():int {
        return this.getRawY();
    }
    

    override public function getZ():int {
        return this.getRawZ();
    }
    }
}

