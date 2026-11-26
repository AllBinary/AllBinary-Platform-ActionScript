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
package org.allbinary.game.ai {
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.util.BasicArrayListUtil;
    import java.lang.JInteger;

    public class ArtificialIntelligenceInterfaceFactoryInterfaceFactory {
    private static var SINGLETON_value:ArtificialIntelligenceInterfaceFactoryInterfaceFactory;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():ArtificialIntelligenceInterfaceFactoryInterfaceFactory {
        if (!ArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON_set) {
            ArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON_set = true;
            ArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON_value = new ArtificialIntelligenceInterfaceFactoryInterfaceFactory();
        }
        return ArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON_value;
    }
    private static function set SINGLETON(value:ArtificialIntelligenceInterfaceFactoryInterfaceFactory):void {
        ArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON_set = true;
        ArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON_value = value;
    }
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsArtificialIntelligenceInterfaceFactoryInterfaceFactory():void {
    this.list = BasicArrayListUtil.getInstance().getImmutableInstance();
        }

        public function ArtificialIntelligenceInterfaceFactoryInterfaceFactory() {
            super();
            this.initFieldsArtificialIntelligenceInterfaceFactoryInterfaceFactory();
        }
    

    public function clear():void {
        this.list = new BasicArrayListD();
    }
    

    public static function getInstance():ArtificialIntelligenceInterfaceFactoryInterfaceFactory {
        return ArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON;
    }
    

    public function getInstanceFromCollection(hashtable:ABHashtable):ArtificialIntelligenceInterfaceFactoryInterface {
        var typeInteger:* = (hashtable.get_((BasicAI.ID as Object)) as *);
        var type:int = int(typeInteger);
        var artificialIntelligenceInterfaceFactoryInterface:ArtificialIntelligenceInterfaceFactoryInterface = (this.list.objectArray[int(type - 1)] as ArtificialIntelligenceInterfaceFactoryInterface);
        return artificialIntelligenceInterfaceFactoryInterface;
    }
    

    public function add(artificialIntelligenceInterfaceFactoryInterface:ArtificialIntelligenceInterfaceFactoryInterface):void {
        this.list.add(artificialIntelligenceInterfaceFactoryInterface);
    }
    }
}

