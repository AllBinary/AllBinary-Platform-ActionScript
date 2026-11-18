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
package org.allbinary.game.ag.layer.hud.basic {
    import org.allbinary.canvas.Processor;

    public class NextUnremoveableProcessor extends Processor {
        private var updateMeasurementProcessor:PlayerGameNotificationHud = null;

        // Java field initializers run after the base constructor
        private function initFieldsNextUnremoveableProcessor():void {
    
        }
    

    public function NextUnremoveableProcessor(updateMeasurementProcessor:PlayerGameNotificationHud) {
        super();
        this.initFieldsNextUnremoveableProcessor();
        this.updateMeasurementProcessor = updateMeasurementProcessor;
    }
    

    override public function process():void {
        this.updateMeasurementProcessor.setNextUnremoveableProcess();
    }
    }
}

