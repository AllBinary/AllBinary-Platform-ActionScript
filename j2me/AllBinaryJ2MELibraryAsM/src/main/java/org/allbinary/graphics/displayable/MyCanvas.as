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
package org.allbinary.graphics.displayable {
    import org.allbinary.graphics.displayable.command.MyCommandInterface;
    import org.allbinary.graphics.displayable.command.MyCommandsFactory;
    import org.allbinary.input.TouchJ2ME;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.media.audio.Sound;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.util.ABStack;

    public class MyCanvas extends Canvas implements DisplayableInterface, MyCommandInterface {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        public var canvasStrings:CanvasStrings = null;
        public var stringUtil:StringUtil = null;
        public var displayInfo:DisplayInfoSingleton = null;
        private var name:String = null;
        private var childNameList:BasicArrayList = null;
        private var commandStack:ABStack = null;
        private var commandListener:CommandListener = null;
        private var paused:Boolean = false;
        private var touchME:TouchJ2ME = null;

        // Java field initializers run after the base constructor
        private function initFieldsMyCanvas():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.canvasStrings = CanvasStrings.getInstance();
    this.stringUtil = StringUtil.getInstance();
    this.displayInfo = DisplayInfoSingleton.getInstance();
    
    
    
    this.commandListener = NullCommandListener.NULL_COMMAND_LISTENER;
    this.paused = false;
    this.touchME = new TouchJ2ME();
        }
    

    public function MyCanvas(name:String, childNameList:BasicArrayList) {
        super();
        this.initFieldsMyCanvas();
        this.logUtil.putF(this.commonStrings.CONSTRUCTOR, this, this.commonStrings.CONSTRUCTOR);
        this.displayInfo.update(this, this.canvasStrings.CONSTRUCTOR);
        this.name = name;
        this.childNameList = childNameList;
        this.commandStack = StdUtil.getInstance().createStack();
    }
    

    override public function getWidth():int {
        return super.getWidth();
    }
    

    override public function getHeight():int {
        return super.getHeight();
    }
    

    override public function setFullScreenMode(mode:Boolean):void {
        super.setFullScreenMode(mode);
        this.displayInfo.update(this, this.canvasStrings.SET_FULL_SCREEN_MODE);
    }
    

    override public function sizeChanged(w:int, h:int):void {
        this.displayInfo.update(this, this.canvasStrings.SIZE_CHANGED);
    }
    

    public function getCommandStack():ABStack {
        return this.commandStack;
    }
    

    public function isCommand(command:Command):Boolean {
        return this.commandStack.contains(command);
    }
    

    override public function addCommand(command:Command):void {
        if (!this.commandStack.contains(command)) {
            this.commandStack.push(command);
            super.addCommand(command);
        }
    }
    

    override public function removeCommand(command:Command):void {
        this.commandStack.removeElement(command);
        super.removeCommand(command);
    }
    

    override public function removeAllCommands():void {
        var size:int = this.commandStack.size();
        for (var index:int = 0; index < size; index++) {
            super.removeCommand((this.commandStack.pop() as Command));
        }
    }
    

    override public function setCommandListener(l:CommandListener):void {
        super.setCommandListener(l);
        this.commandListener = l;
    }
    

    public function getCustomCommandListener():CommandListener {
        return this.commandListener;
    }
    

    public function isPaused():Boolean {
        return this.paused;
    }
    

    public function removePauseCommand():void {
        this.removeCommand(MyCommandsFactory.getInstance().PAUSE_COMMAND);
    }
    

    public function pause():void {
        this.logUtil.putF(this.commonStrings.START, this, this.canvasStrings.PAUSE);
        this.removePauseCommand();
        this.addCommand(MyCommandsFactory.getInstance().RESUME_COMMAND);
        this.setPaused(true);
    }
    

    public function unPause():void {
        this.logUtil.putF(this.commonStrings.START, this, this.canvasStrings.UN_PAUSE);
        this.removeCommand(MyCommandsFactory.getInstance().RESUME_COMMAND);
        this.addCommand(MyCommandsFactory.getInstance().PAUSE_COMMAND);
        this.setPaused(false);
    }
    

    public function process():void {
        this.displayInfo.process();
    }
    

    override public function paint(graphics:Graphics):void {
    }
    

    public function draw(graphics:Graphics):void {
    }
    

    public function hasChild(displayable:MyCanvas):Boolean {
        return this.childNameList.contains(displayable.name);
    }
    

    public function destroy():void {
        this.logUtil.putF("Destroyed MyCanvas", this, "destroy");
    }
    

    public function setPaused(isPaused:Boolean):void {
        this.paused = isPaused;
    }
    

    public function keyPressedByDevice(keyCode:int, deviceId:int):void {
    }
    

    public function keyRepeatedByDevice(keyCode:int, deviceId:int):void {
    }
    

    public function keyReleasedByDevice(keyCode:int, deviceId:int):void {
    }
    

    override public function pointerDragged(x:int, y:int):void {
        this.touchME.pointerDragged(x, y);
    }
    

    override public function pointerPressed(x:int, y:int):void {
        this.touchME.pointerPressed(x, y);
    }
    

    override public function pointerReleased(x:int, y:int):void {
        this.touchME.pointerReleased(x, y);
    }
    

    public function nextSong(nextSongSound:Sound, leftVolume:int, rightVolume:int):void {
    }
    }
}

