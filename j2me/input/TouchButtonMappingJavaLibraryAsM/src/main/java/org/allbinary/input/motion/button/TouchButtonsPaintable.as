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
package org.allbinary.input.motion.button {
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorSetUtil;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.util.BasicArrayList;

    public class TouchButtonsPaintable extends Paintable {
        public var foregroundBasicColor:BasicColor = null;
        public var foregroundColor:int = 0;
        public var basicSetColorUtil:BasicColorSetUtil = null;
        private var touchButtonFactory:TouchButtonFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsTouchButtonsPaintable():void {
    
    
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.touchButtonFactory = TouchButtonFactory.getInstance();
        }
    

    public function TouchButtonsPaintable(basicColor:BasicColor) {
        super();
        this.initFieldsTouchButtonsPaintable();
        this.foregroundBasicColor = basicColor;
        this.foregroundColor = basicColor.intValue();
    }
    

    override public function paint(graphics:Graphics):void {
        var list:BasicArrayList = this.touchButtonFactory.getList();
        this.basicSetColorUtil.setBasicColorP3(graphics, this.foregroundBasicColor, this.foregroundColor);
        var touchButton:TouchButton = null;
        for (var index:int = list.size(); --index >= 0; ) {
            touchButton = (list.objectArray[index] as TouchButton);
            touchButton.paint(graphics);
        }
        for (index = list.size(); --index >= 0; ) {
            touchButton = (list.objectArray[index] as TouchButton);
            touchButton.paintHint(graphics);
        }
    }
    }
}

