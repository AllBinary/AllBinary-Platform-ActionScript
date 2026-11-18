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
package org.allbinary.game.midlet {
    import org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface;
    import org.allbinary.game.layer.AllBinaryGameLayerManager;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.system.security.licensing.ClientInformationFactory;
    import org.allbinary.thread.PrimaryThreadPool;
    import org.allbinary.game.displayable.canvas.NullGameCanvasRunnable;
    import org.allbinary.util.ABHashtable;

    public class DemoGameMidlet extends GameMidlet {
    

    public function DemoGameMidlet(clientInformationFactory:ClientInformationFactory) {
        super(clientInformationFactory);
    }
    

    public function isContinue():Boolean {
        var hashtable:ABHashtable = this.getStartStateHashtable();
        if (hashtable != null && hashtable.size() > 0) {
            return true;
        } else {
            return false;
        }
    }
    

    public function getHighestLevel():int {
        return 1;
    }
    

    public function createDemoGameCanvasRunnableInterface():GameCanvasRunnableInterface {
        this.logUtil.putF(this.commonStrings.NOT_IMPLEMENTED, this, this.commonStrings.CREATE);
        return NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE;
    }
    

    public function createGameCanvasRunnable(allBinaryGameLayerManager:AllBinaryGameLayerManager):GameCanvasRunnableInterface {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function createGameCanvasRunnableInterface():GameCanvasRunnableInterface {
        return this.createGameCanvasRunnable(this.createGameLayerManager());
    }
    

    public function demoSetup():void {
    }
    

    public function postDemoSetup():void {
    }
    

    override public function setDemo():void {
        this.logUtil.putF(this.commonStrings.START, this, "setDemo");
        var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.start();
        PrimaryThreadPool.getInstance().runTask(new DemoRunnable(this));
    }
    

    override public function createGame():void {
        var CREATE_GAME:String = "createGame";
        this.logUtil.putF(this.commonStrings.START, this, CREATE_GAME);
        var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.start();
        var hashtable:ABHashtable = this.getStartStateHashtable();
        this.setStartStateHashtable(StdUtil.getInstance().NULL_TABLE);
        PrimaryThreadPool.getInstance().runTask(new CreateGameRunnable(this, hashtable));
        this.logUtil.putF(this.commonStrings.END, this, CREATE_GAME);
    }
    

    public function isReady():Boolean {
        return true;
    }
    }
}

