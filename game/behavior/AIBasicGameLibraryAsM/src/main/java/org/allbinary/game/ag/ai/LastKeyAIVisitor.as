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
package org.allbinary.game.ag.ai {
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.util.visitor.Visitor;
    import org.allbinary.string.CommonStrings;

    public class LastKeyAIVisitor extends Visitor {
        public var logUtil:LogUtil = null;
        private var TRUE:* = null;

        // Java field initializers run after the base constructor
        private function initFieldsLastKeyAIVisitor():void {
    this.logUtil = LogUtil.getInstance();
    this.TRUE = BooleanFactory.getInstance().TRUE;
        }
    

    public function LastKeyAIVisitor() {
        super();
        this.initFieldsLastKeyAIVisitor();
    }
    

    override public function visit(anyType:Object):Object {
        try {
            var basicAI:BasicAI = (anyType as BasicAI);
            var key:int = basicAI.getLastKey();
            if (key != -1) {
                basicAI.processKeyAI(key);
            }
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.VISIT, e);
        }
        return this.TRUE;
    }
    }
}

