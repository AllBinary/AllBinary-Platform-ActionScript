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
package org.allbinary.game.displayable.canvas {
    import org.allbinary.game.init.BasicBuildGameInitializerFactory;
    import org.allbinary.game.layer.AllBinaryGameLayerManager;
    import org.allbinary.game.score.NoHighScoresFactory;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class NullGameCanvas extends AllBinaryGameCanvas {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!NullGameCanvas.instance_set) {
            NullGameCanvas.instance_set = true;
            NullGameCanvas.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return NullGameCanvas.instance_value;
    }
    public static const NO_GAME:String = "No Background Game";
    public static const TYPE:int = 1;
        private var runningNull:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsNullGameCanvas():void {
    this.runningNull = true;
        }
    

    private static function createNull():NullGameCanvas {
        try {
            return new NullGameCanvas(AllBinaryGameLayerManager.getNullInstance());
        } catch (e:*) {
            LogUtil.getInstance().put(CommonStrings.getInstance().EXCEPTION, "NullGameCanvas", CommonStrings.getInstance().GET_INSTANCE, e);
            throw new JException("RuntimeException", "");
        }
    }
    

    public static function getInstance():NullGameCanvas {
        if (NullGameCanvas.instance == NullUtil.getInstance().NULL_OBJECT) {
            NullGameCanvas.instance = NullGameCanvas.createNull();
        }
        return (NullGameCanvas.instance as NullGameCanvas);
    }
    

    public static function createCanvas(gameLayerManager:AllBinaryGameLayerManager):NullGameCanvas {
        var nullGameCanvas:NullGameCanvas = new NullGameCanvas(gameLayerManager);
        nullGameCanvas.setInitialized(true);
        nullGameCanvas.setTitle(NullGameCanvas.NO_GAME);
        return nullGameCanvas;
    }
    

    public function NullGameCanvas(gameLayerManager:AllBinaryGameLayerManager) {
        super(NullCommandListener.NULL_COMMAND_LISTENER, gameLayerManager, NoHighScoresFactory.getInstance(), BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, false);
        this.initFieldsNullGameCanvas();
        super.setWait(1200);
    }
    

    override public function isGameOver():Boolean {
        return false;
    }
    

    override public function setRunning(running:Boolean):void {
        this.runningNull = running;
    }
    

    override public function isRunning():Boolean {
        return this.runningNull;
    }
    

    override public function pause():void {
        this.setPaused(true);
    }
    

    override public function unPause():void {
        this.setPaused(false);
    }
    

    override public function initCommands(cmdListener:CommandListener):void {
        this.removeAllCommands();
        this.setCommandListener(cmdListener);
    }
    

    override public function buildGameInit(isProgress:Boolean):void {
    }
    

    override public function draw(graphics:Graphics):void {
    }
    

    override public function run():void {
        try {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
        }
    }
    

    override public function getType():int {
        return NullGameCanvas.TYPE;
    }
    }
}

