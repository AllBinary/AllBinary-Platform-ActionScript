// Generated Code Do Not Modify
package org.allbinary.animation.vector {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.color.BasicColorFactory;

    public class ARectangleFilledAnimation extends RectangleFilledAnimation {
        public var x:int = 0;
        public var y:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsARectangleFilledAnimation():void {
    this.x = 0;
    this.y = 0;
        }
    

    public function ARectangleFilledAnimation() {
        super(0, 0, BasicColorFactory.getInstance().BLACK);
        this.initFieldsARectangleFilledAnimation();
    }
    

    override public function nextFrame():void {
    }
    

    override public function paintXY(graphics:Graphics, unusedX:int, unusedY:int):void {
        super.paintXY(graphics, this.x, this.y);
    }
    }
}

