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
package org.allbinary.game.score.displayable {
    import javax.microedition.lcdui.CommandListener;
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.Graphics;
    import javax.microedition.lcdui.TextField;
    import org.allbinary.PostGameCommandFactory;
    import org.allbinary.game.GameInfo;
    import org.allbinary.game.score.HighScore;
    import org.allbinary.game.score.HighScoresHelperBaseInterface;
    import org.allbinary.game.score.HighScoresFactoryInterface;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.form.item.CustomTextBox;
    import org.allbinary.graphics.paint.NullPaintable;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.graphics.paint.SimpleTextPaintable;
    import org.allbinary.input.event.VirtualKeyboardEventHandler;
    import org.allbinary.logic.system.os.GenericOperatingSystem;
    import org.allbinary.logic.system.os.OperatingSystemFactory;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory;

    public class HighScoreTextBox extends CustomTextBox {
        private var virtualKeyboardEventHandler:VirtualKeyboardEventHandler = null;
        private var highScoreUtil:HighScoreUtil = null;
        private var pleaseWait:Paintable = null;
        private var paintable:Paintable = null;
        public var submitted:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsHighScoreTextBox():void {
    this.virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance();
    
    this.pleaseWait = new SimpleTextPaintable(this.commonStrings.PLEASE_WAIT, BasicColorFactory.getInstance().WHITE);
    this.paintable = NullPaintable.getInstance();
    this.submitted = false;
        }
    

    public function HighScoreTextBox(highScoresFactoryInterface:HighScoresFactoryInterface, highScoresHelper:HighScoresHelperBaseInterface, abeClientInformation:AbeClientInformationInterface, gameInfo:GameInfo, cmdListener:CommandListener, name:String, highScore:HighScore, backgrounBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(cmdListener, "New High Score Enter Name:", name, 12, TextField.ANY, Font.getDefaultFont(), backgrounBasicColor, foregroundBasicColor);
        this.initFieldsHighScoreTextBox();
        this.highScoreUtil = new HighScoreUtil(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore);
        var operatingSystemInterface:GenericOperatingSystem = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
        if (operatingSystemInterface.isOverScan()) {
            var username:String = InApplicationPurchaseFactory.getInstance().getUserName();
            this.getTextFieldItem().setString(username);
        }
    }
    

    override public function initCommands(cmdListener:CommandListener):void {
        this.removeAllCommands();
        PostGameCommandFactory.getInstance().addCommands(this);
        this.addCommand(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND);
        this.setCommandListener(cmdListener);
    }
    

    override public function open():void {
        this.virtualKeyboardEventHandler.open();
        this.paintable = NullPaintable.getInstance();
        super.open();
    }
    

    override public function close():void {
        this.virtualKeyboardEventHandler.close();
        this.paintable = this.pleaseWait;
        this.repaintBehavior.onChangeRepaint(this);
        super.close();
        this.removeCommand(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND);
        this.update();
        if (this.submitted) {
            this.highScoreUtil.saveHighScore();
        } else {
        }
        this.paintable = NullPaintable.getInstance();
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
        var name:String = this.getTextFieldItem().getString();
        this.highScoreUtil.update(name);
        super.update();
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        super.paint(graphics);
        this.paintable.paint(graphics);
    }
    

    public function saveHighScore():void {
        this.highScoreUtil.saveHighScore();
    }
    

    override public function submit(...args):void {
        if (args.length == 0) {
            this.submit_jo0();
            return;
        }
        super.submit.apply(this, args);
    }

    private function submit_jo0():void {
        this.highScoreUtil.submit(this);
    }
    }
}

