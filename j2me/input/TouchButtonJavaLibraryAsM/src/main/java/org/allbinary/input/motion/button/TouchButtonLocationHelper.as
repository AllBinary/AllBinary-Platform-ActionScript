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
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.logic.string.StringMaker;

    public class TouchButtonLocationHelper {
        private var totalColumns:int = 0;
        private var totalRows:int = 0;
        private var columnsRemainder:int = 0;
        private var rowsRemainder:int = 0;
        private var columnsRemainderHalf:int = 0;
        private var rowsRemainderHalf:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsTouchButtonLocationHelper():void {
    
    
    
    
    
    
        }
    

    public function TouchButtonLocationHelper() {
        super();
        this.initFieldsTouchButtonLocationHelper();
        var buttonSize:int = CommonButtons.getInstance().STANDARD_BUTTON_SIZE;
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        this.totalColumns = Math.round(Number(displayInfo.getLastWidth()) / Number(buttonSize));
        this.totalRows = Math.round(Number(displayInfo.getLastHeight()) / Number(buttonSize));
        this.columnsRemainder = displayInfo.getLastWidth() % buttonSize;
        this.columnsRemainderHalf = (this.columnsRemainder >> 1);
        this.rowsRemainder = displayInfo.getLastHeight() % buttonSize;
        this.rowsRemainderHalf = (this.rowsRemainder >> 1);
    }
    

    public function getTotalColumns():int {
        return this.totalColumns;
    }
    

    public function getTotalRows():int {
        return this.totalRows;
    }
    

    public function getColumnsRemainder():int {
        return this.columnsRemainder;
    }
    

    public function getRowsRemainder():int {
        return this.rowsRemainder;
    }
    

    public function getColumnsRemainderHalf():int {
        return this.columnsRemainderHalf;
    }
    

    public function getRowsRemainderHalf():int {
        return this.rowsRemainderHalf;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("totalColumns: ");
        stringBuffer.appendint(this.totalColumns);
        stringBuffer.append(" totalRows: ");
        stringBuffer.appendint(this.totalRows);
        stringBuffer.append(" columnsRemainder: ");
        stringBuffer.appendint(this.columnsRemainder);
        stringBuffer.append(" rowsRemainder: ");
        stringBuffer.appendint(this.rowsRemainder);
        stringBuffer.append(" columnsRemainderHalf: ");
        stringBuffer.appendint(this.columnsRemainderHalf);
        stringBuffer.append(" rowsRemainderHalf: ");
        stringBuffer.appendint(this.rowsRemainderHalf);
        return stringBuffer.toString();
    }
    }
}

