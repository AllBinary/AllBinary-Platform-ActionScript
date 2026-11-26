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
package org.allbinary.game.init {
    import javax.microedition.lcdui.CommandListener;
    import org.allbinary.game.resource.ResourceInitialization;
    import org.allbinary.game.resource.ResourceLoadingLevelFactory;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.math.AngleFactory;
    import org.allbinary.string.CommonStrings;

    public class CommonGameInitialization extends BaseGameInitialization {
        public var commonStrings:CommonStrings = null;

        // Java field initializers run after the base constructor
        private function initFieldsCommonGameInitialization():void {
    this.commonStrings = CommonStrings.getInstance();
        }
    

    public function CommonGameInitialization(resourceInitializationArray:Vector.<ResourceInitialization>, portion:int) {
        super(resourceInitializationArray, portion);
        this.initFieldsCommonGameInitialization();
    }
    

    override public function init(abeClientInformation:AbeClientInformationInterface, commandListener:CommandListener, level:int):void {
        super.init(abeClientInformation, commandListener, level);
        var resourceLoadingLevelFactory:ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (!this.isGameInitialized() && level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            this.setGameInitialized(true);
            var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
            SmallIntegerSingletonFactory.getInstance().init();
            progressCanvas.addNormalPortion(50, "Integers");
            PointFactory.getInstance().init();
            progressCanvas.addNormalPortion(50, "Points");
            AngleFactory.getInstance();
            progressCanvas.addNormalPortion(50, "Angles");
            this.initGame();
            this.resourceInitializationArray[this.GAME_RESOURCES].init();
        }
        super.resourceInitialization(level);
    }
    

    public function initGame():void {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    }
}

