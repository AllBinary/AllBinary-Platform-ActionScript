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

    public class MediaDataFactory {
    private static var instance_value:MediaDataFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():MediaDataFactory {
        if (!MediaDataFactory.instance_set) {
            MediaDataFactory.instance_set = true;
            MediaDataFactory.instance_value = new MediaDataFactory();
        }
        return MediaDataFactory.instance_value;
    }
        public var AVI:MediaData = null;
        public var BMP:MediaData = null;
        public var CEL:MediaData = null;
        public var FITS:MediaData = null;
        public var FLI:MediaData = null;
        public var GBR:MediaData = null;
        public var GIF:MediaData = null;
        public var GIH:MediaData = null;
        public var JPG:MediaData = null;
        public var PIX:MediaData = null;
        public var PNG:MediaData = null;
        public var PNM:MediaData = null;
        public var PSD:MediaData = null;
        public var PSP:MediaData = null;
        public var PS:MediaData = null;
        public var SGI:MediaData = null;
        public var SWF:MediaData = null;
        public var TGA:MediaData = null;
        public var TIFF:MediaData = null;
        public var WMF:MediaData = null;

        // Java field initializers run after the base constructor
        private function initFieldsMediaDataFactory():void {
    this.AVI = new MediaData("avi");
    this.BMP = new MediaData("bmp");
    this.CEL = new MediaData("cel");
    this.FITS = new MediaData("fits");
    this.FLI = new MediaData("fli");
    this.GBR = new MediaData("gbr");
    this.GIF = new MediaData("gif");
    this.GIH = new MediaData("gih");
    this.JPG = new MediaData("jpg");
    this.PIX = new MediaData("pix");
    this.PNG = new MediaData("png");
    this.PNM = new MediaData("pnm");
    this.PSD = new MediaData("psd");
    this.PSP = new MediaData("psp");
    this.PS = new MediaData("ps");
    this.SGI = new MediaData("SGI");
    this.SWF = new MediaData("swf");
    this.TGA = new MediaData("tga");
    this.TIFF = new MediaData("tiff");
    this.WMF = new MediaData("wmf");
        }

        public function MediaDataFactory() {
            super();
            this.initFieldsMediaDataFactory();
        }
    

    public static function getInstance():MediaDataFactory {
        return MediaDataFactory.instance;
    }
    }
}

