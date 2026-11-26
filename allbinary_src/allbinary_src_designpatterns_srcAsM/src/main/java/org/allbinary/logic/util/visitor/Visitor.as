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
package org.allbinary.logic.util.visitor {
    import org.allbinary.logic.NullUtil;

    public class Visitor implements VisitorInterface {
    private static var instance_value:Visitor;
    private static var instance_set:Boolean = false;
    private static function get instance():Visitor {
        if (!Visitor.instance_set) {
            Visitor.instance_set = true;
            Visitor.instance_value = new Visitor();
        }
        return Visitor.instance_value;
    }
        public var nullUtil:NullUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsVisitor():void {
    this.nullUtil = NullUtil.getInstance();
        }

        public function Visitor() {
            super();
            this.initFieldsVisitor();
        }
    

    public function visit(...args):* {
        if (args.length == 1) {
            return this.visit_jo1(args[0]);
        }
        throw new JException("IllegalArgumentException", "visit");
    }

    private function visit_jo1(anyType:Object):Object {
        return this.nullUtil.NULL_OBJECT;
    }
    

    public static function getInstance():Visitor {
        return Visitor.instance;
    }
    }
}

