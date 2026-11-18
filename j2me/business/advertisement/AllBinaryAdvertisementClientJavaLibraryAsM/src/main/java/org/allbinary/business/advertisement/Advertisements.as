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
package org.allbinary.business.advertisement {
    import org.allbinary.game.rand.MyRandomFactory;
    import org.allbinary.logic.system.security.licensing.LockedUtil;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class Advertisements {
        private var bannerList:BasicArrayList = null;
        private var pageList:BasicArrayList = null;
        private var myRandomFactory:MyRandomFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsAdvertisements():void {
    this.bannerList = new BasicArrayListD();
    this.pageList = new BasicArrayListD();
    this.myRandomFactory = MyRandomFactory.getInstance();
        }

        public function Advertisements() {
            super();
            this.initFieldsAdvertisements();
        }
    

    public function addPage(advertisementProcessorInterface:AdvertisementProcessorInterface):void {
        if (!this.pageList.contains(advertisementProcessorInterface)) {
            this.pageList.add(advertisementProcessorInterface);
        }
    }
    

    public function startRandomPage():void {
        var size:int = this.pageList.size();
        if (size > 0) {
            var random:int = this.myRandomFactory.getAbsoluteNextInt(size);
            var advertisementProcessorInterface:AdvertisementProcessorInterface = (this.pageList.objectArray[random] as AdvertisementProcessorInterface);
            advertisementProcessorInterface.start();
        }
    }
    

    public function processRandomPage():void {
        if (LockedUtil.getInstance().isLocked()) {
            var size:int = this.pageList.size();
            if (size > 0) {
                var random:int = this.myRandomFactory.getAbsoluteNextInt(size);
                var advertisementProcessorInterface:AdvertisementProcessorInterface = (this.pageList.objectArray[random] as AdvertisementProcessorInterface);
                advertisementProcessorInterface.process();
            }
        }
    }
    

    public function stopAllPage():void {
        for (var index:int = this.pageList.size(); --index >= 0; ) {
            var advertisementProcessorInterface:AdvertisementProcessorInterface = (this.pageList.objectArray[index] as AdvertisementProcessorInterface);
            advertisementProcessorInterface.stop();
        }
    }
    

    public function addBanner(advertisementProcessorInterface:AdvertisementProcessorInterface):void {
        if (!this.bannerList.contains(advertisementProcessorInterface)) {
            this.bannerList.add(advertisementProcessorInterface);
        }
    }
    

    public function startAll():void {
        for (var index:int = this.bannerList.size(); --index >= 0; ) {
            var advertisementProcessorInterface:AdvertisementProcessorInterface = (this.bannerList.objectArray[index] as AdvertisementProcessorInterface);
            advertisementProcessorInterface.start();
        }
    }
    

    public function stopAllBanner():void {
        for (var index:int = this.bannerList.size(); --index >= 0; ) {
            var advertisementProcessorInterface:AdvertisementProcessorInterface = (this.bannerList.objectArray[index] as AdvertisementProcessorInterface);
            advertisementProcessorInterface.stop();
        }
    }
    

    public function getBanner(index:int):AdvertisementProcessorInterface {
        var advertisementProcessorInterface:AdvertisementProcessorInterface = (this.bannerList.objectArray[index] as AdvertisementProcessorInterface);
        return advertisementProcessorInterface;
    }
    

    public function stopAll():void {
        this.stopAllBanner();
        this.stopAllPage();
    }
    }
}

