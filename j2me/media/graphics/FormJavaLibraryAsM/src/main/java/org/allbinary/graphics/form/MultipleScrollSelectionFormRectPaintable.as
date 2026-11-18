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
    import org.allbinary.graphics.paint.Paintable;

    public class MultipleScrollSelectionFormRectPaintable extends Paintable {
        private var multipleScrollSelectionForm:MultipleScrollSelectionHorizontalForm = null;

        // Java field initializers run after the base constructor
        private function initFieldsMultipleScrollSelectionFormRectPaintable():void {
    
        }
    

    public function MultipleScrollSelectionFormRectPaintable(multipleScrollSelectionForm:MultipleScrollSelectionHorizontalForm) {
        super();
        this.initFieldsMultipleScrollSelectionFormRectPaintable();
        this.multipleScrollSelectionForm = multipleScrollSelectionForm;
    }
    

    override public function paint(graphics:Graphics):void {
        this.multipleScrollSelectionForm.fillRect(graphics);
    }
    }
}

