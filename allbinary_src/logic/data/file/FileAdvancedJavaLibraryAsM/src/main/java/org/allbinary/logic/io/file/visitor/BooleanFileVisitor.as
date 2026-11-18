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
package org.allbinary.logic.io.file.visitor {
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.util.visitor.VisitorInterface;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;

    public class BooleanFileVisitor implements VisitorInterface {
        public var commonStrings:CommonStrings = null;
        private var filterStringBasicArrayList:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsBooleanFileVisitor():void {
    this.commonStrings = CommonStrings.getInstance();
    this.filterStringBasicArrayList = null;
        }
    

    public function BooleanFileVisitor(filterStringBasicArrayList:BasicArrayList) {
        super();
        this.initFieldsBooleanFileVisitor();
        this.setFilterStringBasicArrayList(filterStringBasicArrayList);
        PreLogUtil.put("Filter BasicArrayList: " + this.getFilterStringBasicArrayList().toString(), this, this.commonStrings.CONSTRUCTOR);
    }
    

    public function visit(anyType:Object):Object {
        return (this.visit((anyType as AbFile)) as Object);
    }
    

    public function visit(file:AbFile):* {
        var list:BasicArrayList = this.getFilterStringBasicArrayList();
        var size:int = list.size();
        var nextFileFilterString:String = null;
        for (var index:int = 0; index < size; index++) {
            nextFileFilterString = (list.get_(index) as String);
            if (this.visit(file, nextFileFilterString).booleanValue()) {
                return true;
            }
        }
        return false;
    }
    

    public function getFilterStringBasicArrayList():BasicArrayList {
        return this.filterStringBasicArrayList;
    }
    

    public function setFilterStringBasicArrayList(filterStringBasicArrayList:BasicArrayList):void {
        this.filterStringBasicArrayList = filterStringBasicArrayList;
    }
    

    public function visit(file:AbFile, fileNameString:String):* {
        return false;
    }
    }
}

