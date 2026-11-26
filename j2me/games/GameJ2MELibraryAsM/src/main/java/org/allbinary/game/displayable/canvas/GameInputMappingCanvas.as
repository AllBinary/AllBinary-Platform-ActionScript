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
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.game.input.GameKey;
    import org.allbinary.game.input.GameKeyFactory;
    import org.allbinary.game.input.Input;
    import org.allbinary.game.input.InputFactory;
    import org.allbinary.game.input.PlatformInputMappingFactory;
    import org.allbinary.game.input.mapping.InputMappingInterface;
    import org.allbinary.game.input.mapping.PersistentInputMapping;
    import org.allbinary.game.layer.AllBinaryGameLayerManager;
    import org.allbinary.game.paint.ColorFillBasePaintable;
    import org.allbinary.game.paint.ColorFillPaintableFactory;
    import org.allbinary.game.paint.help.HelpPaintable;
    import org.allbinary.game.paint.help.InputMappingHelpPaintable;
    import org.allbinary.graphics.paint.ProcessPaintable;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.util.BasicArrayList;
    import java.lang.JInteger;

    public class GameInputMappingCanvas extends GameCommandCanvas implements InputMappingInterface {
    public static const NAME:String = "GameInputMappingCanvas";
    private static var DISPLAY_value:Command;
    private static var DISPLAY_set:Boolean = false;
    public static function get DISPLAY():Command {
        if (!GameInputMappingCanvas.DISPLAY_set) {
            GameInputMappingCanvas.DISPLAY_set = true;
            GameInputMappingCanvas.DISPLAY_value = new Command("Controls", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
        }
        return GameInputMappingCanvas.DISPLAY_value;
    }
    private static var DEFAULT_value:Command;
    private static var DEFAULT_set:Boolean = false;
    public static function get DEFAULT():Command {
        if (!GameInputMappingCanvas.DEFAULT_set) {
            GameInputMappingCanvas.DEFAULT_set = true;
            GameInputMappingCanvas.DEFAULT_value = new Command("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
        }
        return GameInputMappingCanvas.DEFAULT_value;
    }
        private var paintable:ProcessPaintable = null;
        private var helpPaintable:InputMappingHelpPaintable = null;
        public var colorFillPaintable:ColorFillBasePaintable = null;
        private var inputMapping:PersistentInputMapping = null;
        private var NONE:GameKey = null;
        private var abeClientInformation:AbeClientInformationInterface = null;
        private var selectedGameKey:GameKey = null;
        private var selectedInput:Input = null;
        private var inputFactory:InputFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameInputMappingCanvas():void {
    
    
    
    
    this.NONE = GameKeyFactory.getInstance().NONE;
    
    this.selectedGameKey = this.NONE;
    this.selectedInput = this.NONE;
    this.inputFactory = InputFactory.getInstance();
        }
    

    public function GameInputMappingCanvas(abeClientInformation:AbeClientInformationInterface, commandListener:CommandListener, allBinaryGameLayerManager:AllBinaryGameLayerManager, helpPaintable:HelpPaintable) {
        super(commandListener, GameInputMappingCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor());
        this.initFieldsGameInputMappingCanvas();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        if (helpPaintable == null) {
            throw new JException("Exception", "Help Paintable Exception");
        }
        this.abeClientInformation = abeClientInformation;
        this.helpPaintable = (helpPaintable as InputMappingHelpPaintable);
        this.inputMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance();
        this.paintable = new ProcessPaintable();
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
    }
    

    override public function close():void {
        super.close();
        this.paintable.process();
        this.selectedGameKey = this.NONE;
        this.selectedInput = this.NONE;
        this.update();
    }
    

    override public function initCommands(cmdListener:CommandListener):void {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.addCommand(GameInputMappingCanvas.DEFAULT);
        this.addCommand(GameInputMappingInstructionsCanvas.DISPLAY);
        this.setCommandListener(cmdListener);
    }
    

    override public function keyPressed(keyCode:int):void {
        this.keyPressedByDevice(keyCode, 0);
    }
    

    override public function keyReleased(keyCode:int):void {
        this.keyReleasedByDevice(keyCode, 0);
    }
    

    override public function keyRepeated(keyCode:int):void {
        this.keyRepeatedByDevice(keyCode, 0);
    }
    

    override public function keyPressedByDevice(keyCode:int, deviceId:int):void {
        this.addGameKey(keyCode, false);
        super.keyPressedByDevice(keyCode, 0);
    }
    

    private function addGameKey(keyCode:int, repeated:Boolean):void {
        try {
            this.logUtil.putF(new StringMaker().append("Raw Device Key Code: ").append(JInteger.toHexString(keyCode)).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
            var gameKey:GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            var input:Input = this.inputFactory.getInstanceById(keyCode);
            this.processInputMapping(gameKey, input);
        } catch (e:*) {
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e);
        }
    }
    

    public function processInputMapping(gameKey:GameKey, input:Input):void {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("Start Passed GameKey: ");
        stringBuffer.append(this.stringUtil.toString1(gameKey));
        stringBuffer.append(" Input: ");
        stringBuffer.append(this.stringUtil.toString1(input));
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.PROCESS);
        if (this.selectedGameKey !== this.NONE) {
            this.gameActionCrud(gameKey, input);
        } else {
            this.setSelectedAction(gameKey);
        }
    }
    

    private function setSelectedAction(gameKey:GameKey):void {
        this.logUtil.putF(new StringMaker().append("Selected GameKey: ").append(this.stringUtil.toString1(gameKey)).toString(), this, "setSelectedAction");
        this.selectedGameKey = gameKey;
        this.selectedInput = this.NONE;
        this.helpPaintable.update(this.selectedGameKey, this.selectedInput);
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    private function gameActionCrud(gameKey:GameKey, input:Input):void {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("Start GameKey: ");
        stringBuffer.append(this.stringUtil.toString1(this.selectedGameKey));
        stringBuffer.append(" Input: ");
        stringBuffer.append(this.stringUtil.toString1(this.selectedInput));
        this.logUtil.putF(stringBuffer.toString(), this, "gameActionCrud");
        if (this.selectedInput === this.NONE) {
            var list:BasicArrayList = this.inputMapping.getInputMapping().getMappedInput(this.selectedGameKey);
            var isInputAlreadyMappedToSelectedAction:Boolean = list.contains(input);
            if (isInputAlreadyMappedToSelectedAction) {
                this.logUtil.putF(new StringMaker().append("Already Mapped Input: ").append(this.stringUtil.toString1(input)).toString(), this, "gameActionCrud");
                this.selectedInput = input;
                this.helpPaintable.update(this.selectedGameKey, this.selectedInput);
                this.repaintBehavior.onChangeRepaint(this);
            } else {
                this.addNewMapping(gameKey, input);
            }
        } else if (this.inputMapping.isDelete(input)) {
            this.deleteCurrentMapping();
        } else {
            this.setSelectedAction(gameKey);
        }
    }
    

    private function addNewMapping(gameKey:GameKey, input:Input):void {
        var METHOD_NAME:String = "addNewMapping";
        this.logUtil.putF(this.commonStrings.START, this, METHOD_NAME);
        var isInputAlreadyMapped:Boolean = this.inputMapping.getInputMapping().isMapped(input);
        if (!isInputAlreadyMapped && !this.inputMapping.isSystemInput(input)) {
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append("Add Key Mapping : GameKey: ");
            stringBuffer.append(this.stringUtil.toString1(this.selectedGameKey));
            stringBuffer.append(" Input: ");
            stringBuffer.append(this.stringUtil.toString1(this.selectedInput));
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            this.inputMapping.getInputMapping().add(this.selectedGameKey, input);
            this.selectedInput = input;
            this.update();
        } else {
            this.logUtil.putF("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to", this, METHOD_NAME);
            this.setSelectedAction(gameKey);
        }
    }
    

    private function deleteCurrentMapping():void {
        var METHOD_NAME:String = "deleteCurrentMapping";
        var list:BasicArrayList = this.inputMapping.getInputMapping().getMappedInput(this.selectedGameKey);
        if (list.size() > 1) {
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append("Start GameKey: ");
            stringBuffer.append("Remove Key Mapping: GameKey: ");
            stringBuffer.append(this.stringUtil.toString1(this.selectedGameKey));
            stringBuffer.append(" Input: ");
            stringBuffer.append(this.stringUtil.toString1(this.selectedInput));
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            this.inputMapping.getInputMapping().remove(this.selectedGameKey, this.selectedInput);
            this.selectedInput = this.NONE;
            this.update();
        } else {
            this.logUtil.putF("Can't Remove Last Key Mapping", this, METHOD_NAME);
        }
    }
    

    public function setDefault():void {
        this.inputMapping.setDefault(this.abeClientInformation);
        this.helpPaintable.update(this.NONE, this.NONE);
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    override public function update(...args):void {
        if (args.length == 0) {
            this.update_jo0();
            return;
        }
        super.update.apply(this, args);
    }

    private function update_jo0():void {
        this.inputMapping.update(this.abeClientInformation);
        this.helpPaintable.update(this.selectedGameKey, this.selectedInput);
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.colorFillPaintable.paint(graphics);
        this.helpPaintable.paint(graphics);
        this.paintable.paint(graphics);
        super.paint(graphics);
    }
    }
}

