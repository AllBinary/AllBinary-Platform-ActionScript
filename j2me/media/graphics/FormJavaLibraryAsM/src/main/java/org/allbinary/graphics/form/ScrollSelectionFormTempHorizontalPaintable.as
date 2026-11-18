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

    public class ScrollSelectionFormTempHorizontalPaintable extends ItemIndexPaintable {
        private var scrollSelectionForm:ScrollSelectionForm = null;

        // Java field initializers run after the base constructor
        private function initFieldsScrollSelectionFormTempHorizontalPaintable():void {
    
        }
    

    public function ScrollSelectionFormTempHorizontalPaintable(scrollSelectionForm:ScrollSelectionForm) {
        super();
        this.initFieldsScrollSelectionFormTempHorizontalPaintable();
        this.scrollSelectionForm = scrollSelectionForm;
    }
    

    override public function paint(graphics:Graphics, index:int, item:ABCustomItem, dx:int, dy:int):int {
        return this.scrollSelectionForm.paintItemTempHorizontal(graphics, index, item, dx, dy);
    }
    }
}

