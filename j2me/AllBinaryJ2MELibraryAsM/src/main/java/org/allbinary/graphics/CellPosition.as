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
    import org.allbinary.graph.V;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;

    public class CellPosition extends V {
        private var id:int = 0;
        private var column:int = 0;
        private var row:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsCellPosition():void {
    
    
    
        }
    

    public function CellPosition(column:int, row:int, columns:int, rows:int) {
        super();
        this.initFieldsCellPosition();
        this.column = column;
        this.row = row;
        this.id = int((int(row * columns)) + column);
    }
    

    public function getColumn():int {
        return this.column;
    }
    

    public function getRow():int {
        return this.row;
    }
    

    public function toString():String {
        return CellPosition.toStringColRow(this.getColumn(), this.getRow());
    }
    

    public static function toStringCellPosition(basicGeographicMapCellPosition:CellPosition):String {
        return CellPosition.toStringColRow(basicGeographicMapCellPosition.getColumn(), basicGeographicMapCellPosition.getRow());
    }
    

    public static function toStringColRow(i_column:int, i_row:int):String {
        var stringBuffer:StringMaker = new StringMaker();
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        stringBuffer.append(commonSeps.PARENTHESIS_OPEN);
        stringBuffer.appendint(i_column);
        stringBuffer.append(commonSeps.COMMA);
        stringBuffer.appendint(i_row);
        stringBuffer.append(commonSeps.PARENTHESIS_CLOSE);
        return stringBuffer.toString();
    }
    

    override public function getId():int {
        return this.id;
    }
    }
}

