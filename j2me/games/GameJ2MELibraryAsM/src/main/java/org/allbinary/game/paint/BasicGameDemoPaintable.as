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
    import org.allbinary.graphics.paint.NullPaintable;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.graphics.paint.StatePaintable;

    public class BasicGameDemoPaintable extends StatePaintable {
        private var mainDemoStatePaintable:Paintable = null;
        private var ownershipPaintable:Paintable = null;
        private var helpPaintableInterface:Paintable = null;
        private var currentStatePaintable:Paintable = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicGameDemoPaintable():void {
    
    
    
    this.currentStatePaintable = NullPaintable.getInstance();
        }
    

    public function BasicGameDemoPaintable(mainDemoStatePaintable:Paintable, ownershipPaintable:Paintable, helpPaintableInterface:Paintable) {
        super();
        this.initFieldsBasicGameDemoPaintable();
        this.mainDemoStatePaintable = mainDemoStatePaintable;
        this.setCurrentStatePaintable(NullPaintable.getInstance());
        this.ownershipPaintable = ownershipPaintable;
        this.helpPaintableInterface = helpPaintableInterface;
    }
    

    override public function setState(state:int):void {
        if (state == 0) {
            this.setCurrentStatePaintable(this.getMainDemoStatePaintable());
        } else if (state == 1) {
            this.setCurrentStatePaintable(this.helpPaintableInterface);
        } else {
            this.setCurrentStatePaintable(this.ownershipPaintable);
        }
    }
    

    override public function paint(graphics:Graphics):void {
        this.getCurrentStatePaintable().paint(graphics);
    }
    

    public function getHelpPaintableInterface():Paintable {
        return this.helpPaintableInterface;
    }
    

    public function setCurrentStatePaintable(currentStatePaintable:Paintable):void {
        this.currentStatePaintable = currentStatePaintable;
    }
    

    public function getCurrentStatePaintable():Paintable {
        return this.currentStatePaintable;
    }
    

    public function getMainDemoStatePaintable():Paintable {
        return this.mainDemoStatePaintable;
    }
    }
}

