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
package org.allbinary.graphics.form {
    import org.allbinary.canvas.Processor;
    import org.allbinary.game.input.PlayerGameInputCompositeInterface;

    public class FormPlayerGameInputProcessor extends Processor {
        private var playerGameInputCompositeInterface:PlayerGameInputCompositeInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsFormPlayerGameInputProcessor():void {
    
        }
    

    public function FormPlayerGameInputProcessor(playerGameInputCompositeInterface:PlayerGameInputCompositeInterface) {
        super();
        this.initFieldsFormPlayerGameInputProcessor();
        this.playerGameInputCompositeInterface = playerGameInputCompositeInterface;
    }
    

    override public function process():void {
        this.playerGameInputCompositeInterface.getPlayerGameInput().update();
    }
    }
}

