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
package org.allbinary.graphics.form.item {
    import org.allbinary.graphics.color.BasicColor;

    public class CommandTextItem extends ABTextItem {
        private var command:Command = null;

        // Java field initializers run after the base constructor
        private function initFieldsCommandTextItem():void {
    
        }
    

    public function CommandTextItem(command:Command, layout:int, altText:String, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(command.getLabel(), layout, altText, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsCommandTextItem();
        this.command = command;
    }
    

    override public function isFocusable():Boolean {
        return true;
    }
    

    public function getCommand():Command {
        return this.command;
    }
    }
}

