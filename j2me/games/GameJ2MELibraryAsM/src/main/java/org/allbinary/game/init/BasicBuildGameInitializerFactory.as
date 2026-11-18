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
package org.allbinary.game.init {

    public class BasicBuildGameInitializerFactory implements GameInitializationInterfaceFactoryInterface {
    private static var NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY_value:BasicBuildGameInitializerFactory;
    private static var NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY_set:Boolean = false;
    public static function get NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY():BasicBuildGameInitializerFactory {
        if (!BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY_set) {
            BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY_set = true;
            BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY_value = new BasicBuildGameInitializerFactory();
        }
        return BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY_value;
    }
    

    public function getInstance():GameInitializationInterface {
        return BaseGameInitialization.NULL_BASE_GAME_INITIALIZATION;
    }
    }
}

