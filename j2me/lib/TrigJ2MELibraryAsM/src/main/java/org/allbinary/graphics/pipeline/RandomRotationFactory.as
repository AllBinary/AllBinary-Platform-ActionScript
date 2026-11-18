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
package org.allbinary.graphics.pipeline {
    import org.allbinary.game.rand.MyRandomFactory;
    import org.allbinary.math.AngleFactory;
    import org.allbinary.util.BasicArrayList;

    public class RandomRotationFactory {
    private static var instance_value:RandomRotationFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():RandomRotationFactory {
        if (!RandomRotationFactory.instance_set) {
            RandomRotationFactory.instance_set = true;
            RandomRotationFactory.instance_value = new RandomRotationFactory();
        }
        return RandomRotationFactory.instance_value;
    }
        private var myRandomFactory:MyRandomFactory = null;
        private var angleFactory:AngleFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsRandomRotationFactory():void {
    this.myRandomFactory = MyRandomFactory.getInstance();
    this.angleFactory = AngleFactory.getInstance();
        }

        public function RandomRotationFactory() {
            super();
            this.initFieldsRandomRotationFactory();
        }
    

    public static function getInstance():RandomRotationFactory {
        return RandomRotationFactory.instance;
    }
    

    public function getInstanceList(vector:BasicArrayList, howMuch:int):BasicArrayList {
        var graphicsPipe:BasicGraphicsPipeline = new BasicGraphicsPipeline(vector);
        graphicsPipe.createMatrix();
        graphicsPipe.rotateToAngle(this.angleFactory.getAt(this.getNextRandomAngle(howMuch)));
        return graphicsPipe.getMatrix();
    }
    

    public function getNextRandomAngle(howMuch:int):int {
        return this.myRandomFactory.getNextInt(int(howMuch * 10));
    }
    }
}

