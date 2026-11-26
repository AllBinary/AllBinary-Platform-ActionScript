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
package org.allbinary.graphics.opengles {
    import javax.microedition.lcdui.Displayable;
    import org.allbinary.J2MEUtil;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas;
    import org.allbinary.game.displayable.canvas.DemoCanvas;
    import org.allbinary.game.displayable.canvas.GameInputMappingCanvas;
    import org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas;
    import org.allbinary.game.displayable.canvas.GameRunnable;
    import org.allbinary.game.displayable.canvas.NullDisplayable;
    import org.allbinary.game.displayable.canvas.NullWaitGameRunnable;
    import org.allbinary.game.layer.SWTUtil;
    import org.allbinary.game.score.displayable.HighScoresCanvas;
    import org.allbinary.graphics.GraphicsStrings;
    import org.allbinary.graphics.displayable.CanvasStrings;
    import org.allbinary.graphics.displayable.MyCanvas;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.thread.NullRunnable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class CurrentDisplayableFactory {
    private static var instance_value:CurrentDisplayableFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():CurrentDisplayableFactory {
        if (!CurrentDisplayableFactory.instance_set) {
            CurrentDisplayableFactory.instance_set = true;
            CurrentDisplayableFactory.instance_value = new CurrentDisplayableFactory();
        }
        return CurrentDisplayableFactory.instance_value;
    }
        private var commonStrings:CommonStrings = null;
        private var canvasStrings:CanvasStrings = null;
        private var stringUtil:StringUtil = null;
        private var SET_DISPLAYABLE:String = null;
        private var SET_RUNNABLE:String = null;
        private var CLEAR_RUNNABLE:String = null;
        private var SET_USED_RUNNABLE:String = null;
        private var RUNNABLE:String = null;
        private var RUNNABLE_WAS_ALREADY_IN_USE:String = null;
        public var DEFAULT_CHILD_NAME_LIST:BasicArrayList = null;
        private var displayable:Displayable = null;
        private var openGlReadydisplayable:Displayable = null;
        private var runnable:GameRunnable = null;
        private var usedRunnable:GameRunnable = null;

        // Java field initializers run after the base constructor
        private function initFieldsCurrentDisplayableFactory():void {
    this.commonStrings = CommonStrings.getInstance();
    this.canvasStrings = CanvasStrings.getInstance();
    this.stringUtil = StringUtil.getInstance();
    this.SET_DISPLAYABLE = "setDisplayable";
    this.SET_RUNNABLE = "setRunnable";
    this.CLEAR_RUNNABLE = "clearRunnable";
    this.SET_USED_RUNNABLE = "setUsedRunnable";
    this.RUNNABLE = "Runnable: ";
    this.RUNNABLE_WAS_ALREADY_IN_USE = "Runnable was already in use: ";
    this.DEFAULT_CHILD_NAME_LIST = new BasicArrayListD();
    this.displayable = NullDisplayable.getInstance();
    this.openGlReadydisplayable = NullDisplayable.getInstance();
    this.runnable = NullWaitGameRunnable.getInstance();
    this.usedRunnable = NullWaitGameRunnable.getInstance();
        }
    

    public static function getInstance():CurrentDisplayableFactory {
        return CurrentDisplayableFactory.instance;
    }
    

    public function CurrentDisplayableFactory() {
        super();
        this.initFieldsCurrentDisplayableFactory();
        this.DEFAULT_CHILD_NAME_LIST.add(this.canvasStrings.ABOUT);
        this.DEFAULT_CHILD_NAME_LIST.add(this.canvasStrings.OPTIONS);
        this.DEFAULT_CHILD_NAME_LIST.add(GameInputMappingCanvas.NAME);
        this.DEFAULT_CHILD_NAME_LIST.add(GameInputMappingInstructionsCanvas.NAME);
        this.DEFAULT_CHILD_NAME_LIST.add(HighScoresCanvas.NAME);
    }
    

    public function setMyCanvas(displayable:MyCanvas):void {
        if ((this.displayable is MyCanvas)) {
            if (displayable.hasChild((this.displayable as MyCanvas))) {
                PreLogUtil.put(new StringMaker().append("Child Displayable is already set for: ").append(this.stringUtil.toString1(displayable)).toString(), this, this.SET_DISPLAYABLE);
                return;
            }
        }
        this.setDisplayable(displayable);
    }
    

    public function setDisplayable(displayable:Displayable):void {
        this.displayable = displayable;
        this.setOpenGlReadydisplayable(displayable);
    }
    

    public function setOpenGlReadydisplayable(openGlReadydisplayable:Displayable):void {
        this.openGlReadydisplayable = openGlReadydisplayable;
        this.update();
    }
    

    public function getOpenGlReadydisplayable():Displayable {
        return this.openGlReadydisplayable;
    }
    

    public function setRunnable(runnable:GameRunnable):void {
        PreLogUtil.put(new StringMaker().append(this.RUNNABLE).append(this.stringUtil.toString1(runnable)).toString(), this, this.SET_RUNNABLE);
        this.runnable = runnable;
        if (this.usedRunnable !== this.runnable) {
            this.update();
        } else {
            PreLogUtil.put(new StringMaker().append(this.RUNNABLE_WAS_ALREADY_IN_USE).append(this.stringUtil.toString1(runnable)).toString(), this, this.SET_RUNNABLE);
        }
    }
    

    public function clearRunnable():void {
        PreLogUtil.put(new StringMaker().append(this.RUNNABLE).append(this.stringUtil.toString1(NullRunnable.getInstance())).toString(), this, this.CLEAR_RUNNABLE);
        this.setUsedRunnable(NullWaitGameRunnable.getInstance());
    }
    

    private function update():void {
        {
            var commonSeps:CommonSeps = CommonSeps.getInstance();
            var features:Features = Features.getInstance();
            var stringMaker:StringMaker = new StringMaker();
            stringMaker.append(this.stringUtil.toString1(this.openGlReadydisplayable));
            if (SWTUtil.isSWT && !features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(SWTUtil.SWT).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString1(NullRunnable.getInstance())).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(NullWaitGameRunnable.getInstance());
            } else if (J2MEUtil.isHTML()) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(GraphicsStrings.getInstance().HTML).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString1(this.runnable)).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(this.runnable);
            } else if ((this.openGlReadydisplayable is DemoCanvas) || (this.openGlReadydisplayable is AllBinaryGameCanvas) || features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(OpenGLFeatureFactory.getInstance().OPENGL.toString()).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString1(this.runnable)).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(this.runnable);
            } else {
                PreLogUtil.put(stringMaker.append(this.RUNNABLE).append(this.stringUtil.toString1(NullRunnable.getInstance())).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(NullWaitGameRunnable.getInstance());
            }
        }
    }
    

    public function getDisplayable():Displayable {
        return this.displayable;
    }
    

    public function getUsedRunnable():GameRunnable {
        return this.usedRunnable;
    }
    

    public function setUsedRunnable(usedRunnable:GameRunnable):void {
        PreLogUtil.put(new StringMaker().append(this.RUNNABLE).append(this.stringUtil.toString1(this.runnable)).append(CommonSeps.getInstance().COLON_SEP).append(this.stringUtil.toString1(usedRunnable)).toString(), this, this.SET_USED_RUNNABLE);
        this.usedRunnable = usedRunnable;
    }
    }
}

