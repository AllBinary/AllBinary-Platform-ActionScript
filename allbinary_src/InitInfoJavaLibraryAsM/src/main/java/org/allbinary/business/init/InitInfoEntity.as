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
package org.allbinary.business.init {
    import java.util.JHashMap;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.business.init.db.UserDbInitInfo;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
    import org.allbinary.logic.io.path.AbPathData;
    import org.allbinary.logic.string.StringMaker;

    public class InitInfoEntity extends InitSql {
        private var NAME:String = null;
        private var NOTHING:String = null;
        private var tableName:String = null;
        private var tableData:String = null;
        private var NOT_IN_DB:String = null;
        private var METHOD_GET:String = null;
        private var METHOD_IS:String = null;
        private var METHOD_ADD:String = null;
        private var CREATED_SUCCESS:String = null;
        private var FAILED_TO_CREATE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsInitInfoEntity():void {
    this.NAME = "InitInfoEntity";
    this.NOTHING = "NOTHING";
    this.tableName = "initdata";
    
    this.NOT_IN_DB = "Not In DB";
    this.METHOD_GET = "get()";
    this.METHOD_IS = "is()";
    this.METHOD_ADD = "add()";
    this.CREATED_SUCCESS = " Created Successfully";
    this.FAILED_TO_CREATE = "Failed to create ";
        }
    

    public function InitInfoEntity() {
        super(new UserDbInitInfo());
        this.initFieldsInitInfoEntity();
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(this.sqlStrings.CREATE_TABLE);
        stringBuffer.append(this.tableName);
        stringBuffer.append(this.sqlStrings.START);
        stringBuffer.append(this.NOTHING);
        stringBuffer.append(this.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(InitInfo.getInstance().TESTING);
        stringBuffer.append(this.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(InitInfo.getInstance().TESTHTMLPATH);
        stringBuffer.append(this.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(InitInfo.getInstance().MAINPATH);
        stringBuffer.append(this.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(this.sqlStrings.PRIMARY_KEY);
        stringBuffer.append(this.NOTHING);
        stringBuffer.append(this.sqlStrings.END);
        this.tableData = stringBuffer.toString();
        this.setTable(this.tableName);
    }
    

    public function get_():Boolean {
        try {
            var keyAndValue:JHashMap = StdUtil.getInstance().createHashMap();
            keyAndValue.put(this.NOTHING, this.NOTHING);
            var hashMap:JHashMap = this.getRow(keyAndValue);
            if (hashMap != null) {
                InitInfo.getInstance().set_(hashMap);
                return true;
            } else {
                if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)) {
                    PreLogUtil.put(this.NOT_IN_DB, this.NAME, this.METHOD_GET);
                }
                return false;
            }
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                PreLogUtil.putOE(this.commonStrings.EXCEPTION, this.NAME, this.METHOD_GET, e);
            }
            return false;
        }
    }
    

    public function is_():Boolean {
        try {
            var keyAndValue:JHashMap = StdUtil.getInstance().createHashMap();
            keyAndValue.put(this.NOTHING, this.NOTHING);
            var hashMap:JHashMap = this.getRow(keyAndValue);
            if (hashMap != null) {
                return true;
            } else {
                if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)) {
                    PreLogUtil.put(this.NOT_IN_DB, this.NAME, this.METHOD_IS);
                }
                return false;
            }
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                PreLogUtil.putOE(this.commonStrings.EXCEPTION, this.NAME, this.METHOD_IS, e);
            }
            return false;
        }
    }
    

    public function update():void {
        this.updateWhere(this.NOTHING, this.NOTHING, InitInfo.getInstance().toHashMap());
    }
    

    public function add():void {
        try {
            var values:BasicArrayList = new BasicArrayListD();
            values.add(this.NOTHING);
            values.add(InitInfo.getInstance().getTesting());
            values.add(InitInfo.getInstance().getTestHtmlPath());
            values.add(InitInfo.getInstance().getMainPath());
            this.insert(values);
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                PreLogUtil.putOE(this.commonStrings.EXCEPTION, this.NAME, this.METHOD_ADD, e);
            }
        }
    }
    

    public function createTable():String {
        if (super.createTable(this.tableData)) {
            return this.tableName + this.CREATED_SUCCESS;
        } else {
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append(this.FAILED_TO_CREATE);
            stringBuffer.append(this.tableData);
            stringBuffer.append(AbPathData.getInstance().EXTENSION_SEP);
            return stringBuffer.toString();
        }
    }
    }
}

