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
package org.allbinary.input.motion.gesture.configuration {
    import org.allbinary.game.input.CompleteMotionGestureInputEvent;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class MotionGestureConfiguration {
        private var diagonalMotionGestureAllowed:Boolean = false;
        private var diagonalTolerance:int = 0;
        private var minimumMotionGesture:int = 0;
        private var button:String = null;
        private var color:BasicColor = null;
        private var executingActions:Boolean = false;
        private var mouseButtonMask:int = 0;
        private var activeCommands:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsMotionGestureConfiguration():void {
    this.diagonalMotionGestureAllowed = true;
    this.diagonalTolerance = 7;
    this.minimumMotionGesture = 9;
    this.button = StringUtil.getInstance().EMPTY_STRING;
    this.color = BasicColorFactory.getInstance().BLUE;
    this.executingActions = true;
    this.mouseButtonMask = 0;
    this.activeCommands = new BasicArrayListD();
        }
    

    public function MotionGestureConfiguration() {
        super();
        this.initFieldsMotionGestureConfiguration();
    }
    

    public function addMotionGestureAction(list:BasicArrayList, commandAction:CompleteMotionGestureInputEvent):void {
        this.activeCommands.add(new MotionGestureToMotionGestureActionAssociation(list, commandAction));
    }
    

    public function clearMotionGestureAction():void {
        this.activeCommands.clear();
    }
    

    public function getAssociateCommandActionsList():BasicArrayList {
        return this.activeCommands;
    }
    

    public function isDiagonalMotionGestureAllowed():Boolean {
        return this.diagonalMotionGestureAllowed;
    }
    

    public function isExecutingActionsAllowed():Boolean {
        return this.executingActions;
    }
    

    public function setExecutingActionsAllowed(executingActionAllowed:Boolean):void {
        this.executingActions = executingActionAllowed;
    }
    

    public function setDiagonalMotionGestureAllowed(diagonalMotionGestureAllowed:Boolean):void {
        this.diagonalMotionGestureAllowed = diagonalMotionGestureAllowed;
    }
    

    public function getDiagonalTolerance():int {
        return this.diagonalTolerance;
    }
    

    public function setDiagonalTolerance(diagonalTolerance:int):void {
        this.diagonalTolerance = diagonalTolerance;
    }
    

    public function getMinimumMotionGesture():int {
        return this.minimumMotionGesture;
    }
    

    public function setMinimumMotionGesture(minimumMotionGesture:int):void {
        this.minimumMotionGesture = minimumMotionGesture;
    }
    

    public function getButton():String {
        return this.button;
    }
    

    public function setButton(button:String):void {
        this.button = button;
    }
    

    public function getColor():BasicColor {
        return this.color;
    }
    

    public function setColor(color:BasicColor):void {
        this.color = color;
    }
    

    public function getMouseButtonMask():int {
        return this.mouseButtonMask;
    }
    

    public function setMouseButtonMask(mouseButtonMask:int):void {
        this.mouseButtonMask = mouseButtonMask;
    }
    }
}

