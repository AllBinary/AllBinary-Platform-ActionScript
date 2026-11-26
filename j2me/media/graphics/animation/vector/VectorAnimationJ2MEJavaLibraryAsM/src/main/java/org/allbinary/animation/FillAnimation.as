// Generated Code Do Not Modify
package org.allbinary.animation {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.color.BasicColor;

    public class FillAnimation extends IndexedAnimation {
        private var pixelBuffer:Vector.<int> = null;
        private var width:int = 0;
        private var height:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsFillAnimation():void {
    
    
    
        }
    

    public function FillAnimation(pixelBuffer:Vector.<int>, width:int, height:int, animationBehavior:AnimationBehavior) {
        super(animationBehavior);
        this.initFieldsFillAnimation();
        this.width = 100;
        this.height = 100;
        this.pixelBuffer = pixelBuffer;
    }
    

    override public function setBasicColorP(basicColor:BasicColor):void {
        var changed:Boolean = false;
        if (this.getBasicColorP() == null || this.getBasicColorP().intValue() != basicColor.intValue()) {
            changed = true;
        }
        super.setBasicColorP(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    override public function changeBasicColor(basicColor:BasicColor):void {
        var changed:Boolean = false;
        if (this.getChangeBasicColor() == null || this.getChangeBasicColor().intValue() != basicColor.intValue()) {
            changed = true;
        }
        super.changeBasicColor(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    override public function setAlpha(alpha:int):void {
        var changed:Boolean = false;
        if (this.alphaP != alpha) {
            changed = true;
        }
        super.setAlpha(alpha);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    override public function setScale(scaleX:Number, scaleY:Number):void {
    }
    

    override public function setMaxScale(maxScaleX:Number, maxScaleY:Number):void {
    }
    

    private function updateModifiers():void {
    }
    

    public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "paint");
    }

    private function paint_jo1(g:Graphics):void {
        g.drawRGB(this.pixelBuffer, 0, this.width, 0, 0, this.width, this.height, true);
    }
    }
}

