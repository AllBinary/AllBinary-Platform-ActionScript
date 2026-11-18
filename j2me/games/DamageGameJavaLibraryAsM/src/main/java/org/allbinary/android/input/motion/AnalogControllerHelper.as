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
package org.allbinary.android.input.motion {
    import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer;
    import org.allbinary.time.TimeDelayHelper;

    public class AnalogControllerHelper {
        private var reduceTimeFactor:int = 0;
        private var SCALE_VALUE:int = 0;
        private var rightTimeElapsedHelper:TimeDelayHelper = null;
        private var leftTimeElapsedHelper:TimeDelayHelper = null;
        private var downTimeElapsedHelper:TimeDelayHelper = null;
        private var upTimeElapsedHelper:TimeDelayHelper = null;

        // Java field initializers run after the base constructor
        private function initFieldsAnalogControllerHelper():void {
    
    this.SCALE_VALUE = AnalogControllerConfigurationFactory.getInstance().SCALE_VALUE;
    this.rightTimeElapsedHelper = new TimeDelayHelper(0);
    this.leftTimeElapsedHelper = new TimeDelayHelper(0);
    this.downTimeElapsedHelper = new TimeDelayHelper(0);
    this.upTimeElapsedHelper = new TimeDelayHelper(0);
        }
    

    public function AnalogControllerHelper(reduceTimeFactor:int) {
        super();
        this.initFieldsAnalogControllerHelper();
        this.reduceTimeFactor = reduceTimeFactor;
    }
    

    public function right(collidableDestroyableDamageableLayer:CollidableDestroyableDamageableLayer, xAnalogValue:int):void {
        this.rightTimeElapsedHelper.delay = ((int(this.SCALE_VALUE - xAnalogValue)) >> this.reduceTimeFactor);
        if (this.rightTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.right();
        }
    }
    

    public function left(collidableDestroyableDamageableLayer:CollidableDestroyableDamageableLayer, xAnalogValue:int):void {
        this.leftTimeElapsedHelper.delay = ((int(this.SCALE_VALUE + xAnalogValue)) >> this.reduceTimeFactor);
        if (this.leftTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.left();
        }
    }
    

    public function up(collidableDestroyableDamageableLayer:CollidableDestroyableDamageableLayer, xAnalogValue:int):void {
        this.upTimeElapsedHelper.delay = ((int(this.SCALE_VALUE - xAnalogValue)) >> this.reduceTimeFactor);
        if (this.upTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.up();
        }
    }
    

    public function down(collidableDestroyableDamageableLayer:CollidableDestroyableDamageableLayer, xAnalogValue:int):void {
        this.downTimeElapsedHelper.delay = ((int(this.SCALE_VALUE + xAnalogValue)) >> this.reduceTimeFactor);
        if (this.downTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.down();
        }
    }
    }
}

