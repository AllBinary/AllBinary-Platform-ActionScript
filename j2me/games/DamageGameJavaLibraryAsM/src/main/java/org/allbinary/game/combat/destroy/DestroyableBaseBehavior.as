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
package org.allbinary.game.combat.destroy {
    import org.allbinary.string.CommonStrings;

    public class DestroyableBaseBehavior implements DestroyableInterface {
    private static var instance_value:DestroyableBaseBehavior;
    private static var instance_set:Boolean = false;
    private static function get instance():DestroyableBaseBehavior {
        if (!DestroyableBaseBehavior.instance_set) {
            DestroyableBaseBehavior.instance_set = true;
            DestroyableBaseBehavior.instance_value = new DestroyableBaseBehavior();
        }
        return DestroyableBaseBehavior.instance_value;
    }
    

    public static function getInstance():DestroyableBaseBehavior {
        return DestroyableBaseBehavior.instance;
    }
    

    public function getName():String {
        return JSystem.className(this);
    }
    

    public function isDestroyed():Boolean {
        throw new JException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED);
    }
    

    public function setDestroyed(destroyed:Boolean):void {
    }
    }
}

