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
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.util.visitor.Visitor;

    public class AllCommandsVisitor extends Visitor {
    

    public function AllCommandsVisitor() {
        super();
    }
    

    override public function visit(...args):* {
        if (args.length == 1) {
            return this.visit_jo1(args[0]);
        }
        return super.visit.apply(this, args);
    }

    private function visit_jo1(anyType:Object):Object {
        return BooleanFactory.getInstance().TRUE;
    }
    }
}

