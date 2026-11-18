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
package org.allbinary.game.input {
    import org.allbinary.game.input.analog.AnalogLocationInputFactory;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;

    public class LocalPlayerInputIdFactory {
    private static var instance_value:LocalPlayerInputIdFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():LocalPlayerInputIdFactory {
        if (!LocalPlayerInputIdFactory.instance_set) {
            LocalPlayerInputIdFactory.instance_set = true;
            LocalPlayerInputIdFactory.instance_value = new LocalPlayerInputIdFactory();
        }
        return LocalPlayerInputIdFactory.instance_value;
    }
        public var logUtil:LogUtil = null;
        public var MAX_NUMBER_OF_PLAYERS:int = 0;
        private var MAX_FAST_DEVICEID:int = 0;
        private var deviceIdToplayerId:Vector.<int> = null;
        private var playerIdToDeviceId:Vector.<int> = null;
        private var playersInPlay:Vector.<Boolean> = null;
        private var totalDevicesMapped:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsLocalPlayerInputIdFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.MAX_NUMBER_OF_PLAYERS = 6;
    this.MAX_FAST_DEVICEID = 65;
    this.deviceIdToplayerId = new Vector.<int>(this.MAX_FAST_DEVICEID);
    this.playerIdToDeviceId = new Vector.<int>(this.MAX_NUMBER_OF_PLAYERS);
    this.playersInPlay = new Vector.<Boolean>(this.MAX_NUMBER_OF_PLAYERS);
    this.totalDevicesMapped = 0;
        }
    

    public function LocalPlayerInputIdFactory() {
        super();
        this.initFieldsLocalPlayerInputIdFactory();
        for (var index:int = int(this.deviceIdToplayerId.length - 1); index >= 0; index--) {
            this.deviceIdToplayerId[index] = -1;
        }
    }
    

    public static function getInstance():LocalPlayerInputIdFactory {
        return LocalPlayerInputIdFactory.instance;
    }
    

    public function getDeviceId(playerInputId:int):int {
        return this.playerIdToDeviceId[playerInputId];
    }
    

    public function getPlayerForDevice(deviceId:int):int {
        var index:int = 0;
        if (deviceId < this.MAX_FAST_DEVICEID) {
            var playerInputId:int = this.deviceIdToplayerId[deviceId];
            if (playerInputId != -1) {
                return playerInputId;
            }
        } else {
            for (index = int(this.totalDevicesMapped - 1); index >= 0; index--) {
                if (this.playerIdToDeviceId[index] == deviceId) {
                    return index;
                }
            }
        }
        index = this.totalDevicesMapped;
        if (deviceId < this.MAX_FAST_DEVICEID) {
            this.deviceIdToplayerId[deviceId] = index;
        } else {
            this.logUtil.putF(new StringMaker().append("Added DeviceId: ").appendint(deviceId).append(" beyond fast Id list").toString(), this, "getPlayerForDevice");
        }
        this.playerIdToDeviceId[index] = deviceId;
        AnalogLocationInputFactory.getInstance().addPlayer(this.totalDevicesMapped);
        this.totalDevicesMapped++;
        this.logUtil.putF(new StringMaker().append("Added DeviceId: ").appendint(deviceId).append(" at: ").appendint(index).append(" Total: ").appendint(this.totalDevicesMapped).toString(), this, "getPlayerForDevice");
        return index;
    }
    

    public function getTotalDevicesInPlay():int {
        var total:int = 0;
        for (var index:int = int(this.totalDevicesMapped - 1); index >= 0; index--) {
            if (this.playersInPlay[index] == true) {
                total++;
            }
        }
        return total;
    }
    

    public function isPlayerInPlay(playerInputId:int):Boolean {
        return this.playersInPlay[playerInputId];
    }
    

    public function setPlayerInPlay(playerInputId:int):void {
        this.logUtil.putF(new StringMaker().append("Setting PlayerInPlay with playerInputId: ").appendint(playerInputId).toString(), this, "setPlayerInPlay");
        this.playersInPlay[playerInputId] = true;
    }
    

    public function setPlayerOutOfPlay(playerInputId:int):void {
        this.logUtil.putF(new StringMaker().append("Setting PlayerOutOfPlay with playerInputId: ").appendint(playerInputId).toString(), this, "setPlayerOutOfPlay");
        this.playersInPlay[playerInputId] = false;
    }
    

    public function getPlayersInPlay():Vector.<Boolean> {
        return this.playersInPlay;
    }
    }
}

