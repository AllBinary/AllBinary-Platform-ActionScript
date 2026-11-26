// Generated Code Do Not Modify
package javax.microedition.lcdui {
    import java.util.JStack;

    public class NullCanvas extends Canvas {
    private static var NULL_CANVAS_value:NullCanvas;
    private static var NULL_CANVAS_set:Boolean = false;
    public static function get NULL_CANVAS():NullCanvas {
        if (!NullCanvas.NULL_CANVAS_set) {
            NullCanvas.NULL_CANVAS_set = true;
            NullCanvas.NULL_CANVAS_value = new NullCanvas();
        }
        return NullCanvas.NULL_CANVAS_value;
    }
    

    public function NullCanvas() {
        super();
    }
    

    override public function setFullScreenMode(mode:Boolean):void {
    }
    

    override public function sizeChanged(w:int, h:int):void {
    }
    

    public function getCommandStack():JStack {
        throw new JException("RuntimeException", "");
    }
    

    public function isCommand(command:Command):Boolean {
        throw new JException("RuntimeException", "");
    }
    

    override public function addCommand(command:Command):void {
    }
    

    override public function removeCommand(command:Command):void {
    }
    

    public function removeAllCommands():void {
    }
    

    override public function setCommandListener(l:CommandListener):void {
    }
    

    public function getCustomCommandListener():CommandListener {
        throw new JException("RuntimeException", "");
    }
    

    public function isPaused():Boolean {
        throw new JException("RuntimeException", "");
    }
    

    public function removePauseCommand():void {
    }
    

    public function pause():void {
    }
    

    public function unPause():void {
    }
    

    public function process(...args):void {
        if (args.length == 0) {
            this.process_jo0();
            return;
        }
        throw new JException("IllegalArgumentException", "process");
    }

    private function process_jo0():void {
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
    }
    

    public function destroy():void {
    }
    

    public function setPaused(isPaused:Boolean):void {
        throw new JException("RuntimeException", "");
    }
    

    override public function pointerDragged(x:int, y:int):void {
    }
    

    override public function pointerPressed(x:int, y:int):void {
    }
    

    override public function pointerReleased(x:int, y:int):void {
    }
    }
}

