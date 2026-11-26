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
    import javax.microedition.lcdui.Canvas;
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.util.visitor.Visitor;
    import org.allbinary.string.CommonStrings;

    public class ThrustAIVisitor extends Visitor {
        public var logUtil:LogUtil = null;
        private var TRUE:* = null;

        // Java field initializers run after the base constructor
        private function initFieldsThrustAIVisitor():void {
    this.logUtil = LogUtil.getInstance();
    this.TRUE = BooleanFactory.getInstance().TRUE;
        }
    

    public function ThrustAIVisitor() {
        super();
        this.initFieldsThrustAIVisitor();
    }
    

    override public function visit(...args):* {
        if (args.length == 1) {
            return this.visit_jo1(args[0]);
        }
        return super.visit.apply(this, args);
    }

    private function visit_jo1(anyType:Object):Object {
        try {
            var basicAI:BasicAI = (anyType as BasicAI);
            basicAI.processKeyAI(Canvas.UP);
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.VISIT, e);
        }
        return this.TRUE;
    }
    }
}

