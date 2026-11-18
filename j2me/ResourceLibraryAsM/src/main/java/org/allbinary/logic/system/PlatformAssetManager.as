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
package org.allbinary.logic.system {
    import java.io.JInputStream;
    import org.allbinary.data.resource.ResourceUtil;

    public class PlatformAssetManager {
    private static var instance_value:PlatformAssetManager;
    private static var instance_set:Boolean = false;
    private static function get instance():PlatformAssetManager {
        if (!PlatformAssetManager.instance_set) {
            PlatformAssetManager.instance_set = true;
            PlatformAssetManager.instance_value = new PlatformAssetManager();
        }
        return PlatformAssetManager.instance_value;
    }
    

    public static function getInstance():PlatformAssetManager {
        return PlatformAssetManager.instance;
    }
    

    public function getResourceAsStream(resource:String):InputStream {
        var resourceUtil:ResourceUtil = ResourceUtil.getInstance();
        var inputStream:InputStream = resourceUtil.getResourceAsStream(resource);
        return inputStream;
    }
    }
}

