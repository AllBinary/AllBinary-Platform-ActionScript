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
    import javax.microedition.lcdui.CommandListener;
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.J2MEUtil;
    import org.allbinary.game.displayable.canvas.GameCommandCanvas;
    import org.allbinary.game.input.Input;
    import org.allbinary.game.input.InputFactory;
    import org.allbinary.game.input.PlatformKeyFactory;
    import org.allbinary.game.input.event.RawKeyEventListener;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.form.item.validation.TextItemVisitor;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonSeps;

    public class CustomTextBox extends GameCommandCanvas implements RawKeyEventListener {
        private var textFieldItem:ABTextFieldItem = null;
        private var inputFactory:InputFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsCustomTextBox():void {
    
    this.inputFactory = InputFactory.getInstance();
        }
    

    public function CustomTextBox(cmdListener:CommandListener, label:String, text:String, maxSize:int, constraints:int, font:Font, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(cmdListener, label, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsCustomTextBox();
        var stringUtil:StringUtil = StringUtil.getInstance();
        var textFieldItem:ABTextFieldItem = new ABTextFieldItem(this, new TextItemVisitor(), stringUtil.EMPTY_STRING, stringUtil.EMPTY_STRING, maxSize, 0, stringUtil.EMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor);
        textFieldItem.setString(text);
        this.textFieldItem = textFieldItem;
        this.setTitle(label);
    }
    

    public function submit(...args):void {
        if (args.length == 0) {
            this.submit_jo0();
            return;
        }
        throw new JException("IllegalArgumentException", "submit");
    }

    private function submit_jo0():void {
    }
    

    public function onEventRaw(keyCode:int, deviceId:int, repeated:Boolean):void {
        this.logUtil.putF(new StringMaker().append(this.commonStrings.START).appendint(keyCode).toString(), this, "onEvent");
        this.keyPressedByDevice(keyCode, deviceId);
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
        try {
            this.logUtil.putF(new StringMaker().append(CommonSeps.getInstance().SPACE).appendint(keyCode).toString(), this, this.gameInputStrings.KEY_PRESSED);
            var platformKeyFactory:PlatformKeyFactory = PlatformKeyFactory.getInstance();
            var input:Input = this.inputFactory.getInstanceById(keyCode);
            if (platformKeyFactory.isSubmission(input)) {
                this.submit();
            } else {
                this.textFieldItem.keyPressed(keyCode);
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.KEY_PRESSED, e);
        }
    }
    

    override public function keyReleasedByDevice(keyCode:int, deviceId:int):void {
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        graphics.setColor(this.backgroundColor);
        graphics.fillRect(0, 0, this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight());
        graphics.setColor(this.foregroundColor);
        if (!J2MEUtil.isJ2ME()) {
            graphics.drawString(this.getTitle(), 8, 1, 0);
        }
        this.paintXY(graphics, 8, int(graphics.getFont().getHeight() + 2));
        super.paint(graphics);
    }
    

    public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.textFieldItem.paintXY(graphics, x, y);
    }
    

    public function getTextFieldItem():ABTextFieldItem {
        return this.textFieldItem;
    }
    }
}

