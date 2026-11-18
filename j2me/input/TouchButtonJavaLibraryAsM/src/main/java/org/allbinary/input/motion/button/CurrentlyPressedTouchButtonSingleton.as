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
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class CurrentlyPressedTouchButtonSingleton {
    private static var instance_value:CurrentlyPressedTouchButtonSingleton;
    private static var instance_set:Boolean = false;
    private static function get instance():CurrentlyPressedTouchButtonSingleton {
        if (!CurrentlyPressedTouchButtonSingleton.instance_set) {
            CurrentlyPressedTouchButtonSingleton.instance_set = true;
            CurrentlyPressedTouchButtonSingleton.instance_value = new CurrentlyPressedTouchButtonSingleton();
        }
        return CurrentlyPressedTouchButtonSingleton.instance_value;
    }
        public var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsCurrentlyPressedTouchButtonSingleton():void {
    this.list = new BasicArrayListD();
        }
    

    public static function getInstance():CurrentlyPressedTouchButtonSingleton {
        return CurrentlyPressedTouchButtonSingleton.instance;
    }
    

    public function CurrentlyPressedTouchButtonSingleton() {
        super();
        this.initFieldsCurrentlyPressedTouchButtonSingleton();
    }
    

    public function size():int {
        return this.list.size();
    }
    

    public function removeAt(index:int):TouchButtonInput {
        return (this.list.removeAt(index) as TouchButtonInput);
    }
    

    public function remove(touchButtonInput:TouchButtonInput):Boolean {
        return this.list.remove(touchButtonInput);
    }
    

    public function get_(index:int):TouchButtonInput {
        return (this.list.objectArray[index] as TouchButtonInput);
    }
    

    public function contains(touchButtonInput:TouchButtonInput):Boolean {
        return this.list.contains(touchButtonInput);
    }
    

    public function add(touchButtonInput:TouchButtonInput):void {
        this.list.add(touchButtonInput);
    }
    }
}

