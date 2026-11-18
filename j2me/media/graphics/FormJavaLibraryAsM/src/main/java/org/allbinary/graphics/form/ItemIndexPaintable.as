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

    public class ItemIndexPaintable {
    private static var instance_value:ItemIndexPaintable;
    private static var instance_set:Boolean = false;
    private static function get instance():ItemIndexPaintable {
        if (!ItemIndexPaintable.instance_set) {
            ItemIndexPaintable.instance_set = true;
            ItemIndexPaintable.instance_value = new ItemIndexPaintable();
        }
        return ItemIndexPaintable.instance_value;
    }
    

    public static function getInstance():ItemIndexPaintable {
        return ItemIndexPaintable.instance;
    }
    

    public function paint(graphics:Graphics, index:int, item:ABCustomItem, dx:int, dy:int):int {
        return 0;
    }
    }
}

