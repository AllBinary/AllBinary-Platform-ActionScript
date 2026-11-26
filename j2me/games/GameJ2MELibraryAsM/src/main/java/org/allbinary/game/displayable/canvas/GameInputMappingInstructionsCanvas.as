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
package org.allbinary.game.displayable.canvas {
    import javax.microedition.lcdui.Command;
    import javax.microedition.lcdui.CommandListener;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.game.layer.AllBinaryGameLayerManager;
    import org.allbinary.game.paint.ColorFillBasePaintable;
    import org.allbinary.game.paint.ColorFillPaintableFactory;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.draw.DrawStringUtil;
    import org.allbinary.logic.string.StringUtil;

    public class GameInputMappingInstructionsCanvas extends GameCommandCanvas {
    private static var DISPLAY_value:Command;
    private static var DISPLAY_set:Boolean = false;
    public static function get DISPLAY():Command {
        if (!GameInputMappingInstructionsCanvas.DISPLAY_set) {
            GameInputMappingInstructionsCanvas.DISPLAY_set = true;
            GameInputMappingInstructionsCanvas.DISPLAY_value = new Command("Help", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
        }
        return GameInputMappingInstructionsCanvas.DISPLAY_value;
    }
    private static var CLOSE_value:Command;
    private static var CLOSE_set:Boolean = false;
    public static function get CLOSE():Command {
        if (!GameInputMappingInstructionsCanvas.CLOSE_set) {
            GameInputMappingInstructionsCanvas.CLOSE_set = true;
            GameInputMappingInstructionsCanvas.CLOSE_value = new Command("Close", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
        }
        return GameInputMappingInstructionsCanvas.CLOSE_value;
    }
    public static const NAME:String = "GameInputMappingInstructionsCanvas";
        private var drawStringUtil:DrawStringUtil = null;
        public var TITLE:String = null;
        private var instructions:Vector.<String> = null;
        private var colorFillPaintable:ColorFillBasePaintable = null;
        private var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGameInputMappingInstructionsCanvas():void {
    this.drawStringUtil = DrawStringUtil.getInstance();
    this.TITLE = "Input Instructions";
    this.instructions = new <String>["Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", StringUtil.getInstance().EMPTY_STRING, "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key."];
    
    this.anchor = Anchor.TOP_LEFT;
        }
    

    public function GameInputMappingInstructionsCanvas(commandListener:CommandListener, allBinaryGameLayerManager:AllBinaryGameLayerManager) {
        super(commandListener, GameInputMappingInstructionsCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor());
        this.initFieldsGameInputMappingInstructionsCanvas();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
    }
    

    override public function initCommands(cmdListener:CommandListener):void {
        this.removeAllCommands();
        this.addCommand(GameInputMappingInstructionsCanvas.CLOSE);
        this.setCommandListener(cmdListener);
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        this.colorFillPaintable.paint(graphics);
        var halfWidth:int = this.displayInfo.getLastHalfWidth();
        var beginWidth:int = (graphics.getFont().stringWidth(this.TITLE) >> 1);
        graphics.setColor(this.foregroundColor);
        graphics.drawString(this.TITLE, int(halfWidth - beginWidth), this.fontHeight, this.anchor);
        this.drawStringUtil.drawCenterStrings(graphics, this.instructions, this.displayInfo.getLastWidth(), this.fontHeight, halfWidth, 3 * this.fontHeight);
        super.paint(graphics);
    }
    }
}

