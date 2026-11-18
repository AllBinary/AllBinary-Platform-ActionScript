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
package org.allbinary.game {
    import org.allbinary.logic.string.StringUtil;

    public class PlayerType {
        private var id:int = 0;
        private var name:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsPlayerType():void {
    
    this.name = StringUtil.getInstance().EMPTY_STRING;
        }
    

    public function PlayerType(name:String, value:int) {
        super();
        this.initFieldsPlayerType();
        this.name = name;
        this.id = value;
    }
    

    public function getId():int {
        return this.id;
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function toString():String {
        return this.getName();
    }
    }
}

