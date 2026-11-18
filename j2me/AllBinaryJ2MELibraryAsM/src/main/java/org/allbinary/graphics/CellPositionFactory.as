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
package org.allbinary.graphics {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;

    public class CellPositionFactory {
    private static var SINGLETON_value:CellPositionFactory;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():CellPositionFactory {
        if (!CellPositionFactory.SINGLETON_set) {
            CellPositionFactory.SINGLETON_set = true;
            CellPositionFactory.SINGLETON_value = new CellPositionFactory();
        }
        return CellPositionFactory.SINGLETON_value;
    }
        public var logUtil:LogUtil = null;
        public var NONE:CellPosition = null;
        private var cellPositionArray:Vector.<Vector.<CellPosition>> = null;
        private var columns:int = 0;
        private var rows:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsCellPositionFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.NONE = new CellPosition(-1, -1, -1, -1);
    this.cellPositionArray = (function():Vector.<Vector.<CellPosition>> { var array:Vector.<Vector.<CellPosition>> = new Vector.<Vector.<CellPosition>>(0); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<CellPosition>(0); } return array; })();
    this.columns = 0;
    this.rows = 0;
        }
    

    public static function getInstance():CellPositionFactory {
        return CellPositionFactory.SINGLETON;
    }
    

    public function CellPositionFactory() {
        super();
        this.initFieldsCellPositionFactory();
    }
    

    public function init(columns:int, rows:int):void {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("Init: columns: ");
        stringBuffer.appendint(columns);
        stringBuffer.append(" rows: ");
        stringBuffer.appendint(rows);
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
        this.cellPositionArray = (function():Vector.<Vector.<CellPosition>> { var array:Vector.<Vector.<CellPosition>> = new Vector.<Vector.<CellPosition>>(columns); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<CellPosition>(rows); } return array; })();
        this.columns = columns;
        this.rows = rows;
        for (var column:int = 0; column < columns; column++) {
            for (var row:int = 0; row < rows; row++) {
                this.createInstance(column, row);
            }
        }
    }
    

    public function getInstanceColRow(i_column:int, i_row:int):CellPosition {
        try {
            return this.cellPositionArray[i_column][i_row];
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(new StringMaker().append("columns: ").appendint(this.getColumns()).append(" rows: ").appendint(this.getRows()).append(" col: ").appendint(i_column).append(" row: ").appendint(i_row).toString(), this, commonStrings.GET_INSTANCE, e);
            return this.NONE;
        }
    }
    

    public function createInstance(i_column:int, i_row:int):CellPosition {
        var cellPositionCanBeNull:CellPosition = this.cellPositionArray[i_column][i_row];
        if (cellPositionCanBeNull == null) {
            cellPositionCanBeNull = new CellPosition(i_column, i_row, this.columns, this.rows);
            this.cellPositionArray[i_column][i_row] = cellPositionCanBeNull;
        }
        return cellPositionCanBeNull;
    }
    

    public function getColumns():int {
        return this.columns;
    }
    

    public function getRows():int {
        return this.rows;
    }
    }
}

