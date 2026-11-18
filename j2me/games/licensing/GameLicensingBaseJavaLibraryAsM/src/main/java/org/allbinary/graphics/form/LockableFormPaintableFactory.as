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
package org.allbinary.graphics.form {

    public class LockableFormPaintableFactory extends ItemPaintableFactory {
        private var lockedIndex:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsLockableFormPaintableFactory():void {
    
        }
    

    public function LockableFormPaintableFactory(lockedIndex:int) {
        super();
        this.initFieldsLockableFormPaintableFactory();
        this.lockedIndex = lockedIndex;
    }
    

    override public function getInstanceItemPaintable(paintableForm:PaintableForm):ItemPaintable {
        return new LockablePaintable(this.lockedIndex);
    }
    }
}

