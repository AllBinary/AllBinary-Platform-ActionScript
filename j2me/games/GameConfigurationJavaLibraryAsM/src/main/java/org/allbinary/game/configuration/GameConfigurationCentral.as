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
    import org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton;
    import org.allbinary.game.configuration.persistance.KeyValuePersistance;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import java.lang.JInteger;

    public class GameConfigurationCentral {
    private static var SINGLETON_value:Object;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():Object {
        if (!GameConfigurationCentral.SINGLETON_set) {
            GameConfigurationCentral.SINGLETON_set = true;
            GameConfigurationCentral.SINGLETON_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return GameConfigurationCentral.SINGLETON_value;
    }
        public var logUtil:LogUtil = null;
        public var SCALE:GameConfiguration = null;
        public var ORIENTATION:GameConfiguration = null;
        public var SENSOR_UPDATE_RATE:GameConfiguration = null;
        public var VIBRATION:GameConfiguration = null;
        public var CHALLENGE_LEVEL:GameConfiguration = null;
        public var COLLIDE_DAMAGE:GameConfiguration = null;
        public var DURABILITY_CHALLENGE_LEVEL:GameConfiguration = null;
        public var SPEED_CHALLENGE_LEVEL:GameConfiguration = null;
        public var ATTACK_CHALLENGE_LEVEL:GameConfiguration = null;
        public var CONTROL_LEVEL:GameConfiguration = null;
        public var PLAYER_INPUT_WAIT:GameConfiguration = null;
        public var SPEED:GameConfiguration = null;
        public var SOUND_VOLUME:GameConfiguration = null;
        public var MAX_GAME_OBJECTS:GameConfiguration = null;
        public var MAX_LAYERS:GameConfiguration = null;
        private var gameControlFidelity:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGameConfigurationCentral():void {
    this.logUtil = LogUtil.getInstance();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    this.gameControlFidelity = 36;
        }
    

    public static function getInstance():GameConfigurationCentral {
        if (GameConfigurationCentral.SINGLETON == NullUtil.getInstance().NULL_OBJECT) {
            GameConfigurationCentral.SINGLETON = new GameConfigurationCentral();
        }
        return (GameConfigurationCentral.SINGLETON as GameConfigurationCentral);
    }
    

    public function GameConfigurationCentral() {
        super();
        this.initFieldsGameConfigurationCentral();
        var smallIntegerSingletonFactory:SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        this.SCALE = new GameConfiguration("Scale", smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(3));
        this.ORIENTATION = new GameConfiguration("Orientation", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(8));
        this.SENSOR_UPDATE_RATE = new GameConfiguration("Sensor Update Rate", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3));
        this.VIBRATION = new GameConfiguration("Vibration", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3));
        this.CHALLENGE_LEVEL = new GameConfiguration("Global Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.COLLIDE_DAMAGE = new GameConfiguration("Collide Damage Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.DURABILITY_CHALLENGE_LEVEL = new GameConfiguration("Enemy Durability Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.SPEED_CHALLENGE_LEVEL = new GameConfiguration("Enemy Speed Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.ATTACK_CHALLENGE_LEVEL = new GameConfiguration("Enemy Attack Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.CONTROL_LEVEL = new GameConfiguration("Control Fidelity", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.PLAYER_INPUT_WAIT = new GameConfiguration("Input Wait", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.SPEED = new GameConfiguration("Game Speed (Device Specific)", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.SOUND_VOLUME = new GameConfiguration("Sound Volume", smallIntegerSingletonFactory.getAt(6), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(10));
        this.MAX_GAME_OBJECTS = new GameConfiguration("Max Game Objects", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50));
        this.MAX_LAYERS = new GameConfiguration("Max Layers", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50));
    }
    

    public function load(abeClientInformation:AbeClientInformationInterface):void {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        try {
            var smallIntegerSingletonFactory:SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
            var keyValuePersistance:KeyValuePersistance = GameConfigurationPersistanceSingleton.getInstance();
            keyValuePersistance.clear();
            keyValuePersistance.loadAll(abeClientInformation);
            var list:BasicArrayList = keyValuePersistance.getIds();
            if (list.size() > 0) {
                var hashtable:ABHashtable = keyValuePersistance.get_(0);
                var anyType:Object = (this.SCALE.getName() as Object);
                var value:String = (hashtable.get_(anyType) as String);
                this.SCALE.setValue(smallIntegerSingletonFactory.getAt(value.intValue()));
            } else {
                this.logUtil.putF("No Game Configuration To Load", this, commonStrings.LOAD);
            }
        } catch (e:*) {
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.LOAD, e);
        }
    }
    

    public function setGameControlFidelity(gameControlFidelity:int):void {
        this.gameControlFidelity = gameControlFidelity;
    }
    

    public function getGameControlFidelity():int {
        return this.gameControlFidelity;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        var commonStrings:CommonSeps = CommonSeps.getInstance();
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SCALE.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(this.SCALE.getValue().intValue());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.ORIENTATION.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(this.ORIENTATION.getValue().intValue());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SENSOR_UPDATE_RATE.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(this.SENSOR_UPDATE_RATE.getValue().intValue());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.VIBRATION.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(this.VIBRATION.getValue().intValue());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(this.CHALLENGE_LEVEL.getValue().intValue());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.COLLIDE_DAMAGE.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(this.COLLIDE_DAMAGE.getValue().intValue());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.DURABILITY_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(this.DURABILITY_CHALLENGE_LEVEL.getValue().intValue());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SPEED_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(this.SPEED_CHALLENGE_LEVEL.getValue().intValue());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.ATTACK_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(this.ATTACK_CHALLENGE_LEVEL.getValue().intValue());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.CONTROL_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(this.CONTROL_LEVEL.getValue().intValue());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SPEED.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(this.SPEED.getValue().intValue());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.MAX_GAME_OBJECTS.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(this.MAX_GAME_OBJECTS.getValue().intValue());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.MAX_LAYERS.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(this.MAX_LAYERS.getValue().intValue());
        return stringBuffer.toString();
    }
    }
}

