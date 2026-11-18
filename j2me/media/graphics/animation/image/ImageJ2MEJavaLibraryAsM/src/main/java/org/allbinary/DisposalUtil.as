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
package org.allbinary {
    import org.eclipse.swt.graphics.Resource;

    public class DisposalUtil {
    private static var instance_value:DisposalUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():DisposalUtil {
        if (!DisposalUtil.instance_set) {
            DisposalUtil.instance_set = true;
            DisposalUtil.instance_value = new DisposalUtil();
        }
        return DisposalUtil.instance_value;
    }
    

    public static function getInstance():DisposalUtil {
        return DisposalUtil.instance;
    }
    

    public function disposeImage(image:Image):void {
    }
    

    public function disposeResource(resource:Resource):void {
        if (!resource.isDisposed()) {
            resource.dispose();
        }
    }
    }
}

