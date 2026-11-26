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
package org.allbinary.game.layer.hud.event {
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import java.lang.JInteger;

    public class GameNotificationEvent extends AllBinaryEventObject {
        private var string:String = null;
        private var seconds:* = null;
        private var basicColor:BasicColor = null;
        private var removeable:* = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameNotificationEvent():void {
    this.string = StringUtil.getInstance().EMPTY_STRING;
    
    this.basicColor = BasicColorFactory.getInstance().BLACK;
    
        }
    

    public function GameNotificationEvent(anyType:Object, string:String, seconds:*, basicColor:BasicColor, permanent:*) {
        super(anyType);
        this.initFieldsGameNotificationEvent();
        this.setString(string);
        this.seconds = seconds;
        this.setBasicColorP(basicColor);
        this.removeable = permanent;
    }
    

    public function getString(...args):String {
        if (args.length == 0) {
            return this.getString_jo0();
        }
        throw new JException("IllegalArgumentException", "getString");
    }

    private function getString_jo0():String {
        return this.string;
    }
    

    public function getSeconds():* {
        return this.seconds;
    }
    

    public function getBasicColorP():BasicColor {
        return this.basicColor;
    }
    

    public function getPermanent():* {
        return this.removeable;
    }
    

    public function setString(string:String):void {
        this.string = string;
    }
    

    public function setBasicColorP(basicColor:BasicColor):void {
        this.basicColor = basicColor;
    }
    }
}

