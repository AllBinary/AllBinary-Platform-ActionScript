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
    import java.sql.JConnection;
    import java.sql.JDriverManager;
    import java.sql.JResultSet;
    import java.sql.JResultSetMetaData;
    import java.sql.JSQLException;
    import java.sql.JStatement;
    import java.util.JHashMap;
    import java.util.JSet;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.business.init.db.DatabaseConnectionInfoInterface;
    import org.allbinary.business.init.db.DbConnectionInfo;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
    import org.allbinary.logic.communication.sql.SqlStrings;
    import org.allbinary.logic.communication.sql.SqlTypeStrings;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.string.StringValidationUtil;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;

    public class InitSql {
        public var stringUtil:StringUtil = null;
        public var commonSeps:CommonSeps = null;
        public var sqlTypeStrings:SqlTypeStrings = null;
        public var sqlStrings:SqlStrings = null;
        public var stdUtil:StdUtil = null;
        public var INSERT:String = null;
        public var UPDATE:String = null;
        private var databaseConnectionInfoInterface:DbConnectionInfo = null;
        private var userid:String = null;
        private var password:String = null;
        private var tableName:String = null;
        private var conn:JConnection = null;
        private var useridAndPassword:Boolean = false;
        public var SUCCESS_SQL_STATEMENT:String = null;
        public var FAILED_SQL_STATEMENT:String = null;
        private var INIT_SQL:String = null;
        public var commonStrings:CommonStrings = null;
        private var EQUAL_QUOTE:String = null;
        private var METHOD_GET_ROW:String = null;
        private var METHOD_UPDATE_WHERE:String = null;
        private var ROW_VALUE_LABEL:String = null;
        private var NO_RESULTS_IN_RESULT_SET:String = null;
        private var INSERT_END:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsInitSql():void {
    this.stringUtil = StringUtil.getInstance();
    this.commonSeps = CommonSeps.getInstance();
    this.sqlTypeStrings = SqlTypeStrings.getInstance();
    this.sqlStrings = SqlStrings.getInstance();
    this.stdUtil = StdUtil.getInstance();
    this.INSERT = "insert";
    this.UPDATE = "update";
    this.databaseConnectionInfoInterface = null;
    this.userid = null;
    this.password = null;
    this.tableName = null;
    this.conn = null;
    this.useridAndPassword = false;
    this.SUCCESS_SQL_STATEMENT = "Success\nSQL Statement: ";
    this.FAILED_SQL_STATEMENT = "Failed\nSQL Statement: ";
    this.INIT_SQL = "InitSql";
    this.commonStrings = CommonStrings.getInstance();
    this.EQUAL_QUOTE = "=\"";
    this.METHOD_GET_ROW = "getRow()";
    this.METHOD_UPDATE_WHERE = "updateWhere()";
    this.ROW_VALUE_LABEL = "Row Value: ";
    this.NO_RESULTS_IN_RESULT_SET = "No Results in ResultSet";
    this.INSERT_END = "')";
        }
    

    public function InitSql(databaseConnectionInfoInterface:DbConnectionInfo) {
        super();
        this.initFieldsInitSql();
        this.setDatabaseConnectionInfoInterface(databaseConnectionInfoInterface);
    }
    

    public function setTable(tableName:String):void {
        this.tableName = tableName;
    }
    

    public function setDatabaseConnectionInfoInterface(databaseConnectionInfoInterface:DbConnectionInfo):void {
        this.databaseConnectionInfoInterface = databaseConnectionInfoInterface;
    }
    

    public function createTable(...args):* {
        if (args.length == 1) {
            return this.createTable_jo1(args[0]);
        }
        throw new JException("IllegalArgumentException", "createTable");
    }

    private function createTable_jo1(tableData:String):Boolean {
        try {
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append("Creating Table: ");
            stringBuffer.append(tableData);
            PreLogUtil.put(stringBuffer.toString(), this.INIT_SQL, "createTable()");
            this.executeSQLStatement(tableData);
            return true;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)) {
                PreLogUtil.putOE(this.commonStrings.EXCEPTION, this.INIT_SQL, "createTable()", e);
            }
            return false;
        }
    }
    

    public function dropTable():Boolean {
        var sqlStatement:String = this.sqlStrings.DROP_TABLE + this.tableName;
        try {
            this.executeSQLStatement(sqlStatement);
            return true;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)) {
                PreLogUtil.putOE(this.commonStrings.EXCEPTION, this.INIT_SQL, "dropTables()", e);
            }
            return false;
        }
    }
    

    public function getRow(keysAndValues:JHashMap):JHashMap {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(this.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append(this.tableName);
        stringBuffer.append(this.sqlStrings.WHERE);
        try {
            var result:JHashMap = null;
            var set_:JSet = keysAndValues.keySet();
            var keyArray:Vector.<Object> = set_.toArray();
            var size:int = keyArray.length;
            for (var i:int = 0; i < size; i++) {
                var key:String = (keyArray[i] as String);
                var value:String = JString.ofConstructorArgument((keysAndValues.get_(key) as String));
                stringBuffer.append(key);
                stringBuffer.append(this.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append(this.getValue(value));
                stringBuffer.append(this.sqlStrings.CLOSE_QUOTE);
                if (i < int(size - 1)) {
                    stringBuffer.append(this.sqlStrings.AND);
                }
            }
            var sqlStatement:String = stringBuffer.toString();
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGING)) {
                PreLogUtil.put(this.sqlStrings.SQL_STATEMENT_LABEL + sqlStatement, this.INIT_SQL, this.METHOD_GET_ROW);
            }
            var rset:JResultSet = this.executeSQLStatement(sqlStatement);
            var resultSetMetaData:JResultSetMetaData = rset.getMetaData();
            while (rset.next()) {
                result = this.stdUtil.createHashMap();
                var columnCount:int = resultSetMetaData.getColumnCount();
                for (var index:int = 1; index <= columnCount; index++) {
                    var columnName:String = resultSetMetaData.getColumnName(index);
                    var field:String = rset.getString(columnName);
                    result.put(columnName, field);
                }
                if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGING)) {
                    PreLogUtil.put(this.ROW_VALUE_LABEL + result.toString(), this.INIT_SQL, this.METHOD_GET_ROW);
                }
                return result;
            }
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)) {
                PreLogUtil.put(this.NO_RESULTS_IN_RESULT_SET, this.INIT_SQL, this.METHOD_GET_ROW);
            }
            return null;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)) {
                PreLogUtil.putOE(this.FAILED_SQL_STATEMENT + JString.ofObject(stringBuffer), this.INIT_SQL, this.METHOD_GET_ROW, e);
            }
            return null;
        }
    }
    

    public function updateWhere(key:String, value:String, updatedKeyValuePairs:JHashMap):void {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(this.sqlStrings.UPDATE);
        stringBuffer.append(this.tableName);
        stringBuffer.append(this.sqlStrings.SET);
        try {
            var columnArray:Vector.<Object> = updatedKeyValuePairs.keySet().toArray();
            var size:int = columnArray.length;
            for (var i:int = 0; i < size; i++) {
                var columnName:String = columnArray[i].toString();
                stringBuffer.append(this.commonSeps.SPACE);
                stringBuffer.append(columnName);
                stringBuffer.append(this.EQUAL_QUOTE);
                var columnValue:String = (updatedKeyValuePairs.get_(columnName) as String);
                if (columnValue == null) {
                    columnValue = this.stringUtil.EMPTY_STRING;
                } else {
                }
                stringBuffer.append(this.getValue(columnValue));
                stringBuffer.append(this.sqlStrings.CLOSE_QUOTE);
                if (i < int(size - 1)) {
                    stringBuffer.append(this.commonSeps.COMMA);
                }
            }
            stringBuffer.append(this.sqlStrings.WHERE);
            stringBuffer.append(key);
            stringBuffer.append(this.sqlStrings.EQUAL_QUOTE);
            stringBuffer.append(this.getValue(value));
            stringBuffer.append(this.sqlStrings.CLOSE_QUOTE);
            var sqlStatement:String = stringBuffer.toString();
            this.executeSQLStatement(sqlStatement);
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGING)) {
                PreLogUtil.put(this.SUCCESS_SQL_STATEMENT + sqlStatement, this.INIT_SQL, this.METHOD_UPDATE_WHERE);
            }
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)) {
                PreLogUtil.putOE(this.FAILED_SQL_STATEMENT + JString.ofObject(stringBuffer), this.INIT_SQL, this.METHOD_UPDATE_WHERE, e);
            }
        }
    }
    

    public function insert(values:BasicArrayList):void {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(this.sqlStrings.INSERT_INTO);
        stringBuffer.append(this.tableName);
        stringBuffer.append(this.sqlStrings.VALUES);
        try {
            var size:int = values.size();
            for (var i:int = 0; i < int(size - 1); i++) {
                var value:String = this.getValue((values.get_(i) as String));
                stringBuffer.append(value);
                stringBuffer.append(this.sqlStrings.SINGLE_QUOTE_COMMA_SEP);
            }
            value = this.getValue((values.get_(int(values.size() - 1)) as String));
            stringBuffer.append(value);
            stringBuffer.append(this.INSERT_END);
            var sqlStatement:String = stringBuffer.toString();
            this.executeSQLStatement(sqlStatement);
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGING)) {
                PreLogUtil.put(this.SUCCESS_SQL_STATEMENT + sqlStatement, this.INIT_SQL, this.INSERT);
            }
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)) {
                PreLogUtil.putOE(this.FAILED_SQL_STATEMENT + stringBuffer.toString(), this.INIT_SQL, this.INSERT, e);
            }
        }
    }
    

    private function getValue(value:String):String {
        if (StringValidationUtil.getInstance().isEmpty(value)) {
            return this.stringUtil.EMPTY_STRING;
        } else {
            return value;
        }
    }
    

    public function executeSQLStatement(statement:String):JResultSet {
        try {
            if (this.conn == null) {
                this.initialize();
            }
            var stmt:JStatement = this.conn.createStatement();
            stmt.execute(statement);
            var rset:JResultSet = stmt.getResultSet();
            stmt.close();
            return rset;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)) {
                PreLogUtil.putOE(this.commonStrings.EXCEPTION, this.INIT_SQL, "executeSQLStatement()", e);
            }
            throw e;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)) {
                PreLogUtil.putOE(this.commonStrings.EXCEPTION, this.INIT_SQL, "executeSQLStatement()", e);
            }
            throw e;
        }
    }
    

    private function createConnection():void {
        try {
            if (this.useridAndPassword == true) {
                this.conn = JDriverManager.getConnection(this.databaseConnectionInfoInterface.getUrl(), this.userid, this.password);
            } else {
                this.conn = JDriverManager.getConnection(this.databaseConnectionInfoInterface.getUrl());
            }
        } catch (se:*) {
            PreLogUtil.putOE(this.commonStrings.EXCEPTION, this.INIT_SQL, "createConnection()", se);
            throw se;
        }
    }
    

    private function initialize():void {
        try {
            try {
                var jdbcDriver:String = this.databaseConnectionInfoInterface.getJdbcDriver();
                PreLogUtil.put(new StringMaker().append("Loading DbConnnectionInfo: ").append(JSystem.className(this.databaseConnectionInfoInterface)).append(" Driver: ").append(jdbcDriver).toString(), this.INIT_SQL, "initialize()");
                JClass.newInstance(JClass.forName(jdbcDriver));
            } catch (e:*) {
                if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)) {
                    PreLogUtil.putOE("LoadDriver Failed: " + this.databaseConnectionInfoInterface.getJdbcDriver(), this.INIT_SQL, "initialize()", e);
                }
                throw e;
            }
            if (this.userid == null && this.password == null) {
                this.useridAndPassword = true;
            }
            this.createConnection();
        } catch (se:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)) {
                PreLogUtil.putOE(this.commonStrings.EXCEPTION, this.INIT_SQL, "initialize()", se);
            }
            throw se;
        }
    }
    

    public function getDatabaseConnectionInfoInterface():DatabaseConnectionInfoInterface {
        return this.databaseConnectionInfoInterface;
    }
    }
}

