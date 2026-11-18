/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.graphics.font {

    public class UpdateMyFontProcessor extends MyFontProcessor {
        private var updateMeasurementProcessor:UpdateMyFontInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsUpdateMyFontProcessor():void {
    
        }
    

    public function UpdateMyFontProcessor(keyValueDrawCharArray:UpdateMyFontInterface) {
        super();
        this.initFieldsUpdateMyFontProcessor();
        this.updateMeasurementProcessor = keyValueDrawCharArray;
    }
    

    override public function process(graphics:Graphics):void {
        this.updateMeasurementProcessor.updateMeasurement(graphics);
    }
    }
}

