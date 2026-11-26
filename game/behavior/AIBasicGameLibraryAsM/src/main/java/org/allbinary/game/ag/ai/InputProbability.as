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
package org.allbinary.game.ag.ai {
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.time.TimeDelayHelper;
    import org.allbinary.util.ABHashtable;
    import java.lang.JInteger;

    public class InputProbability {
    private static var INPUT_PROBABILITY_value:*;
    private static var INPUT_PROBABILITY_set:Boolean = false;
    public static function get INPUT_PROBABILITY():* {
        if (!InputProbability.INPUT_PROBABILITY_set) {
            InputProbability.INPUT_PROBABILITY_set = true;
            InputProbability.INPUT_PROBABILITY_value = SmallIntegerSingletonFactory.getInstance().getAt(0);
        }
        return InputProbability.INPUT_PROBABILITY_value;
    }
    public static function set INPUT_PROBABILITY(value:*):void {
        InputProbability.INPUT_PROBABILITY_set = true;
        InputProbability.INPUT_PROBABILITY_value = value;
    }
        private var likelyhoodIntegerArray:Vector.<Vector.<*>> = null;
        private var repeatLikelyhoodIntegerArray:Vector.<*> = null;
        private var max:int = 0;
        private var timeDelayHelper:TimeDelayHelper = null;

        // Java field initializers run after the base constructor
        private function initFieldsInputProbability():void {
    
    
    
    
        }
    

    public function InputProbability(likelyhoodIntegerArray:Vector.<Vector.<*>>, repeatLikelyhoodIntegerArray:Vector.<*>, max:int, timeDelayHelper:TimeDelayHelper) {
        super();
        this.initFieldsInputProbability();
        this.likelyhoodIntegerArray = likelyhoodIntegerArray;
        this.repeatLikelyhoodIntegerArray = repeatLikelyhoodIntegerArray;
        this.max = max;
        this.timeDelayHelper = timeDelayHelper;
    }
    

    public function getLikelyhoodIntegerArray():Vector.<Vector.<*>> {
        return this.likelyhoodIntegerArray;
    }
    

    public function getRepeatLikelyhoodIntegerArray():Vector.<*> {
        return this.repeatLikelyhoodIntegerArray;
    }
    

    public function getMax():int {
        return this.max;
    }
    

    public function getTimeDelayHelper():TimeDelayHelper {
        return this.timeDelayHelper;
    }
    

    public function toHashtable():ABHashtable {
        var hashtable:ABHashtable = StdUtil.getInstance().createHashtable();
        hashtable.put(InputProbability.INPUT_PROBABILITY, this);
        return hashtable;
    }
    }
}

