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
package org.allbinary.game.input {
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;

    public class Input {
        private var id:int = 0;
        private var name:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsInput():void {
    this.id = 0;
    this.name = StringUtil.getInstance().EMPTY_STRING;
        }
    

    public function Input(id:int, name:String) {
        super();
        this.initFieldsInput();
        this.setId(id);
        this.setName(name);
    }
    

    public function getId():int {
        return this.id;
    }
    

    private function setId(key:int):void {
        this.id = key;
    }
    

    public function getName():String {
        return this.name;
    }
    

    private function setName(keyName:String):void {
        this.name = keyName;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("Name: ");
        stringBuffer.append(this.getName());
        stringBuffer.append(" Id: ");
        stringBuffer.appendint(this.getId());
        return stringBuffer.toString();
    }
    }
}

