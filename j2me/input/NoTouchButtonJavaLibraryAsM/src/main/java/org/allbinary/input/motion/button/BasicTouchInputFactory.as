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
package org.allbinary.input.motion.button {
    import org.allbinary.game.input.InputFactory;
    import org.allbinary.game.input.mapping.InputToGameKeyMapping;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class BasicTouchInputFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!BasicTouchInputFactory.instance_set) {
            BasicTouchInputFactory.instance_set = true;
            BasicTouchInputFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return BasicTouchInputFactory.instance_value;
    }
    private static function set instance(value:Object):void {
        BasicTouchInputFactory.instance_set = true;
        BasicTouchInputFactory.instance_value = value;
    }
        public var logUtil:LogUtil = null;
        public var SPECIAL_BUTTON_SIX:TouchButtonInput = null;
        public var SPECIAL_BUTTON_FIVE:TouchButtonInput = null;
        public var SPECIAL_BUTTON_FOUR:TouchButtonInput = null;
        public var SPECIAL_BUTTON_THREE:TouchButtonInput = null;
        public var SPECIAL_BUTTON_TWO:TouchButtonInput = null;
        public var SPECIAL_BUTTON_ONE:TouchButtonInput = null;
        public var UP:TouchButtonInput = null;
        public var LEFT:TouchButtonInput = null;
        public var RIGHT:TouchButtonInput = null;
        public var DOWN:TouchButtonInput = null;
        public var NONE:TouchButtonInput = null;
        private var initialized:Boolean = false;
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicTouchInputFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.SPECIAL_BUTTON_SIX = new TouchButtonInput(int(InputFactory.getInstance().MAX - 30), "Button 6");
    this.SPECIAL_BUTTON_FIVE = new TouchButtonInput(int(InputFactory.getInstance().MAX - 31), "Button 5");
    this.SPECIAL_BUTTON_FOUR = new TouchButtonInput(int(InputFactory.getInstance().MAX - 32), "Button 4");
    this.SPECIAL_BUTTON_THREE = new TouchButtonInput(int(InputFactory.getInstance().MAX - 33), "Button 3");
    this.SPECIAL_BUTTON_TWO = new TouchButtonInput(int(InputFactory.getInstance().MAX - 34), "Button 2");
    this.SPECIAL_BUTTON_ONE = new TouchButtonInput(int(InputFactory.getInstance().MAX - 35), "Button 1");
    this.UP = new TouchButtonInput(int(InputFactory.getInstance().MAX - 36), "Up Button");
    this.LEFT = new TouchButtonInput(int(InputFactory.getInstance().MAX - 37), "Left Button");
    this.RIGHT = new TouchButtonInput(int(InputFactory.getInstance().MAX - 38), "Right Button");
    this.DOWN = new TouchButtonInput(int(InputFactory.getInstance().MAX - 39), "Down Button");
    this.NONE = new TouchButtonInput(int(InputFactory.getInstance().MAX - 40), "No Button");
    this.initialized = false;
    this.list = new BasicArrayListD();
        }

        public function BasicTouchInputFactory() {
            super();
            this.initFieldsBasicTouchInputFactory();
        }
    

    public static function getInstance():BasicTouchInputFactory {
        if (BasicTouchInputFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            BasicTouchInputFactory.instance = new BasicTouchInputFactory();
        }
        return (BasicTouchInputFactory.instance as BasicTouchInputFactory);
    }
    

    public function init(inputToGameKeyMapping:InputToGameKeyMapping):void {
        if (!this.initialized) {
            this.initialized = true;
            this.list.add(this.UP);
            this.list.add(this.LEFT);
            this.list.add(this.RIGHT);
            this.list.add(this.DOWN);
            this.list.add(this.SPECIAL_BUTTON_TWO);
            this.list.add(this.SPECIAL_BUTTON_FOUR);
            this.list.add(this.SPECIAL_BUTTON_THREE);
            this.list.add(this.SPECIAL_BUTTON_ONE);
            this.list.add(this.SPECIAL_BUTTON_FIVE);
            this.list.add(this.SPECIAL_BUTTON_SIX);
            this.updateAllList(this.list, inputToGameKeyMapping);
        }
    }
    

    public function updateAll(inputToGameKeyMapping:InputToGameKeyMapping):void {
        this.updateAllList(this.getList(), inputToGameKeyMapping);
    }
    

    public function updateAllList(list:BasicArrayList, inputToGameKeyMapping:InputToGameKeyMapping):void {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START).appendint(list.size()).toString(), this, "updateAll");
        for (var index:int = int(list.size() - 1); index >= 0; index--) {
            var touchButtonInput:TouchButtonInput = (list.get_(index) as TouchButtonInput);
            touchButtonInput.update(inputToGameKeyMapping);
        }
    }
    

    public function getList():BasicArrayList {
        return this.list;
    }
    }
}

