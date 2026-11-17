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

    public class AngleIncrementInfoFactory {
    private static var instance_value:AngleIncrementInfoFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():AngleIncrementInfoFactory {
        if (!AngleIncrementInfoFactory.instance_set) {
            AngleIncrementInfoFactory.instance_set = true;
            AngleIncrementInfoFactory.instance_value = new AngleIncrementInfoFactory();
        }
        return AngleIncrementInfoFactory.instance_value;
    }
        private var angleIncrementInfo:Vector.<AngleIncrementInfo> = null;

        // Java field initializers run after the base constructor
        private function initFieldsAngleIncrementInfoFactory():void {
    this.angleIncrementInfo = new Vector.<AngleIncrementInfo>(AngleFactory.getInstance().TOTAL_ANGLE);
        }

        public function AngleIncrementInfoFactory() {
            super();
            this.initFieldsAngleIncrementInfoFactory();
        }
    

    public static function getInstance():AngleIncrementInfoFactory {
        return AngleIncrementInfoFactory.instance;
    }
    

    public function getAt(angleIncrement:int):AngleIncrementInfo {
        var halfAngleIncrement:int = (angleIncrement >> 1);
        var angleIncrementInfo:AngleIncrementInfo = null;
        var angleIncrementInfoCanBeNull:AngleIncrementInfo = this.angleIncrementInfo[halfAngleIncrement];
        if (angleIncrementInfoCanBeNull == null) {
            angleIncrementInfo = new AngleIncrementInfo(angleIncrement);
            this.angleIncrementInfo[halfAngleIncrement] = angleIncrementInfo;
            return angleIncrementInfo;
        } else {
            angleIncrementInfo = angleIncrementInfoCanBeNull;
        }
        return angleIncrementInfo;
    }
    }
}

