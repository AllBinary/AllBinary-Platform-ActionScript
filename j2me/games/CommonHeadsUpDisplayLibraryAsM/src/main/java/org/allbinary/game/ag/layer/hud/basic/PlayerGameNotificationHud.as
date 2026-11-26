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
package org.allbinary.game.ag.layer.hud.basic {
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.business.advertisement.GameAdStateFactory;
    import org.allbinary.canvas.Processor;
    import org.allbinary.game.GameAdState;
    import org.allbinary.game.ag.layer.hud.basic.notification.GameNotification;
    import org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud;
    import org.allbinary.game.layer.hud.event.GameNotificationEventHandler;
    import org.allbinary.graphics.CustomGPoint;
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.time.GameTickTimeDelayHelper;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import org.allbinary.time.TimeDelayHelper;
    import org.allbinary.util.CircularIndexUtil;
    import java.lang.JInteger;

    public class PlayerGameNotificationHud extends GameNotificationHud implements UpdateMyFontInterface {
        private var gameTickTimeDelayHelper:GameTickTimeDelayHelper = null;
        private var EMPTY_STRING:String = null;
        private var displayInfo:DisplayInfoSingleton = null;
        private var timeDelayHelper:TimeDelayHelper = null;
        private var circularIndexUtil:CircularIndexUtil = null;
        private var gameNotification:GameNotification = null;
        private var permanentGameNotification:GameNotification = null;
        private var setAndRemoveProcessor:Processor = null;
        private var nextUnremoveableProcessor:Processor = null;
        private var processor:Processor = null;
        private var PERMANENT_GAME_NOTIFICATION:String = null;
        private var lastString:String = null;
        private var string:String = null;
        private var point:CustomGPoint = null;
        private var width:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsPlayerGameNotificationHud():void {
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.timeDelayHelper = new TimeDelayHelper(0);
    
    this.gameNotification = new GameNotification();
    this.permanentGameNotification = new GameNotification();
    this.setAndRemoveProcessor = new SetAndRemoveProcessor(this);
    this.nextUnremoveableProcessor = new NextUnremoveableProcessor(this);
    this.processor = Processor.getInstance();
    this.PERMANENT_GAME_NOTIFICATION = "Permanent Game Notification: ";
    this.lastString = StringUtil.getInstance().EMPTY_STRING;
    this.string = this.EMPTY_STRING;
    this.point = CustomGPoint.NULL_CUSTOM_POINT;
    this.width = 0;
        }
    

    public function PlayerGameNotificationHud(location:int, direction:int, bufferZone:int, basicColor:BasicColor) {
        super(location, direction, bufferZone, basicColor);
        this.initFieldsPlayerGameNotificationHud();
        this.circularIndexUtil = CircularIndexUtil.createInstance(0);
        var gameNotificationEventHandler:GameNotificationEventHandler = GameNotificationEventHandler.getInstance();
        gameNotificationEventHandler.removeAllListeners();
        gameNotificationEventHandler.addListenerInterface(this);
    }
    

    override public function updateMeasurement(graphics:Graphics):void {
        try {
            super.updateMeasurement(graphics);
            var font:Font = graphics.getFont();
            this.width = font.stringWidth(this.string);
            this.processor.process();
            this.processor = Processor.getInstance();
        } catch (e:*) {
            var logUtil:LogUtil = LogUtil.getInstance();
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e);
        }
    }
    

    override public function getPoint(x:int, y:int):GPoint {
        this.point = CustomGPoint.getInstance3(0, 0);
        this.point.setX(x);
        this.point.setY(y);
        return this.point;
    }
    

    override public function add(...args):* {
        if (args.length == 4) {
            return this.add_jo4(args[0], args[1], args[2], args[3]);
        }
        return super.add.apply(this, args);
    }

    private function add_jo4(string:String, seconds:*, basicColor:BasicColor, permanent:*):void {
        if (Boolean(permanent)) {
            if (this.lastString != string) {
                this.lastString = string;
                this.logUtil.putF(new StringMaker().append(this.PERMANENT_GAME_NOTIFICATION).append(string).toString(), this, this.commonStrings.ADD);
            }
            this.permanentGameNotification.add(string, seconds, basicColor);
            this.circularIndexUtil.setSize(this.permanentGameNotification.getSize());
        } else {
            this.gameNotification.add(string, seconds, basicColor);
        }
    }
    

    override public function processTick(...args):void {
        if (args.length == 0) {
            this.processTick_jo0();
            return;
        }
        super.processTick.apply(this, args);
    }

    private function processTick_jo0():void {
        if (this.timeDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            var gameAdState:GameAdState = GameAdStateFactory.getInstance().getCurrentInstance();
            if (gameAdState.isShowingAtLocation(this.getLocation())) {
                this.offsetY = -54;
            } else {
                this.offsetY = 0;
            }
            if (this.gameNotification.getSize() > 0) {
                this.setAndRemove();
            } else if (this.permanentGameNotification.getSize() > 0) {
                this.setNextUnremoveable();
            } else {
                this.string = this.EMPTY_STRING;
            }
        }
    }
    

    private function setAndRemove():void {
        this.string = (this.gameNotification.stringList.removeAt(0) as String);
        this.processor = this.setAndRemoveProcessor;
    }
    

    public function setAndRemoveProcess():void {
        this.setX((int(this.displayInfo.getLastWidth() - this.width)) >> 1);
        this.point.setX(this.getX());
        this.point.setY(this.getY());
        var time:* = (this.gameNotification.timeList.removeAt(0) as *);
        var iTime:int = int(int(time) * 1000);
        if (iTime == 0) {
            iTime = 500;
        }
        this.timeDelayHelper.delay = iTime;
        this.setBasicColorP((this.gameNotification.colorList.removeAt(0) as BasicColor));
    }
    

    private function setNextUnremoveable():void {
        var index:int = this.circularIndexUtil.getIndex();
        this.string = (this.permanentGameNotification.stringList.objectArray[index] as String);
        this.processor = this.nextUnremoveableProcessor;
    }
    

    public function setNextUnremoveableProcess():void {
        var index:int = this.circularIndexUtil.getIndex();
        this.setX((int(this.displayInfo.getLastWidth() - this.width)) >> 1);
        this.point.setX(this.getX());
        this.point.setY(this.getY());
        var time:* = (this.permanentGameNotification.timeList.objectArray[index] as *);
        this.timeDelayHelper.delay = int(int(time) * 1000);
        this.setBasicColorP((this.permanentGameNotification.colorList.objectArray[index] as BasicColor));
        this.circularIndexUtil.next();
    }
    

    override public function clear(...args):void {
        if (args.length == 0) {
            this.clear_jo0();
            return;
        }
        super.clear.apply(this, args);
    }

    private function clear_jo0():void {
        this.gameNotification.clear();
        this.permanentGameNotification.clear();
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
        super.paintString(graphics, this.string);
    }
    }
}

