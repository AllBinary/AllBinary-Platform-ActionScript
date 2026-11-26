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
package org.allbinary.game.paint {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.paint.Paintable;

    public class MainGameDemoStatePaintable extends Paintable {
        private var ownershipPaintableInterface:Paintable = null;
        private var menuPaintableInterface:Paintable = null;

        // Java field initializers run after the base constructor
        private function initFieldsMainGameDemoStatePaintable():void {
    
    
        }
    

    public function MainGameDemoStatePaintable(ownershipPaintableInterface:Paintable, menuPaintableInterface:Paintable) {
        super();
        this.initFieldsMainGameDemoStatePaintable();
        this.ownershipPaintableInterface = ownershipPaintableInterface;
        this.menuPaintableInterface = menuPaintableInterface;
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.menuPaintableInterface.paint(graphics);
        this.ownershipPaintableInterface.paint(graphics);
    }
    

    public function getOwnershipPaintableInterface():Paintable {
        return this.ownershipPaintableInterface;
    }
    

    public function getMenuPaintableInterface():Paintable {
        return this.menuPaintableInterface;
    }
    }
}

