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
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import java.lang.JInteger;

    public class NumberTextFieldItemValidator extends ValidatorBase {
        private var textFieldItem:ABTextFieldItem = null;
        private var min:int = 0;
        private var max:int = 0;
        private var maxChars:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsNumberTextFieldItemValidator():void {
    
    
    
    
        }
    

    public function NumberTextFieldItemValidator(textFieldItem:ABTextFieldItem, maxChars:int, min:int, max:int) {
        super();
        this.initFieldsNumberTextFieldItemValidator();
        this.textFieldItem = textFieldItem;
        this.min = min;
        this.max = max;
        this.maxChars = maxChars;
    }
    

    public function isNumberValid(value:*):* {
        return BooleanFactory.getInstance().TRUE;
    }
    

    public function toNumberVector(value:*):BasicArrayList {
        return new BasicArrayListD();
    }
    

    override public function isValid():* {
        var result:* = BooleanFactory.getInstance().TRUE;
        var string:String = this.textFieldItem.getString();
        var textLength:int = string.length;
        if (textLength > 0 && textLength < this.maxChars) {
            try {
                int(parseInt(this.textFieldItem.getString()));
            } catch (e:*) {
                result = BooleanFactory.getInstance().FALSE;
            }
        } else {
            if (textLength < 1) {
                result = BooleanFactory.getInstance().FALSE;
            } else if (textLength > this.maxChars) {
                result = BooleanFactory.getInstance().FALSE;
            }
        }
        return result;
    }
    

    override public function toList():BasicArrayList {
        var list:BasicArrayList = new BasicArrayListD();
        var string:String = this.textFieldItem.getString();
        var textLength:int = string.length;
        var label:String = this.textFieldItem.getLabel();
        var name:String = label.substring(0, int(label.length - 2));
        var smallIntegerSingletonFactory:SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        var stringMaker:StringMaker = new StringMaker();
        if (textLength > 0 && textLength < this.maxChars) {
            try {
                var number:* = smallIntegerSingletonFactory.createInstance(int(parseInt(this.textFieldItem.getString())));
                if (number.intValue() > this.min) {
                    stringMaker.delete_(0, stringMaker.length());
                    list.add(stringMaker.append(name).append(" is to small").toString());
                } else if (number.intValue() > this.max) {
                    stringMaker.delete_(0, stringMaker.length());
                    list.add(stringMaker.append(name).append(" is to large").toString());
                }
            } catch (e:*) {
                stringMaker.delete_(0, stringMaker.length());
                list.add(stringMaker.append(name).append(" is not a number").toString());
            }
        } else {
            if (textLength < 1) {
                stringMaker.delete_(0, stringMaker.length());
                list.add(stringMaker.append(name).append(" is to short").toString());
            } else if (textLength > this.maxChars) {
                stringMaker.delete_(0, stringMaker.length());
                list.add(stringMaker.append(name).append(" is to long").toString());
            }
        }
        return list;
    }
    }
}

