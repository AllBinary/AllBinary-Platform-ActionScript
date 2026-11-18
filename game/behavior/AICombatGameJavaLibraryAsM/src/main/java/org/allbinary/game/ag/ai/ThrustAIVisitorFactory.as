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

    public class ThrustAIVisitorFactory {
    private static var instance_value:ThrustAIVisitor;
    private static var instance_set:Boolean = false;
    private static function get instance():ThrustAIVisitor {
        if (!ThrustAIVisitorFactory.instance_set) {
            ThrustAIVisitorFactory.instance_set = true;
            ThrustAIVisitorFactory.instance_value = new ThrustAIVisitor();
        }
        return ThrustAIVisitorFactory.instance_value;
    }
    

    public static function getInstance():ThrustAIVisitor {
        return ThrustAIVisitorFactory.instance;
    }
    }
}

