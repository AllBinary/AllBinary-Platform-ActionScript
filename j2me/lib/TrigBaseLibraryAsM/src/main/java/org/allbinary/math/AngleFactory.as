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
package org.allbinary.math {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonPhoneStrings;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;

    public class AngleFactory {
    private static var instance_value:AngleFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():AngleFactory {
        if (!AngleFactory.instance_set) {
            AngleFactory.instance_set = true;
            AngleFactory.instance_value = new AngleFactory();
        }
        return AngleFactory.instance_value;
    }
        public var logUtil:LogUtil = null;
        public var TOTAL_ANGLE:int = 0;
        public var QUARTER_TOTAL_ANGLE:int = 0;
        private var angleArray:Vector.<Angle> = null;
        private var NEGATIVE_ONE:int = 0;
        public var NOT_ANGLE:NamedAngle = null;
        public var DOWN:NamedAngle = null;
        public var UP:NamedAngle = null;
        public var LEFT:NamedAngle = null;
        public var RIGHT:NamedAngle = null;
        private var frameUtil:FrameUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsAngleFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.TOTAL_ANGLE = 360;
    this.QUARTER_TOTAL_ANGLE = 90;
    this.angleArray = new Vector.<Angle>(this.TOTAL_ANGLE);
    this.NEGATIVE_ONE = ((int(-1) << 16) >> 16);
    this.NOT_ANGLE = new NamedAngle(this.NEGATIVE_ONE, CommonStrings.getInstance().EMPTY);
    
    
    
    
    this.frameUtil = FrameUtil.getInstance();
        }
    

    public static function getInstance():AngleFactory {
        return AngleFactory.instance;
    }
    

    public function AngleFactory() {
        super();
        this.initFieldsAngleFactory();
        var commonPhoneStrings:CommonPhoneStrings = CommonPhoneStrings.getInstance();
        var total:int = ((int(this.angleArray.length) << 16) >> 16);
        this.UP = new NamedAngle(((int(0) << 16) >> 16), commonPhoneStrings.UP);
        this.angleArray[0] = this.UP;
        for (var index:int = 1; index < 90; index++) {
            this.angleArray[index] = new Angle(((int(index) << 16) >> 16));
        }
        this.RIGHT = new NamedAngle(((int(90) << 16) >> 16), commonPhoneStrings.RIGHT);
        this.angleArray[90] = this.RIGHT;
        for (index = 91; index < 180; index++) {
            this.angleArray[index] = new Angle(((int(index) << 16) >> 16));
        }
        this.DOWN = new NamedAngle(((int(180) << 16) >> 16), commonPhoneStrings.DOWN);
        this.angleArray[180] = this.DOWN;
        for (index = 181; index < 270; index++) {
            this.angleArray[index] = new Angle(((int(index) << 16) >> 16));
        }
        this.LEFT = new NamedAngle(((int(270) << 16) >> 16), commonPhoneStrings.LEFT);
        this.angleArray[270] = this.LEFT;
        for (index = 271; index < total; index++) {
            this.angleArray[index] = new Angle(((int(index) << 16) >> 16));
        }
    }
    

    public function getAt(index:int):Angle {
        var adjustedIndex:int = this.frameUtil.adjustAngleToFrameAngle(index);
        return this.angleArray[adjustedIndex];
    }
    

    public function getClosestDirection(angle:int):Angle {
        if ((angle >= 315 && angle < 360) || (angle >= 0 && angle < 45)) {
            return this.UP;
        } else if (angle >= 45 && angle < 135) {
            return this.RIGHT;
        } else if (angle >= 135 && angle < 225) {
            return this.DOWN;
        } else if (angle >= 225 && angle < 315) {
            return this.LEFT;
        }
        throw new JException("RuntimeException", "");
    }
    

    public function getGeneralDirection():Angle {
        return this.NOT_ANGLE;
    }
    

    public static function main(args:Vector.<String>):void {
        var stringMaker:StringMaker = new StringMaker();
        var angleFactory:AngleFactory = AngleFactory.getInstance();
        for (var index:int = 0; index < 360; index++) {
            stringMaker.appendint(index).append(CommonSeps.getInstance().FORWARD_SLASH).appendshort(angleFactory.getClosestDirection(index).getValue()).append(CommonSeps.getInstance().NEW_LINE);
        }
        LogUtil.getInstance().putF(stringMaker.toString(), "main", "main");
    }
    }
}

