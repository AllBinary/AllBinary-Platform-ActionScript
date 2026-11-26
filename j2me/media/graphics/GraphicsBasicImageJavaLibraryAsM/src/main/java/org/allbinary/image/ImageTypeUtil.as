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
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class ImageTypeUtil {
    private static var SINGLETON_value:ImageTypeUtil;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():ImageTypeUtil {
        if (!ImageTypeUtil.SINGLETON_set) {
            ImageTypeUtil.SINGLETON_set = true;
            ImageTypeUtil.SINGLETON_value = new ImageTypeUtil();
        }
        return ImageTypeUtil.SINGLETON_value;
    }
    private static function set SINGLETON(value:ImageTypeUtil):void {
        ImageTypeUtil.SINGLETON_set = true;
        ImageTypeUtil.SINGLETON_value = value;
    }
        public var PNG:String = null;
        public var JPG:String = null;
        public var GIF:String = null;
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsImageTypeUtil():void {
    this.PNG = "png";
    this.JPG = "jpg";
    this.GIF = "gif";
    this.list = new BasicArrayListD();
        }
    

    public function ImageTypeUtil() {
        super();
        this.initFieldsImageTypeUtil();
        this.list.add(this.JPG);
        this.list.add(this.GIF);
        this.list.add(this.PNG);
    }
    

    public function isSupported(mediaFileType:String):Boolean {
        mediaFileType = mediaFileType.toLowerCase();
        for (var index:int = int(this.list.size() - 1); index >= 0; index--) {
            var name:String = (this.list.get_(index) as String);
            if (JString.compareTo(mediaFileType, name) == 0) {
                return true;
            }
        }
        return false;
    }
    

    public static function getInstance():ImageTypeUtil {
        return ImageTypeUtil.SINGLETON;
    }
    }
}

