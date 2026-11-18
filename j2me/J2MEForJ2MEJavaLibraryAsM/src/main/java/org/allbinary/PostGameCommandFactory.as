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
    import org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory;
    import org.allbinary.graphics.displayable.MyCanvas;

    public class PostGameCommandFactory {
    private static var instance_value:PostGameCommandFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():PostGameCommandFactory {
        if (!PostGameCommandFactory.instance_set) {
            PostGameCommandFactory.instance_set = true;
            PostGameCommandFactory.instance_value = new PostGameCommandFactory();
        }
        return PostGameCommandFactory.instance_value;
    }
    

    public static function getInstance():PostGameCommandFactory {
        return PostGameCommandFactory.instance;
    }
    

    public function addCommands(canvas:MyCanvas):void {
        MultiPlayerGameFeatureFactory.getInstance().addCommands(canvas);
    }
    }
}

