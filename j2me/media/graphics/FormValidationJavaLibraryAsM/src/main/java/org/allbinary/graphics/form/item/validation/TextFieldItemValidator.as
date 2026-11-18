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
package org.allbinary.graphics.form.item.validation {
    import org.allbinary.graphics.form.item.ABTextFieldItem;
    import org.allbinary.logic.control.validate.ValidatorBase;
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class TextFieldItemValidator extends ValidatorBase {
        private var textFieldItem:ABTextFieldItem = null;
        private var min:int = 0;
        private var max:int = 0;
        private var allowOnEmpty:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsTextFieldItemValidator():void {
    
    
    
    
        }
    

    public function TextFieldItemValidator(textFieldItem:ABTextFieldItem, min:int, max:int, allowOnEmpty:Boolean) {
        super();
        this.initFieldsTextFieldItemValidator();
        this.textFieldItem = textFieldItem;
        this.min = min;
        this.max = max;
        this.allowOnEmpty = allowOnEmpty;
    }
    

    override public function isValid():* {
        var booleanFactory:BooleanFactory = BooleanFactory.getInstance();
        var result:* = booleanFactory.TRUE;
        var string:String = this.textFieldItem.getString();
        var textLength:int = string.length;
        if ((textLength == 0 && this.allowOnEmpty) || textLength > this.min && textLength < this.max) {
        } else {
            if (textLength < this.min) {
                result = booleanFactory.FALSE;
            } else if (textLength > this.max) {
                result = booleanFactory.FALSE;
            }
        }
        return result;
    }
    

    override public function toList():BasicArrayList {
        var list:BasicArrayList = new BasicArrayListD();
        var string:String = this.textFieldItem.getString();
        var textLength:int = string.length;
        if (textLength > this.min && textLength < this.max) {
        } else {
            var label:String = this.textFieldItem.getLabel();
            var name:String = label.substring(0, int(label.length - 2));
            if (textLength < this.min) {
                list.add(new StringMaker().append(name).append(" is to short").toString());
            } else if (textLength > this.max) {
                list.add(new StringMaker().append(name).append(" is to long").toString());
            }
        }
        return list;
    }
    }
}

