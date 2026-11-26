/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.view {
    import javax.microedition.lcdui.Displayable;
    import javax.microedition.midlet.MIDlet;

    public class NullEmulatorView implements EmulatorViewInterface {
    private static var NULL_EMULATOR_VIEW_value:NullEmulatorView;
    private static var NULL_EMULATOR_VIEW_set:Boolean = false;
    public static function get NULL_EMULATOR_VIEW():NullEmulatorView {
        if (!NullEmulatorView.NULL_EMULATOR_VIEW_set) {
            NullEmulatorView.NULL_EMULATOR_VIEW_set = true;
            NullEmulatorView.NULL_EMULATOR_VIEW_value = new NullEmulatorView();
        }
        return NullEmulatorView.NULL_EMULATOR_VIEW_value;
    }
    

    public function setMidlet(midlet:MIDlet):void {
    }
    

    public function onEmulatorInitComplete(midletActivity:Object):void {
    }
    

    public function onSetDisplayable(displayable:Displayable):void {
    }
    }
}

