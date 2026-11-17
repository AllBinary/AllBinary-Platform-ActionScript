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
package org.allbinary.graphics.color {
    import org.allbinary.util.CircularIndexUtil;

    public class BasicColorArrayIndexer {
        private var basicColorArray:Vector.<BasicColor> = null;
        private var circularIndexUtil:CircularIndexUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicColorArrayIndexer():void {
    
    
        }
    

    public function BasicColorArrayIndexer(basicColorArray:Vector.<BasicColor>) {
        super();
        this.initFieldsBasicColorArrayIndexer();
        this.basicColorArray = basicColorArray;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.basicColorArray.length);
    }
    

    public function next():void {
        this.circularIndexUtil.next();
    }
    

    public function get_():BasicColor {
        return this.basicColorArray[this.circularIndexUtil.getIndex()];
    }
    

    public function getBasicColorArray():Vector.<BasicColor> {
        return this.basicColorArray;
    }
    }
}

