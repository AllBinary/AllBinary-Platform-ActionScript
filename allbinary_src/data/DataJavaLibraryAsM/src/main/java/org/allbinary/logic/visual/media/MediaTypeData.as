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

    public class MediaTypeData {
    private static var instance_value:MediaTypeData;
    private static var instance_set:Boolean = false;
    private static function get instance():MediaTypeData {
        if (!MediaTypeData.instance_set) {
            MediaTypeData.instance_set = true;
            MediaTypeData.instance_value = new MediaTypeData();
        }
        return MediaTypeData.instance_value;
    }
        public var RESIZABLE_MEDIA:String = null;
        public var NOT_RESIZABLE_MEDIA:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsMediaTypeData():void {
    this.RESIZABLE_MEDIA = "RESIZABLE_MEDIA";
    this.NOT_RESIZABLE_MEDIA = "NOT_RESIZABLE_MEDIA";
        }
    

    public static function getInstance():MediaTypeData {
        return MediaTypeData.instance;
    }
    

    public function MediaTypeData() {
        super();
        this.initFieldsMediaTypeData();
    }
    }
}

