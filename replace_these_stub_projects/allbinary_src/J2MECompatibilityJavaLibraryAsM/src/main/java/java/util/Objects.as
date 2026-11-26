// Generated Code Do Not Modify
package java.util {

    //J2SE to J2ME compatibility
    public final class Objects {
    

    public static function requireNonNull(...args):Object {
        if (args.length == 1) {
            return Objects.requireNonNull_jo1(args[0]);
        }
        if (args.length == 2) {
            return Objects.requireNonNull_jo2(args[0], args[1]);
        }
        throw new JException("IllegalArgumentException", "requireNonNull");
    }

    private static function requireNonNull_jo1(value:Object):Object {
        if (value == null) {
            throw new JException("NullPointerException", "");
        } else {
            return value;
        }
    }

    private static function requireNonNull_jo2(value:Object, message:String):Object {
        if (value == null) {
            throw new JException("NullPointerException", message);
        } else {
            return value;
        }
    }
    
    }
}

