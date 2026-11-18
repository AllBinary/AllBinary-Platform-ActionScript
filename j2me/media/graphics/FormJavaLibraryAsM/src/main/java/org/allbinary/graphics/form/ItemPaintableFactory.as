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
package org.allbinary.graphics.form {

    public class ItemPaintableFactory extends ItemPaintable {
    private static var instance_value:ItemPaintableFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():ItemPaintableFactory {
        if (!ItemPaintableFactory.instance_set) {
            ItemPaintableFactory.instance_set = true;
            ItemPaintableFactory.instance_value = new ItemPaintableFactory();
        }
        return ItemPaintableFactory.instance_value;
    }
    

    public static function getInstance():ItemPaintableFactory {
        return ItemPaintableFactory.instance;
    }
    

    public function getInstanceItemPaintable(paintableForm:PaintableForm):ItemPaintable {
        return ItemPaintableFactory.instance;
    }
    }
}

