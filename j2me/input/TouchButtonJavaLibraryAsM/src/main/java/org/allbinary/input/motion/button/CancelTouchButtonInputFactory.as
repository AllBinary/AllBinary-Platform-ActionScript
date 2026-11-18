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
    import org.allbinary.logic.NullUtil;

    public class CancelTouchButtonInputFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!CancelTouchButtonInputFactory.instance_set) {
            CancelTouchButtonInputFactory.instance_set = true;
            CancelTouchButtonInputFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return CancelTouchButtonInputFactory.instance_value;
    }
        private var cancelInputArray:Vector.<TouchButtonInput> = null;

        // Java field initializers run after the base constructor
        private function initFieldsCancelTouchButtonInputFactory():void {
    this.cancelInputArray = new Vector.<TouchButtonInput>(InputFactory.getInstance().MAX);
        }
    

    public static function getInstance():CancelTouchButtonInputFactory {
        if (CancelTouchButtonInputFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            CancelTouchButtonInputFactory.instance = new CancelTouchButtonInputFactory();
        }
        return (CancelTouchButtonInputFactory.instance as CancelTouchButtonInputFactory);
    }
    

    public function CancelTouchButtonInputFactory() {
        super();
        this.initFieldsCancelTouchButtonInputFactory();
        var basicTouchInputFactory:BasicTouchInputFactory = BasicTouchInputFactory.getInstance();
        for (var index:int = int(this.cancelInputArray.length - 1); index >= 0; index--) {
            this.cancelInputArray[index] = basicTouchInputFactory.NONE;
        }
        this.cancelInputArray[basicTouchInputFactory.UP.getSourceId()] = basicTouchInputFactory.DOWN;
        this.cancelInputArray[basicTouchInputFactory.DOWN.getSourceId()] = basicTouchInputFactory.UP;
        this.cancelInputArray[basicTouchInputFactory.LEFT.getSourceId()] = basicTouchInputFactory.RIGHT;
        this.cancelInputArray[basicTouchInputFactory.RIGHT.getSourceId()] = basicTouchInputFactory.LEFT;
    }
    

    public function getCancel(touchButtonInput:TouchButtonInput):TouchButtonInput {
        return this.cancelInputArray[touchButtonInput.getSourceId()];
    }
    }
}

