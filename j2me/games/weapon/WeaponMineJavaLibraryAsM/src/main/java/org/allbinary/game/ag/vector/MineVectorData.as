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
package org.allbinary.game.ag.vector {

    public class MineVectorData {
    private static var points_value:Vector.<Vector.<Vector.<int>>>;
    private static var points_set:Boolean = false;
    public static function get points():Vector.<Vector.<Vector.<int>>> {
        if (!MineVectorData.points_set) {
            MineVectorData.points_set = true;
            MineVectorData.points_value = new <Vector.<Vector.<int>>>[new <Vector.<int>>[new <int>[10, 5], new <int>[2, 6], new <int>[1000, 1000], new <int>[2, 2], new <int>[10, 9], new <int>[1000, 1000], new <int>[10, 2], new <int>[2, 9], new <int>[1000, 1000], new <int>[2, 5], new <int>[10, 6], new <int>[1000, 1000], new <int>[7, 9], new <int>[5, 2], new <int>[1000, 1000], new <int>[7, 2], new <int>[5, 9], new <int>[1000, 1000]]];
        }
        return MineVectorData.points_value;
    }
    public static function set points(value:Vector.<Vector.<Vector.<int>>>):void {
        MineVectorData.points_set = true;
        MineVectorData.points_value = value;
    }
    

    public function MineVectorData() {
        super();
    }
    }
}

