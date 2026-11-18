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
    import org.allbinary.game.input.TextNotificationUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.string.StringValidationUtil;
    import org.allbinary.logic.util.visitor.Visitor;
    import org.allbinary.string.CommonStrings;

    public class TextItemUserIdentifierVisitor extends Visitor {
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsTextItemUserIdentifierVisitor():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public function TextItemUserIdentifierVisitor() {
        super();
        this.initFieldsTextItemUserIdentifierVisitor();
    }
    

    override public function visit(anyType:Object):Object {
        var value:String = (anyType as String);
        if (value.length < 2) {
            var charValue:int = value.charCodeAt(0);
            var stringValidationUtil:StringValidationUtil = StringValidationUtil.getInstance();
            if (stringValidationUtil.isNumber(value)) {
                return BooleanFactory.getInstance().TRUE;
            } else if (this.isLetter(charValue)) {
                return BooleanFactory.getInstance().TRUE;
            } else {
                try {
                    TextNotificationUtil.getInstance().fireError("Only Letters & Numbers Allowed");
                } catch (e:*) {
                    var commonStrings:CommonStrings = CommonStrings.getInstance();
                    this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.VISIT, e);
                }
                return BooleanFactory.getInstance().FALSE;
            }
        } else {
            return BooleanFactory.getInstance().FALSE;
        }
    }
    

    public function isLetter(charValue:int):Boolean {
        var value:int = charValue;
        return (value > 64 && value < 91) || (value > 96 && value < 123);
    }
    }
}

