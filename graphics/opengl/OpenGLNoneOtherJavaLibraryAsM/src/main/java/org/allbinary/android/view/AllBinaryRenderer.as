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
package org.allbinary.android.view {
    import java.lang.JRunnable;

    public class AllBinaryRenderer {
    private static var instance_value:AllBinaryRenderer;
    private static var instance_set:Boolean = false;
    private static function get instance():AllBinaryRenderer {
        if (!AllBinaryRenderer.instance_set) {
            AllBinaryRenderer.instance_set = true;
            AllBinaryRenderer.instance_value = new AllBinaryRenderer();
        }
        return AllBinaryRenderer.instance_value;
    }
    

    public static function getInstance():AllBinaryRenderer {
        return AllBinaryRenderer.instance;
    }
    

    public function setRunnable(runnable:JRunnable):void {
    }
    

    public function clearRunnable():void {
    }
    }
}

