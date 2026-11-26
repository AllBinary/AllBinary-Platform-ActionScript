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
package org.allbinary.game.input {
    import javax.microedition.lcdui.Canvas;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.game.layer.AllBinaryGameLayer;
    import org.allbinary.graphics.RectangleFactory;
    import org.allbinary.graphics.paint.NullPaintable;
    import org.allbinary.graphics.paint.PaintableInterface;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.view.ViewPosition;

    public class TestingInputSingleton extends AllBinaryGameLayer implements GameInputInterface {
    private static var instance_value:TestingInputSingleton;
    private static var instance_set:Boolean = false;
    private static function get instance():TestingInputSingleton {
        if (!TestingInputSingleton.instance_set) {
            TestingInputSingleton.instance_set = true;
            TestingInputSingleton.instance_value = new TestingInputSingleton();
        }
        return TestingInputSingleton.instance_value;
    }
        public var inputProcessorArray:Vector.<GameInputProcessor> = null;
        private var testInputPaintable:PaintableInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsTestingInputSingleton():void {
    this.inputProcessorArray = new Vector.<GameInputProcessor>(InputFactory.getInstance().MAX);
    this.testInputPaintable = NullPaintable.getInstance();
        }
    

    public static function getInstance():TestingInputSingleton {
        return TestingInputSingleton.instance;
    }
    

    public function TestingInputSingleton() {
        super(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPosition.getInstanceD());
        this.initFieldsTestingInputSingleton();
        GameInputProcessorUtil.init(this.inputProcessorArray);
    }
    

    public function initInputProcessors():void {
    }
    

    public function initInputProcessorsForTestInput(aTestInputInterface:TestInputInterface):void {
        var testInputInterface:TestInputInterface = aTestInputInterface;
        this.testInputPaintable = testInputInterface;
        this.inputProcessorArray[Canvas.UP] = new TestingInputSingleton_1(this, testInputInterface);
        this.inputProcessorArray[Canvas.DOWN] = new TestingInputSingleton_2(this, testInputInterface);
        this.inputProcessorArray[Canvas.LEFT] = new TestingInputSingleton_3(this, testInputInterface);
        this.inputProcessorArray[Canvas.RIGHT] = new TestingInputSingleton_4(this, testInputInterface);
        this.inputProcessorArray[Canvas.KEY_NUM7] = new TestingInputSingleton_5(this, testInputInterface);
        this.inputProcessorArray[Canvas.KEY_NUM9] = new TestingInputSingleton_6(this, testInputInterface);
        GameInputProcessorUtil.init(this.inputProcessorArray);
    }
    

    public function processInputList(...args):* {
        if (args.length == 2) {
            return this.processInputList_jo2(args[0], args[1]);
        }
        throw new JException("IllegalArgumentException", "processInputList");
    }

    private function processInputList_jo2(allbinaryLayerManager:AllBinaryLayerManager, list:BasicArrayList):void {
        var key:int = 0;
        var gameKeyEvent:GameKeyEvent = null;
        var size:int = list.size();
        for (var index:int = 0; index < size; index++) {
            gameKeyEvent = ((list.objectArray[index] as GameKeyEvent));
            key = gameKeyEvent.getKey();
            this.inputProcessorArray[key].processEvent(allbinaryLayerManager, GameKeyEvent.NONE);
        }
    }
    

    override public function processInput(allbinaryLayerManager:AllBinaryLayerManager):void {
        this.processInputList(allbinaryLayerManager, this.getGameKeyEventList());
        this.getGameKeyEventList().clear();
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.testInputPaintable.paint(graphics);
    }
    

    override public function implmentsGameInputInterface():Boolean {
        return true;
    }
    }
}

