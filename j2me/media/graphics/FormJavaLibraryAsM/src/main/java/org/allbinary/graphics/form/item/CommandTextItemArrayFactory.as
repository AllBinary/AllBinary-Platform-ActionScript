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
package org.allbinary.graphics.form.item {
    import javax.microedition.lcdui.Command;
    import javax.microedition.lcdui.ImageItem;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.form.ScreenInfo;
    import org.allbinary.logic.VectorUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.util.visitor.Visitor;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class CommandTextItemArrayFactory {
        private var list:BasicArrayList = null;
        private var visitorInterface:Visitor = null;

        // Java field initializers run after the base constructor
        private function initFieldsCommandTextItemArrayFactory():void {
    this.list = new BasicArrayListD();
    
        }
    

    public function CommandTextItemArrayFactory(visitorInterface:Visitor) {
        super();
        this.initFieldsCommandTextItemArrayFactory();
        this.visitorInterface = visitorInterface;
    }
    

    public function getInstance3(vector:Object, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor):Vector.<ABCustomItem> {
        var vectorUtil:VectorUtil = VectorUtil.getInstance();
        var size:int = vectorUtil.getSize(vector);
        this.list.clear();
        var textItem:CommandTextItem = null;
        var priorityLimit:int = 7;
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        var isLargeEnoughDisplayForBigMenu:Boolean = (displayInfo.isPortrait() && displayInfo.getLastHeight() >= ScreenInfo.getInstance().MEDIUM_WIDTH) || (!displayInfo.isPortrait() && displayInfo.getLastWidth() >= ScreenInfo.getInstance().MEDIUM_WIDTH);
        if (!isLargeEnoughDisplayForBigMenu && size > 3) {
            priorityLimit = 3;
        }
        var command:Command = null;
        for (var index:int = 0; index < size; index++) {
            command = (vectorUtil.elementAt(vector, index) as Command);
            if (command.getPriority() < priorityLimit) {
                var aBoolean:* = (this.visitorInterface.visit(command) as *);
                if (Boolean(aBoolean)) {
                    textItem = new CommandTextItem(command, javax.microedition.lcdui.ImageItem.LAYOUT_DEFAULT, StringUtil.getInstance().EMPTY_STRING, backgroundBasicColor, foregroundBasicColor);
                    this.list.add(textItem);
                }
            }
        }
        var textItemArray:Vector.<ABCustomItem> = new Vector.<ABCustomItem>(this.list.size());
        var size2:int = textItemArray.length;
        for (index = 0; index < size2; index++) {
            textItemArray[index] = (this.list.objectArray[index] as ABCustomItem);
        }
        return textItemArray;
    }
    }
}

