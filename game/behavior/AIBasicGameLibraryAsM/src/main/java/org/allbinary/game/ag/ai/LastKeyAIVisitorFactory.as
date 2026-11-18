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

    public class LastKeyAIVisitorFactory {
    private static var instance_value:LastKeyAIVisitor;
    private static var instance_set:Boolean = false;
    private static function get instance():LastKeyAIVisitor {
        if (!LastKeyAIVisitorFactory.instance_set) {
            LastKeyAIVisitorFactory.instance_set = true;
            LastKeyAIVisitorFactory.instance_value = new LastKeyAIVisitor();
        }
        return LastKeyAIVisitorFactory.instance_value;
    }
    

    public static function getInstance():LastKeyAIVisitor {
        return LastKeyAIVisitorFactory.instance;
    }
    }
}

