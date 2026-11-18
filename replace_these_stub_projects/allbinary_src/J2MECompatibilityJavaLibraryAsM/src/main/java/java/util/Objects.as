// Generated Code Do Not Modify
package java.util {

    //J2SE to J2ME compatibility
    public final class Objects {
    

    public static function requireNonNull(value:Object):Object {
        if (value == null) {
            throw new JException("NullPointerException", "");
        } else {
            return value;
        }
    }
    

    public static function requireNonNull(value:Object, message:String):Object {
        if (value == null) {
            throw new JException("NullPointerException", message);
        } else {
            return value;
        }
    }
    }
}

