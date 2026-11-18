// Generated Code Do Not Modify
package org.allbinary.logic.communication.sql {
    import org.allbinary.string.CommonSeps;

    public class SqlStrings {
    private static var instance_value:SqlStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():SqlStrings {
        if (!SqlStrings.instance_set) {
            SqlStrings.instance_set = true;
            SqlStrings.instance_value = new SqlStrings();
        }
        return SqlStrings.instance_value;
    }
        public var CREATE_DATABASE:String = null;
        public var DROP_TABLE:String = null;
        public var CREATE_TABLE:String = null;
        public var START:String = null;
        public var SELECT:String = null;
        public var FROM:String = null;
        public var SELECT_ALL:String = null;
        public var WHERE:String = null;
        public var AND:String = null;
        public var UPDATE:String = null;
        public var SET:String = null;
        public var SELECT_ALL_FROM:String = null;
        public var DELETE:String = null;
        public var LIKE_QUOTE:String = null;
        public var INSERT_INTO:String = null;
        public var VALUES:String = null;
        public var ORDER_BY:String = null;
        public var COUNT:String = null;
        public var ASC:String = null;
        public var DESC:String = null;
        public var PRIMARY_KEY:String = null;
        public var END:String = null;
        public var EQUAL_QUOTE:String = null;
        public var CLOSE_QUOTE:String = null;
        public var EQUAL_QUOTE_NO_SPACE:String = null;
        public var ESCAPE:String = null;
        public var DOUBLE_ESCAPE:String = null;
        public var MORE_THAN_QUOTE:String = null;
        public var LESS_THAN_QUOTE:String = null;
        public var SINGLE_QUOTE_COMMA_SEP:String = null;
        public var ID:String = null;
        public var SQL_STATEMENT_LABEL:String = null;
        public var COLUMN_VALUE:String = null;
        public var CREATE_RETURN:String = null;
        public var FIELD_VALUE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsSqlStrings():void {
    this.CREATE_DATABASE = "CREATE DATABASE ";
    this.DROP_TABLE = "DROP TABLE ";
    this.CREATE_TABLE = "CREATE TABLE ";
    this.START = " (";
    this.SELECT = "SELECT ";
    this.FROM = " FROM ";
    this.SELECT_ALL = "SELECT *";
    this.WHERE = " WHERE ";
    this.AND = " AND ";
    this.UPDATE = "UPDATE ";
    this.SET = " SET ";
    this.SELECT_ALL_FROM = this.SELECT_ALL + this.FROM;
    this.DELETE = "DELETE";
    this.LIKE_QUOTE = " LIKE \"";
    this.INSERT_INTO = "INSERT INTO ";
    this.VALUES = " VALUES ('";
    this.ORDER_BY = "ORDER BY";
    this.COUNT = "COUNT(";
    this.ASC = "ASC";
    this.DESC = "DESC";
    this.PRIMARY_KEY = "PRIMARY KEY(";
    this.END = ") )";
    this.EQUAL_QUOTE = " = \"";
    this.CLOSE_QUOTE = CommonSeps.getInstance().QUOTE;
    this.EQUAL_QUOTE_NO_SPACE = "=\"";
    this.ESCAPE = "\\";
    this.DOUBLE_ESCAPE = "\\\\";
    this.MORE_THAN_QUOTE = " > \"";
    this.LESS_THAN_QUOTE = " < \"";
    this.SINGLE_QUOTE_COMMA_SEP = "','";
    this.ID = "ID";
    this.SQL_STATEMENT_LABEL = "SQL Statement: ";
    this.COLUMN_VALUE = "\nColumn Value: ";
    this.CREATE_RETURN = " Created Successfully";
    this.FIELD_VALUE = "\nField Value: ";
        }

        public function SqlStrings() {
            super();
            this.initFieldsSqlStrings();
        }
    

    public static function getInstance():SqlStrings {
        return SqlStrings.instance;
    }
    }
}

