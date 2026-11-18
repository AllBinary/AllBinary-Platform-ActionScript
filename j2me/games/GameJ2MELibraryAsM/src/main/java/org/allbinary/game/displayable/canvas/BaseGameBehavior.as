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
    import org.allbinary.business.advertisement.GameAdStateFactory;
    import org.allbinary.game.GameAdState;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.graphics.opengles.CurrentDisplayableFactory;
    import org.allbinary.graphics.opengles.OpenGLFeatureFactory;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;

    public class BaseGameBehavior extends DemoGameBehavior {
    private static var instanceC_value:BaseGameBehavior;
    private static var instanceC_set:Boolean = false;
    private static function get instanceC():BaseGameBehavior {
        if (!BaseGameBehavior.instanceC_set) {
            BaseGameBehavior.instanceC_set = true;
            BaseGameBehavior.instanceC_value = new BaseGameBehavior();
        }
        return BaseGameBehavior.instanceC_value;
    }
    

    override public static function getInstance():DemoGameBehavior {
        return BaseGameBehavior.instanceC;
    }
    

    override public function init():void {
        var gameAdState:GameAdState = GameAdStateFactory.getInstance().getCurrentInstance();
        gameAdState.playingAdState();
    }
    

    override public function pause(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        var features:Features = Features.getInstance();
        if (features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD)) {
            var currentDisplayableFactory:CurrentDisplayableFactory = CurrentDisplayableFactory.getInstance();
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gamePauseRunnable);
        }
    }
    

    override public function unPause(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        if (Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD)) {
            var currentDisplayableFactory:CurrentDisplayableFactory = CurrentDisplayableFactory.getInstance();
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gameRunnable);
            currentDisplayableFactory.setDisplayable(allBinaryGameCanvas);
        }
    }
    

    override public function updateTouch(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        allBinaryGameCanvas.updateTouch2();
    }
    

    override public function updateScreenButtonPaintable(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        allBinaryGameCanvas.updateScreenButtonPaintable2();
    }
    

    override public function setGameState(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        allBinaryGameCanvas.updateGameState();
    }
    

    override public function removeAllGameKeyInputListeners(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        allBinaryGameCanvas.removeAllGameKeyInputListeners2();
    }
    

    override public function updateEndGameProcessor(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        allBinaryGameCanvas.updateEndGameProcessor2();
    }
    

    override public function buildGame(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        allBinaryGameCanvas.buildGame2();
    }
    

    override public function run(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        allBinaryGameCanvas.run2();
    }
    

    override public function setHighScore(abeClientInformation:AbeClientInformationInterface, allBinaryGameCanvas:AllBinaryGameCanvas, name:String, score:Number, autoSubmit:Boolean, isLast:Boolean):void {
        allBinaryGameCanvas.setHighScore2(abeClientInformation, name, score, autoSubmit, isLast);
    }
    }
}

