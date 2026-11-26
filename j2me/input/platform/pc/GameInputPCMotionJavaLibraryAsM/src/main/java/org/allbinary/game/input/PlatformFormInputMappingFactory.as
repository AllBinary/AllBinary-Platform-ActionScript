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
package org.allbinary.game.input {
    import org.allbinary.game.input.mapping.InputToGameKeyMapping;
    import org.allbinary.input.motion.button.BasicTouchInputFactory;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class PlatformFormInputMappingFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!PlatformFormInputMappingFactory.instance_set) {
            PlatformFormInputMappingFactory.instance_set = true;
            PlatformFormInputMappingFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return PlatformFormInputMappingFactory.instance_value;
    }
    private static function set instance(value:Object):void {
        PlatformFormInputMappingFactory.instance_set = true;
        PlatformFormInputMappingFactory.instance_value = value;
    }
        public var logUtil:LogUtil = null;
        private var inputToGameKeyMapping:InputToGameKeyMapping = null;

        // Java field initializers run after the base constructor
        private function initFieldsPlatformFormInputMappingFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.inputToGameKeyMapping = InputToGameKeyMapping.getNullInstance();
        }

        public function PlatformFormInputMappingFactory() {
            super();
            this.initFieldsPlatformFormInputMappingFactory();
        }
    

    public static function getInstance():PlatformFormInputMappingFactory {
        if (PlatformFormInputMappingFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            PlatformFormInputMappingFactory.instance = new PlatformFormInputMappingFactory();
        }
        return (PlatformFormInputMappingFactory.instance as PlatformFormInputMappingFactory);
    }
    

    public function getOrCreate():InputToGameKeyMapping {
        try {
            if (this.inputToGameKeyMapping == InputToGameKeyMapping.getNullInstance()) {
                var pcKeyFactory:PCKeyFactory = PCKeyFactory.getInstance();
                var inputToGameKeyMapping:InputToGameKeyMapping = new InputToGameKeyMapping();
                var gameKeyFactory:GameKeyFactory = GameKeyFactory.getInstance();
                var basicTouchInputFactory:BasicTouchInputFactory = BasicTouchInputFactory.getInstance();
                inputToGameKeyMapping.add(gameKeyFactory.UP, pcKeyFactory.DPAD_UP);
                inputToGameKeyMapping.add(gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN);
                inputToGameKeyMapping.add(gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT);
                inputToGameKeyMapping.add(gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT);
                inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM1, pcKeyFactory.ENTER);
                inputToGameKeyMapping.add(gameKeyFactory.UP, basicTouchInputFactory.UP);
                inputToGameKeyMapping.add(gameKeyFactory.LEFT, basicTouchInputFactory.LEFT);
                inputToGameKeyMapping.add(gameKeyFactory.RIGHT, basicTouchInputFactory.RIGHT);
                inputToGameKeyMapping.add(gameKeyFactory.DOWN, basicTouchInputFactory.DOWN);
                this.inputToGameKeyMapping = inputToGameKeyMapping;
            }
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
        }
        return this.inputToGameKeyMapping;
    }
    }
}

