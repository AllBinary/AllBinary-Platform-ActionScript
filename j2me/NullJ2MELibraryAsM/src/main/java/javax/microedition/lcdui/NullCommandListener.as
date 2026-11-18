// Generated Code Do Not Modify
package javax.microedition.lcdui {

    public class NullCommandListener implements CommandListener {
    private static var NULL_COMMAND_LISTENER_value:NullCommandListener;
    private static var NULL_COMMAND_LISTENER_set:Boolean = false;
    public static function get NULL_COMMAND_LISTENER():NullCommandListener {
        if (!NullCommandListener.NULL_COMMAND_LISTENER_set) {
            NullCommandListener.NULL_COMMAND_LISTENER_set = true;
            NullCommandListener.NULL_COMMAND_LISTENER_value = new NullCommandListener();
        }
        return NullCommandListener.NULL_COMMAND_LISTENER_value;
    }
    

    public function commandAction(c:Command, d:Displayable):void {
    }
    }
}

