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

    // Java anonymous class of TestingInputSingleton
    public class TestingInputSingleton_3 extends GameInputProcessor {
        public var jouter:TestingInputSingleton;
        public var testInputInterface:*;

        public function TestingInputSingleton_3(jouter:TestingInputSingleton, testInputInterface:*) {
            super();
            this.jouter = jouter;
            this.testInputInterface = testInputInterface;
        }
            

            override public function processEvent(allbinaryLayerManager:AllBinaryLayerManager, gameKeyEvent:GameKeyEvent):void {
                testInputInterface.left();
            }
    }
}
