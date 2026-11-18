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
package org.allbinary.business.user.modules.configuration {
    import org.allbinary.logic.io.file.CommonDataFileStrings;

    public class UserConfigurationData {
    public static const NAME:String = "USER_CONFIGURATION_NAME";
    private static var UNCRYPTED_EXTENSION_value:String;
    private static var UNCRYPTED_EXTENSION_set:Boolean = false;
    public static function get UNCRYPTED_EXTENSION():String {
        if (!UserConfigurationData.UNCRYPTED_EXTENSION_set) {
            UserConfigurationData.UNCRYPTED_EXTENSION_set = true;
            UserConfigurationData.UNCRYPTED_EXTENSION_value = CommonDataFileStrings.getInstance().UNCRYPTED_EXTENSION;
        }
        return UserConfigurationData.UNCRYPTED_EXTENSION_value;
    }
    private static var ENCRYPTED_EXTENSION_value:String;
    private static var ENCRYPTED_EXTENSION_set:Boolean = false;
    public static function get ENCRYPTED_EXTENSION():String {
        if (!UserConfigurationData.ENCRYPTED_EXTENSION_set) {
            UserConfigurationData.ENCRYPTED_EXTENSION_set = true;
            UserConfigurationData.ENCRYPTED_EXTENSION_value = CommonDataFileStrings.getInstance().ENCRYPTED_EXTENSION;
        }
        return UserConfigurationData.ENCRYPTED_EXTENSION_value;
    }
    

    public function UserConfigurationData() {
        super();
    }
    }
}

