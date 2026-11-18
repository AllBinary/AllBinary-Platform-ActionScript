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
package org.allbinary.game.terrain {
    import org.allbinary.math.Angle;
    import org.allbinary.math.AngleFactory;

    public class BasicTerrainInfo {
    private static var NULL_BASIC_TERRAIN_INFO_value:BasicTerrainInfo;
    private static var NULL_BASIC_TERRAIN_INFO_set:Boolean = false;
    public static function get NULL_BASIC_TERRAIN_INFO():BasicTerrainInfo {
        if (!BasicTerrainInfo.NULL_BASIC_TERRAIN_INFO_set) {
            BasicTerrainInfo.NULL_BASIC_TERRAIN_INFO_set = true;
            BasicTerrainInfo.NULL_BASIC_TERRAIN_INFO_value = new BasicTerrainInfo(AngleFactory.getInstance().NOT_ANGLE);
        }
        return BasicTerrainInfo.NULL_BASIC_TERRAIN_INFO_value;
    }
        private var angle:Angle = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicTerrainInfo():void {
    
        }
    

    public function BasicTerrainInfo(angle:Angle) {
        super();
        this.initFieldsBasicTerrainInfo();
        this.angle = angle;
    }
    

    public function getAngle():Angle {
        return this.angle;
    }
    

    public function setAngle(angle:Angle):void {
        this.angle = angle;
    }
    }
}

