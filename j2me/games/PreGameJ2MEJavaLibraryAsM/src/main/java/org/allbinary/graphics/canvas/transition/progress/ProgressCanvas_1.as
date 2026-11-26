// Generated Code Do Not Modify
package org.allbinary.graphics.canvas.transition.progress {
    import javax.microedition.lcdui.CommandListener;
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.Graphics;
    import javax.microedition.lcdui.NullCanvas;
    import javax.microedition.lcdui.NullCommandListener;
    import org.allbinary.canvas.Processor;
    import org.allbinary.canvas.RunnableCanvas;
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.displayable.CanvasStrings;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.form.item.ABCustomGaugeItem;
    import org.allbinary.graphics.paint.NullPaintable;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.graphics.paint.PaintableInterface;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.midlet.AllBinaryMidlet;
    import org.allbinary.thread.PathFindingThreadPool;
    import org.allbinary.thread.ThreadPool;

    // Java anonymous class of ProgressCanvas
    public class ProgressCanvas_1 extends Processor {
        public var jouter:ProgressCanvas;

        public function ProgressCanvas_1(jouter:ProgressCanvas) {
            super();
            this.jouter = jouter;
        }
        private var pathFindingThreadPool:ThreadPool = PathFindingThreadPool.getInstance();
        

        override public function process():void {
            this.pathFindingThreadPool.runAPriorityTask();
        }
    }
}
