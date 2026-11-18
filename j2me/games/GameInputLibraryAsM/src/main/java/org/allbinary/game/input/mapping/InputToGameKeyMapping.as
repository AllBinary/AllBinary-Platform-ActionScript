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
package org.allbinary.game.input.mapping {
    import org.allbinary.game.input.GameKey;
    import org.allbinary.game.input.GameKeyFactory;
    import org.allbinary.game.input.Input;
    import org.allbinary.game.input.InputFactory;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class InputToGameKeyMapping extends InputMapping {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!InputToGameKeyMapping.instance_set) {
            InputToGameKeyMapping.instance_set = true;
            InputToGameKeyMapping.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return InputToGameKeyMapping.instance_value;
    }
        private var gameKeyFactory:GameKeyFactory = null;
        private var mappedGameKeys:Vector.<GameKey> = null;
        private var platformToGameKeyMapping:Vector.<GameKey> = null;
        public var negativePlatformToGameKeyMapping:Vector.<GameKey> = null;

        // Java field initializers run after the base constructor
        private function initFieldsInputToGameKeyMapping():void {
    this.gameKeyFactory = GameKeyFactory.getInstance();
    this.mappedGameKeys = new <GameKey>[this.gameKeyFactory.UP, this.gameKeyFactory.DOWN, this.gameKeyFactory.LEFT, this.gameKeyFactory.RIGHT];
    this.platformToGameKeyMapping = new Vector.<GameKey>(InputFactory.getInstance().MAX);
    this.negativePlatformToGameKeyMapping = new Vector.<GameKey>(0);
        }
    

    public static function getNullInstance():InputToGameKeyMapping {
        if (InputToGameKeyMapping.instance == NullUtil.getInstance().NULL_OBJECT) {
            InputToGameKeyMapping.instance = new InputToGameKeyMapping();
        }
        return (InputToGameKeyMapping.instance as InputToGameKeyMapping);
    }
    

    public function InputToGameKeyMapping() {
        super();
        this.initFieldsInputToGameKeyMapping();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.clear();
    }
    

    private function clear():void {
        for (var index:int = int(this.platformToGameKeyMapping.length - 1); index >= 0; index--) {
            this.platformToGameKeyMapping[index] = this.gameKeyFactory.NONE;
        }
    }
    

    override public function removeAll():void {
        super.removeAll();
        this.clear();
    }
    

    override public function addMapping(inputToGameKeyMapping:InputToGameKeyMapping):void {
        for (var index:int = int(inputToGameKeyMapping.getMaxMappable() - 1); index >= 0; index--) {
            var input:Input = inputToGameKeyMapping.getInstance1(index);
            if (input != this.gameKeyFactory.NONE) {
                this.addAll(input, inputToGameKeyMapping.getMappedInput(input));
            }
        }
    }
    

    private function addAll(input:Input, list:BasicArrayList):void {
        for (var index:int = int(list.size() - 1); index >= 0; index--) {
            var mappedToInput:Input = (list.objectArray[index] as Input);
            this.add(input, mappedToInput);
        }
    }
    

    override public function add(input:Input, mappedToInput:Input):void {
        super.add(input, mappedToInput);
        this.set_(input, mappedToInput);
    }
    

    override public function remove(input:Input, mappedToInput:Input):void {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString1(input)).append(" == ").append(StringUtil.getInstance().toString1(mappedToInput)).toString(), this, "InputToGameKeyMapping::remove");
        super.remove(input, mappedToInput);
        this.set_(input, this.gameKeyFactory.NONE);
    }
    

    private function set_(input:Input, mappedToInput:Input):void {
        var id:int = mappedToInput.getId();
        if (id >= 0 && id < this.platformToGameKeyMapping.length) {
            this.platformToGameKeyMapping[id] = (input as GameKey);
        }
    }
    

    public function getMaxMappable():int {
        return this.platformToGameKeyMapping.length;
    }
    

    public function getReverseInstance(id:int):BasicArrayList {
        var list:BasicArrayList = new BasicArrayListD();
        var inputFactory:InputFactory = InputFactory.getInstance();
        for (var index:int = 0; index < this.platformToGameKeyMapping.length; index++) {
            if (this.platformToGameKeyMapping[index].getId() == id) {
                var input:Input = inputFactory.getInstanceById(index);
                if (input != null) {
                    list.add(input);
                }
            }
        }
        return list;
    }
    

    private function initGameKey(canvas:Canvas, gameKey:GameKey):void {
        var key:int = canvas.getKeyCode(gameKey.getId());
        if (key < 0 && -key < this.negativePlatformToGameKeyMapping.length) {
            this.negativePlatformToGameKeyMapping[-key] = gameKey;
        } else if (key > 0) {
            if (this.platformToGameKeyMapping[key] == this.gameKeyFactory.NONE) {
                this.platformToGameKeyMapping[key] = gameKey;
            }
        } else {
            PreLogUtil.putOE(new StringMaker().append(gameKey.toString()).append(CommonSeps.getInstance().COLON_SEP).appendint(key).toString(), this, this.commonStrings.INIT, new JException("Exception", ""));
        }
    }
    

    private function getSmallestCanvasGameKeyCode(canvas:Canvas):int {
        var nextKey:int = 0;
        var smallestKey:int = 0;
        for (var index:int = this.mappedGameKeys.length; --index >= 0; ) {
            nextKey = canvas.getKeyCode(this.mappedGameKeys[index].getId());
            if (nextKey < smallestKey) {
                smallestKey = nextKey;
            }
        }
        return smallestKey;
    }
    

    public function init(canvas:Canvas):void {
        try {
            var negativePlatformToGameKeyMapping:Vector.<GameKey> = new Vector.<GameKey>(0);
            var smallestKey:int = this.getSmallestCanvasGameKeyCode(canvas);
            if (smallestKey < 0) {
                smallestKey--;
                if (smallestKey < -256) {
                    smallestKey = -256;
                }
                negativePlatformToGameKeyMapping = new Vector.<GameKey>(-smallestKey);
                for (var index:int = negativePlatformToGameKeyMapping.length; --index >= 0; ) {
                    negativePlatformToGameKeyMapping[index] = this.gameKeyFactory.NONE;
                }
                this.negativePlatformToGameKeyMapping = negativePlatformToGameKeyMapping;
            }
            for (index = this.mappedGameKeys.length; --index >= 0; ) {
                this.initGameKey(canvas, this.mappedGameKeys[index]);
            }
        } catch (t:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, t);
        }
    }
    

    public function getInstanceForCanvas(canvas:Canvas, id:int):GameKey {
        if (id >= 0 && id < this.platformToGameKeyMapping.length) {
            return this.platformToGameKeyMapping[id];
        } else if (id < 0 && -id < this.negativePlatformToGameKeyMapping.length) {
            return this.negativePlatformToGameKeyMapping[-id];
        } else {
            return this.gameKeyFactory.NONE;
        }
    }
    

    public function getInstance1(id:int):GameKey {
        if (id >= 0 && id < this.platformToGameKeyMapping.length) {
            return this.platformToGameKeyMapping[id];
        } else if (id < 0 && -id < this.negativePlatformToGameKeyMapping.length) {
            return this.negativePlatformToGameKeyMapping[-id];
        } else {
            return this.gameKeyFactory.NONE;
        }
    }
    }
}

