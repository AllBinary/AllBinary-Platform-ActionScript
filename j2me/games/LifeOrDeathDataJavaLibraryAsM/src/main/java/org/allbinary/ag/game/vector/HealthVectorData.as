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
package org.allbinary.ag.game.vector {

    public class HealthVectorData {
    private static var points_value:Vector.<Vector.<Vector.<int>>>;
    private static var points_set:Boolean = false;
    public static function get points():Vector.<Vector.<Vector.<int>>> {
        if (!HealthVectorData.points_set) {
            HealthVectorData.points_set = true;
            HealthVectorData.points_value = new <Vector.<Vector.<int>>>[new <Vector.<int>>[new <int>[2, 1], new <int>[3, 2], new <int>[3, 2], new <int>[4, 1], new <int>[4, 1], new <int>[5, 1], new <int>[5, 1], new <int>[6, 2], new <int>[6, 2], new <int>[6, 3], new <int>[6, 3], new <int>[3, 6], new <int>[3, 6], new <int>[0, 3], new <int>[0, 3], new <int>[0, 2], new <int>[0, 2], new <int>[1, 1], new <int>[1, 1], new <int>[2, 1], new <int>[1000, 1000]]];
        }
        return HealthVectorData.points_value;
    }
    }
}

