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
    import org.allbinary.graphics.form.item.ABCustomItem;

    public class HorizontalItemIndexDx extends ItemIndexDx {
        private var scrollCurrentSelectionForm:ScrollCurrentSelectionForm = null;

        // Java field initializers run after the base constructor
        private function initFieldsHorizontalItemIndexDx():void {
    
        }
    

    public function HorizontalItemIndexDx(scrollCurrentSelectionForm:ScrollCurrentSelectionForm) {
        super();
        this.initFieldsHorizontalItemIndexDx();
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm;
    }
    

    override public function getDx(index:int, item:ABCustomItem, dx:int, dy:int):int {
        return this.scrollCurrentSelectionForm.getXHorizontalForm(index, item, dx, dy);
    }
    }
}

