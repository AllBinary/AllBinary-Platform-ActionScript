/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.game.displayable.canvas {
    import org.allbinary.game.GameTypeFactory;
    import org.allbinary.graphics.paint.NullPaintable;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.string.CommonStrings;

    public class DemoGameBehavior {
    private static var instance_value:DemoGameBehavior;
    private static var instance_set:Boolean = false;
    private static function get instance():DemoGameBehavior {
        if (!DemoGameBehavior.instance_set) {
            DemoGameBehavior.instance_set = true;
            DemoGameBehavior.instance_value = new DemoGameBehavior();
        }
        return DemoGameBehavior.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsDemoGameBehavior():void {
    this.logUtil = LogUtil.getInstance();
        }

        public function DemoGameBehavior() {
            super();
            this.initFieldsDemoGameBehavior();
        }
    

    public static function getInstance():DemoGameBehavior {
        return DemoGameBehavior.instance;
    }
    

    public function init():void {
    }
    

    public function pause(allBinaryGameCanvas:AllBinaryGameCanvas):void {
    }
    

    public function unPause(allBinaryGameCanvas:AllBinaryGameCanvas):void {
    }
    

    public function updateTouch(allBinaryGameCanvas:AllBinaryGameCanvas):void {
    }
    

    public function updateScreenButtonPaintable(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        allBinaryGameCanvas.setTouchPaintableP(NullPaintable.getInstance());
    }
    

    public function setGameState(allBinaryGameCanvas:AllBinaryGameCanvas):void {
    }
    

    public function removeAllGameKeyInputListeners(allBinaryGameCanvas:AllBinaryGameCanvas):void {
    }
    

    public function updateEndGameProcessor(allBinaryGameCanvas:AllBinaryGameCanvas):void {
    }
    

    public function buildGame(allBinaryGameCanvas:AllBinaryGameCanvas):void {
    }
    

    public function run(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        this.logUtil.putF(GameTypeFactory.getInstance().BOT.toString(), this, commonStrings.RUN);
    }
    

    public function setHighScore(abeClientInformation:AbeClientInformationInterface, allBinaryGameCanvas:AllBinaryGameCanvas, name:String, score:Number, autoSubmit:Boolean, isLast:Boolean):void {
    }
    }
}

