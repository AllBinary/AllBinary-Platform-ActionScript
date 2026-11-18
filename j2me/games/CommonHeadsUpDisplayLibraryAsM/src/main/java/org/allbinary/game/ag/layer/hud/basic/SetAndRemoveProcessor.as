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

    public class SetAndRemoveProcessor extends Processor {
        private var updateMeasurementProcessor:PlayerGameNotificationHud = null;

        // Java field initializers run after the base constructor
        private function initFieldsSetAndRemoveProcessor():void {
    
        }
    

    public function SetAndRemoveProcessor(updateMeasurementProcessor:PlayerGameNotificationHud) {
        super();
        this.initFieldsSetAndRemoveProcessor();
        this.updateMeasurementProcessor = updateMeasurementProcessor;
    }
    

    override public function process():void {
        this.updateMeasurementProcessor.setAndRemoveProcess();
    }
    }
}

