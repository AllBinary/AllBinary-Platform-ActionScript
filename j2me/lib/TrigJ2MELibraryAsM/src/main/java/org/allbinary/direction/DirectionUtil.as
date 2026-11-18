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
package org.allbinary.direction {
    import org.allbinary.math.Angle;
    import org.allbinary.math.AngleFactory;

    public class DirectionUtil {
    private static var instance_value:DirectionUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():DirectionUtil {
        if (!DirectionUtil.instance_set) {
            DirectionUtil.instance_set = true;
            DirectionUtil.instance_value = new DirectionUtil();
        }
        return DirectionUtil.instance_value;
    }
        private var directionArray:Vector.<Angle> = null;
        private var directionArray2:Vector.<Angle> = null;

        // Java field initializers run after the base constructor
        private function initFieldsDirectionUtil():void {
    this.directionArray = new Vector.<Angle>(10);
    this.directionArray2 = new Vector.<Angle>(10);
        }
    

    public static function getInstance():DirectionUtil {
        return DirectionUtil.instance;
    }
    

    public function DirectionUtil() {
        super();
        this.initFieldsDirectionUtil();
        var angleFactory:AngleFactory = AngleFactory.getInstance();
        var directionFactory:DirectionFactory = DirectionFactory.getInstance();
        this.directionArray[directionFactory.LEFT.getValue()] = angleFactory.LEFT;
        this.directionArray[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT;
        this.directionArray[directionFactory.UP.getValue()] = angleFactory.UP;
        this.directionArray[directionFactory.DOWN.getValue()] = angleFactory.DOWN;
        this.directionArray2[directionFactory.LEFT.getValue()] = angleFactory.LEFT;
        this.directionArray2[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT;
        this.directionArray2[directionFactory.UP.getValue()] = angleFactory.UP;
        this.directionArray2[directionFactory.DOWN.getValue()] = angleFactory.DOWN;
    }
    

    public function getAngle(direction:Direction):Angle {
        return this.directionArray2[direction.getValue()];
    }
    

    public function getFrameAngle(direction:Direction):Angle {
        return this.directionArray[direction.getValue()];
    }
    }
}

