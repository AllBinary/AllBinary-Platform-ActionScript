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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;
    import java.lang.JInteger;

    public class GameConfigurationUtil {
    private static var instance_value:GameConfigurationUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():GameConfigurationUtil {
        if (!GameConfigurationUtil.instance_set) {
            GameConfigurationUtil.instance_set = true;
            GameConfigurationUtil.instance_value = new GameConfigurationUtil();
        }
        return GameConfigurationUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var GAUGE_UPDATE:String = null;
        private var FROM:String = null;
        private var TO:String = null;
        private var COMPETITION_VALUE:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGameConfigurationUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.GAUGE_UPDATE = "Gauge Update: ";
    this.FROM = " from: ";
    this.TO = " to: ";
    this.COMPETITION_VALUE = 1;
        }

        public function GameConfigurationUtil() {
            super();
            this.initFieldsGameConfigurationUtil();
        }
    

    public static function getInstance():GameConfigurationUtil {
        return GameConfigurationUtil.instance;
    }
    

    public function change(gameOptionsForm:GameOptionsForm, gauge:GameConfigurationGauge):void {
        this.update(gauge);
        var gameConfigurationSingleton:GameConfigurationSingleton = GameConfigurationSingleton.getInstance();
        var gameConfiguration:GameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel());
        this.updateChallange(gameOptionsForm, gameConfiguration);
    }
    

    public function update(gauge:GameConfigurationGauge):void {
        var gameConfigurationSingleton:GameConfigurationSingleton = GameConfigurationSingleton.getInstance();
        var gameConfiguration:GameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel());
        var smallIntegerSingletonFactory:SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        var value:* = smallIntegerSingletonFactory.getAt(gauge.getValue() + gameConfiguration.getMinValue().intValue());
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(this.GAUGE_UPDATE);
        stringBuffer.append(gameConfiguration.getName());
        stringBuffer.append(this.FROM);
        stringBuffer.appendint(gameConfiguration.getValue().intValue());
        stringBuffer.append(this.TO);
        stringBuffer.appendint(value.intValue());
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.UPDATE);
        gameConfiguration.setValue(value);
    }
    

    public function setDefault(gauge:GameConfigurationGauge):void {
        var gameConfigurationSingleton:GameConfigurationSingleton = GameConfigurationSingleton.getInstance();
        var gameConfiguration:GameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel());
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("Gauge Default: ");
        stringBuffer.append(gameConfiguration.getName());
        stringBuffer.append(this.TO);
        stringBuffer.appendint(gameConfiguration.getDefaultValue().intValue());
        this.logUtil.putF(stringBuffer.toString(), this, "setDefault");
        gauge.setValue(gameConfiguration.getDefaultValue().intValue() - gameConfiguration.getMinValue().intValue());
        gameConfiguration.setValue(gameConfiguration.getDefaultValue());
    }
    

    public function updateChallange(gameOptionsForm:GameOptionsForm, gameConfiguration:GameConfiguration):void {
        var gameConfigurationSingleton:GameConfigurationSingleton = GameConfigurationSingleton.getInstance();
        var gameConfigurationCentral:GameConfigurationCentral = GameConfigurationCentral.getInstance();
        if (gameConfiguration == gameConfigurationCentral.CHALLENGE_LEVEL) {
            this.logUtil.putF(this.commonStrings.START, this, "updateChallange");
            gameConfigurationCentral.COLLIDE_DAMAGE.setValue(gameConfiguration.getValue());
            gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue());
            gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue());
            gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue());
            var size:int = gameOptionsForm.size();
            for (var index:int = 0; index < size; index++) {
                var item:Item = gameOptionsForm.get_(index);
                if ((item is GameConfigurationGauge)) {
                    var gauge:GameConfigurationGauge = (item as GameConfigurationGauge);
                    var name:String = item.getLabel();
                    var nextGameConfiguration:GameConfiguration = gameConfigurationSingleton.getInstanceByName(name);
                    if (nextGameConfiguration == gameConfigurationCentral.COLLIDE_DAMAGE) {
                        gauge.setValue(gameConfigurationCentral.COLLIDE_DAMAGE.getValue().intValue() - gameConfiguration.getMinValue().intValue());
                    } else if (nextGameConfiguration == gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL) {
                        gauge.setValue(gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue());
                    } else if (nextGameConfiguration == gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL) {
                        gauge.setValue(gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue());
                    } else if (nextGameConfiguration == gameConfigurationCentral.SPEED_CHALLENGE_LEVEL) {
                        gauge.setValue(gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue());
                    }
                }
            }
        }
    }
    

    public function updateCompetitionValue():void {
        this.logUtil.putF(this.commonStrings.START, this, "updateCompetitionValue");
        var gameConfigurationCentral:GameConfigurationCentral = GameConfigurationCentral.getInstance();
        this.COMPETITION_VALUE = gameConfigurationCentral.COLLIDE_DAMAGE.getValue().intValue() + gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue().intValue() + gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue().intValue() + gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue().intValue();
        this.COMPETITION_VALUE = (this.COMPETITION_VALUE >> 2);
    }
    

    public function getCompetitionValue():int {
        return this.COMPETITION_VALUE;
    }
    }
}

