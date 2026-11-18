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
package org.allbinary.graphics {

    public class ScreenCaptureNoneFactory {
    private static var instance_value:ScreenCapture;
    private static var instance_set:Boolean = false;
    private static function get instance():ScreenCapture {
        if (!ScreenCaptureNoneFactory.instance_set) {
            ScreenCaptureNoneFactory.instance_set = true;
            ScreenCaptureNoneFactory.instance_value = new ScreenCapture();
        }
        return ScreenCaptureNoneFactory.instance_value;
    }
    

    public static function getInstance():ScreenCapture {
        return ScreenCaptureNoneFactory.instance;
    }
    }
}

