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
package org.allbinary.image {
    import java.io.JInputStream;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class ImageCacheBase {
        public var logUtil:LogUtil = null;
        public var imageFactory:ImageFactory = null;
        public var hashtable:ABHashtable = null;
        public var SIZE:int = 0;
        public var widths:Vector.<int> = null;
        public var heights:Vector.<int> = null;
        public var listOfList:Vector.<BasicArrayList> = null;
        public var availableListOfList:Vector.<BasicArrayList> = null;
        public var volume:int = 0;
        public var nextIndex:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsImageCacheBase():void {
    this.logUtil = LogUtil.getInstance();
    this.imageFactory = ImageFactory.getInstance();
    this.hashtable = StdUtil.getInstance().createHashtable();
    this.SIZE = 128;
    this.widths = new Vector.<int>(this.SIZE);
    this.heights = new Vector.<int>(this.SIZE);
    this.listOfList = new Vector.<BasicArrayList>(this.SIZE);
    this.availableListOfList = new Vector.<BasicArrayList>(this.SIZE);
    this.volume = 0;
    this.nextIndex = 0;
        }
    

    public function ImageCacheBase() {
        super();
        this.initFieldsImageCacheBase();
        for (var index:int = int(this.listOfList.length - 1); index >= 0; index--) {
            this.listOfList[index] = new BasicArrayListD();
        }
        for (index = int(this.availableListOfList.length - 1); index >= 0; index--) {
            this.availableListOfList[index] = new BasicArrayListD();
        }
    }
    

    public function getImage(resourceId:Object):Image {
        var imageCanBeNull:Object = this.hashtable.get_(resourceId);
        if (imageCanBeNull == null) {
            return NullImage.NULL_IMAGE;
        }
        return (imageCanBeNull as Image);
    }
    

    public function releaseAll():void {
        for (var index:int = int(this.listOfList.length - 1); index >= 0; index--) {
            this.availableListOfList[index].clear();
            this.availableListOfList[index].addAllList(this.listOfList[index]);
        }
        this.logUtil.putF(new StringMaker().append("ImageCache: ").append(this.toString()).toString(), this, "releaseAll");
    }
    

    public function getIndexWH(width:int, height:int):int {
        var foundIndex:int = -1;
        var size:int = this.widths.length;
        for (var index:int = 0; index < size; index++) {
            if (this.widths[index] == width && this.heights[index] == height) {
                foundIndex = index;
                return foundIndex;
            }
        }
        return foundIndex;
    }
    

    public function getFromAvailable(foundIndex:int, width:int, height:int):Image {
        if (foundIndex != -1) {
            if (this.availableListOfList[foundIndex].size() > 0) {
                var list:BasicArrayList = this.availableListOfList[foundIndex];
                return (list.removeAt(int(list.size() - 1)) as Image);
            }
        }
        return NullImage.NULL_IMAGE;
    }
    

    public function get_(caller:String, width:int, height:int):Image {
        throw new JException("RuntimeException", "");
    }
    

    public function getWithKey(key:Object):Image {
        throw new JException("RuntimeException", "");
    }
    

    public function createImage(caller:String, width:int, height:int):Image {
        return this.imageFactory.createImage(caller, width, height);
    }
    

    public function createImageFromInputStream(key:Object, inputStream:InputStream):Image {
        return this.imageFactory.createImageFromInputStream(key, inputStream);
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        for (var index:int = int(this.nextIndex - 1); index >= 0; index--) {
            var width:int = this.widths[index];
            var height:int = this.heights[index];
            var total:int = this.listOfList[index].size();
            var totalAvailable:int = this.availableListOfList[index].size();
            stringBuffer.append(" w: ");
            stringBuffer.appendint(width);
            stringBuffer.append(" h: ");
            stringBuffer.appendint(height);
            stringBuffer.append(CommonSeps.getInstance().SPACE);
            stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL);
            stringBuffer.appendint(total);
            stringBuffer.append(" available: ");
            stringBuffer.appendint(totalAvailable);
        }
        return stringBuffer.toString();
    }
    

    public function getHashtableP():ABHashtable {
        return this.hashtable;
    }
    

    public function init(image:Image):void {
    }
    

    public function initProgress():void {
    }
    }
}

