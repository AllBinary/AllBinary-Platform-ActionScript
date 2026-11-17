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
package org.allbinary.logic.communication.log.config.type {
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class LogConfigTypes {
    private static var LOGGING_value:BasicArrayList;
    private static var LOGGING_set:Boolean = false;
    public static function get LOGGING():BasicArrayList {
        if (!LogConfigTypes.LOGGING_set) {
            LogConfigTypes.LOGGING_set = true;
            LogConfigTypes.LOGGING_value = new BasicArrayListD();
        }
        return LogConfigTypes.LOGGING_value;
    }
    

    public function LogConfigTypes() {
        super();
    }
    }
}

