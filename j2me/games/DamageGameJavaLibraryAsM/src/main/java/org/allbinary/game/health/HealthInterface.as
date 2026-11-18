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
package org.allbinary.game.health {

    public interface HealthInterface {
    

    function isAlive():Boolean;
    

    function damage(ahealth:int):void;
    

    function heal(ahealth:int):void;
    

    function healMax():void;
    

    function getMaxHealth():int;
    

    function setMaxHealth(maxHealth:int):void;
    

    function getHealth():int;
    

    function addListener(healthListenerInterface:HealthListenerInterface):void;
    }
}

