/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.graphics.form {
    import org.allbinary.graphics.form.item.ABCustomItem;

    public class ItemIndexDx {
    private static var instance_value:ItemIndexDx;
    private static var instance_set:Boolean = false;
    private static function get instance():ItemIndexDx {
        if (!ItemIndexDx.instance_set) {
            ItemIndexDx.instance_set = true;
            ItemIndexDx.instance_value = new ItemIndexDx();
        }
        return ItemIndexDx.instance_value;
    }
    

    public static function getInstance():ItemIndexDx {
        return ItemIndexDx.instance;
    }
    

    public function getDx(index:int, item:ABCustomItem, dx:int, dy:int):int {
        return 0;
    }
    }
}

