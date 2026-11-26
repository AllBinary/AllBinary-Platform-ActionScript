/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2022 AllBinary
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
package org.allbinary.graphics.displayable.screen {
    import javax.microedition.lcdui.Canvas;
    import javax.microedition.lcdui.Command;
    import javax.microedition.lcdui.CommandListener;

    public class AboutCommandProcessor {
    private static var instance_value:AboutCommandProcessor;
    private static var instance_set:Boolean = false;
    private static function get instance():AboutCommandProcessor {
        if (!AboutCommandProcessor.instance_set) {
            AboutCommandProcessor.instance_set = true;
            AboutCommandProcessor.instance_value = new AboutCommandProcessor();
        }
        return AboutCommandProcessor.instance_value;
    }
    

    public static function getInstance():AboutCommandProcessor {
        return AboutCommandProcessor.instance;
    }
    

    public function process(midletCommandListener:CommandListener, command:Command, canvas:Canvas):void {
        midletCommandListener.commandAction(command, canvas);
    }
    }
}

