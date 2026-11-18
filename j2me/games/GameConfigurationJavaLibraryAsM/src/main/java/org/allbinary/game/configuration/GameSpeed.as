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
package org.allbinary.game.configuration {

    public class GameSpeed {
    private static var instance_value:GameSpeed;
    private static var instance_set:Boolean = false;
    private static function get instance():GameSpeed {
        if (!GameSpeed.instance_set) {
            GameSpeed.instance_set = true;
            GameSpeed.instance_value = new GameSpeed();
        }
        return GameSpeed.instance_value;
    }
    

    public function getSpeed():int {
        var speedGameConfiguration:GameConfiguration = GameConfigurationCentral.getInstance().SPEED;
        return (speedGameConfiguration.getMaxValue().intValue() - speedGameConfiguration.getValue().intValue() + 1);
    }
    

    public function getDelay():int {
        var speedGameConfiguration:GameConfiguration = GameConfigurationCentral.getInstance().SPEED;
        return 19 * (speedGameConfiguration.getMaxValue().intValue() - speedGameConfiguration.getValue().intValue());
    }
    

    public static function getInstance():GameSpeed {
        return GameSpeed.instance;
    }
    }
}

