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
package org.allbinary.game.combat.damage {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.graphics.displayable.CanvasStrings;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.CircularIndexUtil;
    import org.allbinary.view.ViewPositionBase;

    public class AnimationDamageFloaters extends DamageFloaters {
        public var logUtil:LogUtil = null;
        private var layerInterface:AllBinaryLayer = null;
        private var animationInterfaceArray:Vector.<IndexedAnimation> = null;
        private var circularIndexUtil:CircularIndexUtil = null;
        private var dx:int = 0;
        private var dy:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAnimationDamageFloaters():void {
    this.logUtil = LogUtil.getInstance();
    
    
    
    
    
        }
    

    public function AnimationDamageFloaters(layerInterface:AllBinaryLayer, animationInterfaceArray:Vector.<IndexedAnimation>, dx:int, dy:int) {
        super();
        this.initFieldsAnimationDamageFloaters();
        this.animationInterfaceArray = animationInterfaceArray;
        for (var index:int = int(this.animationInterfaceArray.length - 1); index >= 0; index--) {
            this.animationInterfaceArray[index].setFrame(int(this.animationInterfaceArray[index].getSize() - 1));
        }
        this.layerInterface = layerInterface;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.animationInterfaceArray.length);
        this.dx = dx;
        this.dy = dy;
    }
    

    override public function add(...args):* {
        if (args.length == 1) {
            return this.add_jo1(args[0]);
        }
        return super.add.apply(this, args);
    }

    private function add_jo1(damage:int):void {
        var i:int = this.circularIndexUtil.getIndex();
        this.animationInterfaceArray[i].setFrame(0);
        this.circularIndexUtil.next();
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        try {
            var viewPosition:ViewPositionBase = this.layerInterface.getViewPosition();
            var x:int = viewPosition.getX();
            var y:int = viewPosition.getY();
            for (var index:int = 0; index < this.animationInterfaceArray.length; index++) {
                var animationInterface:IndexedAnimation = this.animationInterfaceArray[index];
                if (animationInterface.getFrame() < int(animationInterface.getAnimationSize() - 1)) {
                    var delta:int = int(animationInterface.getFrame() * 20);
                    animationInterface.paintXY(graphics, int(x + this.dx), int(int(y - delta) + this.dy));
                    animationInterface.nextFrame();
                }
            }
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            var canvasStrings:CanvasStrings = CanvasStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, canvasStrings.PAINT, e);
        }
    }
    }
}

