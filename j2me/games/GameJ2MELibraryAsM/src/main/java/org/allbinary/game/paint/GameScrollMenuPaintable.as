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
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.ColorChangeEventHandler;
    import org.allbinary.graphics.color.ColorChangeListener;
    import org.allbinary.graphics.form.FormPaintable;
    import org.allbinary.graphics.form.ScrollSelectionForm;
    import org.allbinary.graphics.form.item.ABStringComponent;
    import org.allbinary.graphics.form.item.ABTextItem;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.logic.util.event.AllBinaryEventObject;

    public class GameScrollMenuPaintable extends BasicGameDemoPaintable implements ColorChangeListener {
    

    public function GameScrollMenuPaintable(mainDemoStatePaintable:Paintable, ownershipPaintable:Paintable, helpPaintableInterface:Paintable, basicColor:BasicColor) {
        super(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface);
        this.setColor(basicColor);
        ColorChangeEventHandler.getInstance().addListenerInterface(this);
    }
    

    override public function setState(state:int):void {
        this.setCurrentStatePaintable(this.getMainDemoStatePaintable());
    }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
    }
    

    public function setColor(basicColor:BasicColor):void {
        var mainGameDemoStatePaintable:MainGameDemoStatePaintable = (this.getMainDemoStatePaintable() as MainGameDemoStatePaintable);
        var formPaintable:FormPaintable = (mainGameDemoStatePaintable.getMenuPaintableInterface() as FormPaintable);
        var scrollSelectionForm:ScrollSelectionForm = (formPaintable.getForm() as ScrollSelectionForm);
        mainGameDemoStatePaintable.getOwnershipPaintableInterface().setBasicColorP(basicColor);
        scrollSelectionForm.setButtonBasicColor(basicColor);
        var item:ABTextItem = null;
        var stringComponent:ABStringComponent = null;
        for (var index:int = int(scrollSelectionForm.size() - 1); index >= 0; index--) {
            item = (scrollSelectionForm.get_(index) as ABTextItem);
            stringComponent = item.getLabelStringComponent();
            if (stringComponent != null) {
                stringComponent.setForegroundBasicColor(basicColor);
            }
        }
    }
    }
}

