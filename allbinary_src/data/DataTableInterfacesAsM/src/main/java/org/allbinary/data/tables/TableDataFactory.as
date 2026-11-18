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
package org.allbinary.data.tables {
    import org.allbinary.string.CommonPhoneStrings;
    import java.lang.JInteger;

    public class TableDataFactory {
    private static var instance_value:TableDataFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():TableDataFactory {
        if (!TableDataFactory.instance_set) {
            TableDataFactory.instance_set = true;
            TableDataFactory.instance_value = new TableDataFactory();
        }
        return TableDataFactory.instance_value;
    }
        public var INTEGER_MAX_VALUE_STRING:String = null;
        public var ZERO_STRING:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsTableDataFactory():void {
    this.INTEGER_MAX_VALUE_STRING = String(JInteger.MAX_VALUE);
    this.ZERO_STRING = CommonPhoneStrings.getInstance().ZERO;
        }

        public function TableDataFactory() {
            super();
            this.initFieldsTableDataFactory();
        }
    

    public static function getInstance():TableDataFactory {
        return TableDataFactory.instance;
    }
    }
}

