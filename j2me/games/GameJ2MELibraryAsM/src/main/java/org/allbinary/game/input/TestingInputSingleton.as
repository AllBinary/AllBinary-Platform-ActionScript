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
        this.inputProcessorArray[Canvas.UP] = new GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            public function processEvent(allbinaryLayerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
                testInputInterface.up();
            } */;
        this.inputProcessorArray[Canvas.DOWN] = new GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            public function processEvent(allbinaryLayerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
                testInputInterface.down();
            } */;
        this.inputProcessorArray[Canvas.LEFT] = new GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            public function processEvent(allbinaryLayerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
                testInputInterface.left();
            } */;
        this.inputProcessorArray[Canvas.RIGHT] = new GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            public function processEvent(allbinaryLayerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
                testInputInterface.right();
            } */;
        this.inputProcessorArray[Canvas.KEY_NUM7] = new GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            public function processEvent(allbinaryLayerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
                testInputInterface.strafeLeft();
            } */;
        this.inputProcessorArray[Canvas.KEY_NUM9] = new GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            public function processEvent(allbinaryLayerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
                testInputInterface.strafeRight();
            } */;
        GameInputProcessorUtil.init(this.inputProcessorArray);
    }
    

    public function processInputList(allbinaryLayerManager:AllBinaryLayerManager, list:BasicArrayList):void {
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
    

    override public function paint(graphics:Graphics):void {
        this.testInputPaintable.paint(graphics);
    }
    

    override public function implmentsGameInputInterface():Boolean {
        return true;
    }
    }
}

