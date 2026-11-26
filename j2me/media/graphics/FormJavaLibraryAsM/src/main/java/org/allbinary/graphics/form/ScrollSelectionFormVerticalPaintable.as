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
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.form.item.ABCustomItem;

    public class ScrollSelectionFormVerticalPaintable extends ItemIndexPaintable {
        private var scrollSelectionForm:ScrollSelectionForm = null;

        // Java field initializers run after the base constructor
        private function initFieldsScrollSelectionFormVerticalPaintable():void {
    
        }
    

    public function ScrollSelectionFormVerticalPaintable(scrollSelectionForm:ScrollSelectionForm) {
        super();
        this.initFieldsScrollSelectionFormVerticalPaintable();
        this.scrollSelectionForm = scrollSelectionForm;
    }
    

    override public function paint(graphics:Graphics, index:int, item:ABCustomItem, dx:int, dy:int):int {
        return this.scrollSelectionForm.paintItemVertical(graphics, index, item, dx, dy);
    }
    }
}

