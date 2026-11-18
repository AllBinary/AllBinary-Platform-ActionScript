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
package org.allbinary.midlet {
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.system.Memory;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.util.ABHashtable;

    public class AllBinaryMidlet extends MIDlet implements CommandListener {
    private static var NULL_ALLBINARY_MIDLET_value:Object;
    private static var NULL_ALLBINARY_MIDLET_set:Boolean = false;
    private static function get NULL_ALLBINARY_MIDLET():Object {
        if (!AllBinaryMidlet.NULL_ALLBINARY_MIDLET_set) {
            AllBinaryMidlet.NULL_ALLBINARY_MIDLET_set = true;
            AllBinaryMidlet.NULL_ALLBINARY_MIDLET_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return AllBinaryMidlet.NULL_ALLBINARY_MIDLET_value;
    }
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var SET_DISPLAY:String = null;
        private var SETTING_:String = null;
        private var _DISPLAY_:String = null;
        private var SETTING_NO_TITLE:String = null;
        private var hashtable:ABHashtable = null;
        private var midletDestroyed:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryMidlet():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.SET_DISPLAY = "setDisplay";
    this.SETTING_ = "Setting: ";
    this._DISPLAY_ = " Display: ";
    this.SETTING_NO_TITLE = "Setting: No Title, Display: ";
    this.hashtable = StdUtil.getInstance().createHashtable();
    this.midletDestroyed = false;
        }
    

    public static function getNullInstance():AllBinaryMidlet {
        if (AllBinaryMidlet.NULL_ALLBINARY_MIDLET == NullUtil.getInstance().NULL_OBJECT) {
            AllBinaryMidlet.NULL_ALLBINARY_MIDLET = new AllBinaryMidlet();
        }
        return (AllBinaryMidlet.NULL_ALLBINARY_MIDLET as AllBinaryMidlet);
    }
    

    public function AllBinaryMidlet() {
        super();
        this.initFieldsAllBinaryMidlet();
        this.logUtil.putF(this.commonStrings.CONSTRUCTOR, this, "AllBinaryMidlet::AllBinaryMidlet");
    }
    

    public function setDisplay(newDisplay:Displayable):void {
        var title:String = StringUtil.getInstance().EMPTY_STRING;
        if (newDisplay != NullCanvas.NULL_CANVAS) {
            title = newDisplay.getTitle();
            this.logUtil.putF(new StringMaker().append(this.SETTING_).append(title).append(this._DISPLAY_).append(StringUtil.getInstance().toString1(newDisplay)).toString(), this, this.SET_DISPLAY);
        }
        var display:Display = this.getDisplay();
        display.setCurrent(newDisplay);
    }
    

    public function getDisplay():Display {
        return Display.getDisplay(this);
    }
    

    public function getCurrentDisplayable():Displayable {
        return Display.getDisplay(this).getCurrent();
    }
    

    public function setDestroyed(destroyed:Boolean):void {
        this.midletDestroyed = destroyed;
    }
    

    public function isDestroyed():Boolean {
        return this.midletDestroyed;
    }
    

    override public function startApp():void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    override public function pauseApp():void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public function destroyAppInRunnable(unconditional:Boolean, isProgress:Boolean):void {
    }
    

    override public function destroyApp(unconditional:Boolean):void {
        var METHOD_NAME:String = "AllBinaryMidlet::destroyApp";
        try {
            this.logUtil.putF(this.commonStrings.START, this, METHOD_NAME);
            PreLogUtil.put(Memory.getInfo(), this, METHOD_NAME);
            this.setDestroyed(true);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, METHOD_NAME, e);
        }
    }
    

    public function setStartStateHashtable(hashtable:ABHashtable):void {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, "setStartStateHashtable");
        this.hashtable = hashtable;
    }
    

    public function getStartStateHashtable():ABHashtable {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString1(this.hashtable)).toString(), this, "getStartStateHashtable");
        return this.hashtable;
    }
    

    public function getCurrentStateHashtable():ABHashtable {
        this.logUtil.putF(this.commonStrings.START, this, "getStateHashtable");
        return StdUtil.getInstance().NULL_TABLE;
    }
    

    override public function commandAction(command:Command, displayable:Displayable):void {
    }
    }
}

