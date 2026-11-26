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
    import org.allbinary.graphics.paint.Paintable;

    public class FormPaintable extends Paintable {
        private var form:PaintableForm = null;

        // Java field initializers run after the base constructor
        private function initFieldsFormPaintable():void {
    
        }
    

    public function FormPaintable(form:PaintableForm) {
        super();
        this.initFieldsFormPaintable();
        this.form = form;
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.form.paint(graphics);
    }
    

    public function getForm():PaintableForm {
        return this.form;
    }
    }
}

