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
package org.allbinary.logic.visual.media {
    import java.util.JHashMap;
    import org.allbinary.logic.StdUtil;

    public class MediaData {
    private static var hashMap_value:JHashMap;
    private static var hashMap_set:Boolean = false;
    private static function get hashMap():JHashMap {
        if (!MediaData.hashMap_set) {
            MediaData.hashMap_set = true;
            MediaData.hashMap_value = StdUtil.getInstance().createHashMap();
        }
        return MediaData.hashMap_value;
    }
    private static function set hashMap(value:JHashMap):void {
        MediaData.hashMap_set = true;
        MediaData.hashMap_value = value;
    }
        private var name:String = null;
        private var type:String = null;
        private var extension:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsMediaData():void {
    
    
    
        }
    

    public function MediaData(a_Name:String) {
        super();
        this.initFieldsMediaData();
        this.name = a_Name;
        this.extension = "." + this.name;
        this.type = MediaTypeData.getInstance().NOT_RESIZABLE_MEDIA;
        MediaData.hashMap.put(a_Name, this);
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function getType():String {
        return this.type;
    }
    

    public function getExtension():String {
        return this.extension;
    }
    

    public function isConvertableTo(mediaData:MediaData):Boolean {
        if (this == MediaDataFactory.getInstance().GIF && mediaData == MediaDataFactory.getInstance().JPG) {
            return true;
        }
        return false;
    }
    

    public function toString():String {
        return this.getName();
    }
    

    public static function get_(a_Name:String):MediaData {
        var mediaData:MediaData = (MediaData.hashMap.get_(a_Name) as MediaData);
        if (mediaData != null) {
            return mediaData;
        } else {
            throw new JException("Exception", "No Such MediaData");
        }
    }
    

    public static function getDefault():MediaData {
        return MediaDataFactory.getInstance().JPG;
    }
    

    public static function toHashMap():JHashMap {
        return MediaData.hashMap;
    }
    }
}

