// Generated Code Do Not Modify
package org.allbinary.logic.communication.sql {
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;

    public class SqlTypeStrings {
    private static var instance_value:SqlTypeStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():SqlTypeStrings {
        if (!SqlTypeStrings.instance_set) {
            SqlTypeStrings.instance_set = true;
            SqlTypeStrings.instance_value = new SqlTypeStrings();
        }
        return SqlTypeStrings.instance_value;
    }
        public var CHAR_COLUMN:String = null;
        public var INT_COLUMN:String = null;
        public var MAX_SIZE:String = null;
        public var SIXTY_SIZE:String = null;
        public var NOT_NULL:String = null;
        public var ONE_SIZE:String = null;
        public var TWO_SIZE:String = null;
        public var THREE_SIZE:String = null;
        public var SIX_SIZE:String = null;
        public var ELEVEN_SIZE:String = null;
        public var TWELVE_SIZE:String = null;
        public var ONE_KB_CHAR_COLUMN:String = null;
        public var MAX_CHAR_COLUMN:String = null;
        public var MAX_CHAR_COLUMN_NOT_NULL:String = null;
        public var SIXTY_CHAR_COLUMN_NOT_NULL:String = null;
        public var ONE_CHAR_COLUMN_NOT_NULL:String = null;
        public var SIX_CHAR_COLUMN_NOT_NULL:String = null;
        public var TWELVE_CHAR_COLUMN_NOT_NULL:String = null;
        public var TWO_INT_NOT_NULL:String = null;
        public var THREE_INT_NOT_NULL:String = null;
        public var FOUR_INT_NOT_NULL:String = null;
        public var MAX_INT_NOT_NULL:String = null;
        public var MAX_INT_UNSIGNED:String = null;
        public var MAX_INT_UNSIGNED_NOT_NULL:String = null;
        public var MAX_BIG_INT_NOT_NULL:String = null;
        public var MAX_BIG_INT_UNSIGNED:String = null;
        public var MAX_BIG_INT_UNSIGNED_NOT_NULL:String = null;
        public var MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL:String = null;
        public var LONG_BLOB:String = null;
        public var BLOB:String = null;
        public var BLOB_NOT_NULL:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsSqlTypeStrings():void {
    this.CHAR_COLUMN = "VARCHAR";
    this.INT_COLUMN = "VARCHAR";
    this.MAX_SIZE = "(255)";
    this.SIXTY_SIZE = "(60)";
    this.NOT_NULL = "NOT NULL";
    this.ONE_SIZE = "(1)";
    this.TWO_SIZE = "(2)";
    this.THREE_SIZE = "(3)";
    this.SIX_SIZE = "(6)";
    this.ELEVEN_SIZE = "(11)";
    this.TWELVE_SIZE = "(12)";
    this.ONE_KB_CHAR_COLUMN = new StringMaker().append(CommonSeps.getInstance().SPACE).append(this.CHAR_COLUMN).append("(1024)").append(CommonSeps.getInstance().COMMA_SEP).toString();
    this.MAX_CHAR_COLUMN = new StringMaker().append(CommonSeps.getInstance().SPACE).append(this.CHAR_COLUMN).append(this.MAX_SIZE).append(CommonSeps.getInstance().COMMA_SEP).toString();
    this.MAX_CHAR_COLUMN_NOT_NULL = new StringMaker().append(CommonSeps.getInstance().SPACE).append(this.CHAR_COLUMN).append(this.MAX_SIZE).append(CommonSeps.getInstance().SPACE).append(this.NOT_NULL).append(CommonSeps.getInstance().COMMA_SEP).toString();
    this.SIXTY_CHAR_COLUMN_NOT_NULL = new StringMaker().append(CommonSeps.getInstance().SPACE).append(this.CHAR_COLUMN).append(this.SIXTY_SIZE).append(this.NOT_NULL).append(CommonSeps.getInstance().COMMA_SEP).toString();
    this.ONE_CHAR_COLUMN_NOT_NULL = new StringMaker().append(CommonSeps.getInstance().SPACE).append(this.CHAR_COLUMN).append(this.ONE_SIZE).append(this.NOT_NULL).append(CommonSeps.getInstance().COMMA_SEP).toString();
    this.SIX_CHAR_COLUMN_NOT_NULL = new StringMaker().append(CommonSeps.getInstance().SPACE).append(this.CHAR_COLUMN).append(this.SIX_SIZE).append(this.NOT_NULL).append(CommonSeps.getInstance().COMMA_SEP).toString();
    this.TWELVE_CHAR_COLUMN_NOT_NULL = new StringMaker().append(CommonSeps.getInstance().SPACE).append(this.CHAR_COLUMN).append(this.TWELVE_SIZE).append(this.NOT_NULL).append(CommonSeps.getInstance().COMMA_SEP).toString();
    this.TWO_INT_NOT_NULL = " INT(2) NOT NULL, ";
    this.THREE_INT_NOT_NULL = " INT(3) NOT NULL, ";
    this.FOUR_INT_NOT_NULL = " INT(4) NOT NULL, ";
    this.MAX_INT_NOT_NULL = " INT(11) NOT NULL, ";
    this.MAX_INT_UNSIGNED = " INT(11) UNSIGNED, ";
    this.MAX_INT_UNSIGNED_NOT_NULL = " INT(11) UNSIGNED NOT NULL, ";
    this.MAX_BIG_INT_NOT_NULL = " BIGINT(19) NOT NULL, ";
    this.MAX_BIG_INT_UNSIGNED = " BIGINT(19) UNSIGNED, ";
    this.MAX_BIG_INT_UNSIGNED_NOT_NULL = " BIGINT(19) UNSIGNED NOT NULL, ";
    this.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL = " BIGINT(19) UNSIGNED AUTO_INCREMENT NOT NULL,";
    this.LONG_BLOB = " LONGBLOB, ";
    this.BLOB = " BLOB, ";
    this.BLOB_NOT_NULL = " BLOB NOT NULL, ";
        }

        public function SqlTypeStrings() {
            super();
            this.initFieldsSqlTypeStrings();
        }
    

    public static function getInstance():SqlTypeStrings {
        return SqlTypeStrings.instance;
    }
    }
}

