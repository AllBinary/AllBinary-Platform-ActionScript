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
    import org.allbinary.J2MEUtil;
    import org.allbinary.TsUtil;
    import org.allbinary.data.resource.ResourceUtil;
    import org.allbinary.game.gd.resource.GDResources;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.system.Memory;
    import java.lang.JThread;

    public class ImageCache extends ImageCacheBase {
    private static var NULL_IMAGE_CACHE_value:ImageCache;
    private static var NULL_IMAGE_CACHE_set:Boolean = false;
    public static function get NULL_IMAGE_CACHE():ImageCache {
        if (!ImageCache.NULL_IMAGE_CACHE_set) {
            ImageCache.NULL_IMAGE_CACHE_set = true;
            ImageCache.NULL_IMAGE_CACHE_value = new ImageCache();
        }
        return ImageCache.NULL_IMAGE_CACHE_value;
    }
        public var commonStrings:CommonStrings = null;
        private var tsUtil:TsUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsImageCache():void {
    this.commonStrings = CommonStrings.getInstance();
    this.tsUtil = TsUtil.getInstance();
        }
    

    public function ImageCache() {
        super();
        this.initFieldsImageCache();
    }
    

    public function addListener(renderer:Object):void {
    }
    

    public function getIndex(key:Object):int {
        var gdResources:GDResources = GDResources.getInstance();
        var resourceStringArray:Vector.<String> = gdResources.resourceStringArray;
        var size:int = resourceStringArray.length;
        for (var index:int = 0; index < size; index++) {
            if (resourceStringArray[index] === key) {
                return index;
            }
        }
        this.logUtil.putF(new StringMaker().append("unable to find key: ").append(StringUtil.getInstance().toString1(key)).toString(), this, this.commonStrings.RUN);
        throw new JException("RuntimeException", "");
    }
    

    override public function get_(caller:String, width:int, height:int):Image {
        var foundIndex:int = this.getIndexWH(width, height);
        var image:Image = this.getFromAvailable(foundIndex, width, height);
        if (image == NullImage.NULL_IMAGE) {
            this.volume += int(width * height);
            if (this.volume > 32000) {
                this.tsUtil.gc();
                this.volume = 0;
            }
            image = this.createImage(caller, width, height);
            var widths:Vector.<int> = this.widths;
            if (this.nextIndex > int(widths.length - 1)) {
                if (foundIndex == -1) {
                    foundIndex = this.nextIndex;
                    widths[this.nextIndex] = width;
                    this.heights[this.nextIndex] = height;
                    this.nextIndex++;
                }
                this.listOfList[foundIndex].add(image);
            }
        }
        return image;
    }
    

    override public function getWithKey(key:Object):Image {
        var image:Image = this.getImage(key);
        if (image == NullImage.NULL_IMAGE) {
            var resourceUtil:ResourceUtil = ResourceUtil.getInstance();
            var resourceInputStream:InputStream = resourceUtil.getResourceAsStream((key as String));
            if (resourceInputStream == null) {
                throw new JException("RuntimeException", new StringMaker().append("Image resource is not available for key: ").append(StringUtil.getInstance().toString1(key)).toString());
            }
            try {
                image = this.createImageFromInputStream(key, resourceInputStream);
            } catch (e:*) {
                this.logUtil.put("Exception: Trying Again After GC", this, this.commonStrings.GET, e);
                this.logUtil.putF(new StringMaker().append("InputStream: ").append(StringUtil.getInstance().toString1(resourceInputStream)).toString(), this, this.commonStrings.GET);
                this.tsUtil.gc();
                this.tsUtil.gc();
                this.logUtil.putF(Memory.getInfo(), this, this.commonStrings.GET);
                JThread.sleep(100);
                image = this.createImageFromInputStream(key, resourceInputStream);
            }
            if (J2MEUtil.isHTML()) {
            } else {
                resourceInputStream.close();
            }
            this.hashtable.put(key, image);
        }
        return image;
    }
    

    public function loadImageForAnimation():void {
    }
    

    public function progressEnded():void {
    }
    

    public function runTask():void {
    }
    

    public function isLazy():Boolean {
        return false;
    }
    }
}

