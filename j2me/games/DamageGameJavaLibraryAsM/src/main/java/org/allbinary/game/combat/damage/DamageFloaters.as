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
package org.allbinary.game.combat.damage {
    import org.allbinary.graphics.paint.Paintable;

    public class DamageFloaters extends Paintable {
    private static var SINGLETON_value:DamageFloaters;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():DamageFloaters {
        if (!DamageFloaters.SINGLETON_set) {
            DamageFloaters.SINGLETON_set = true;
            DamageFloaters.SINGLETON_value = new DamageFloaters();
        }
        return DamageFloaters.SINGLETON_value;
    }
    

    public static function getInstance():DamageFloaters {
        return DamageFloaters.SINGLETON;
    }
    

    public function add(...args):* {
        if (args.length == 1) {
            return this.add_jo1(args[0]);
        }
        throw new JException("IllegalArgumentException", "add");
    }

    private function add_jo1(damage:int):void {
    }
    }
}

