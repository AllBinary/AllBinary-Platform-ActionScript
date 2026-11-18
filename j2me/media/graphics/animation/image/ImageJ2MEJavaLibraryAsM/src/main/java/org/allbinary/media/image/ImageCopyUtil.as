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
package org.allbinary.media.image {
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.GameFeatureFactory;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class ImageCopyUtil {
    private static var instance_value:ImageCopyUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ImageCopyUtil {
        if (!ImageCopyUtil.instance_set) {
            ImageCopyUtil.instance_set = true;
            ImageCopyUtil.instance_value = new ImageCopyUtil();
        }
        return ImageCopyUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var imageCreationUtil:ImageCreationUtil = null;
        private var anchor:int = 0;
        private var gameFeatureFactory:GameFeatureFactory = null;
        private var features:Features = null;
        private var NO_COPY:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsImageCopyUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.imageCreationUtil = ImageCreationUtil.getInstance();
    this.anchor = Anchor.TOP_LEFT;
    this.gameFeatureFactory = GameFeatureFactory.getInstance();
    this.features = Features.getInstance();
    this.NO_COPY = "J2ME does not need to copy images after initial loading";
        }
    

    public static function getInstance():ImageCopyUtil {
        return ImageCopyUtil.instance;
    }
    

    public function ImageCopyUtil() {
        super();
        this.initFieldsImageCopyUtil();
    }
    

    public function createImageForRotation(originalImage:Image):Image {
        return this.createImage(originalImage);
    }
    

    public function createImage(originalImage:Image):Image {
        if (!this.features.isFeature(this.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) {
            this.logUtil.put(this.NO_COPY, this, this.commonStrings.CONSTRUCTOR, new JException("Exception", ""));
            return originalImage;
        }
        var image:Image = this.imageCreationUtil.createImageWH(originalImage.getWidth(), originalImage.getHeight());
        if (image.isMutable()) {
            image.getGraphics().drawImage(originalImage, 0, 0, this.anchor);
            return image;
        } else {
            throw new JException("Exception", "Not Mutable");
        }
    }
    

    public function createImageScale(originalImage:Image, canvasScale:Number, resize:Boolean):Image {
        if (!this.features.isFeature(this.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) {
            this.logUtil.put(this.NO_COPY, this, this.commonStrings.CONSTRUCTOR, new JException("Exception", ""));
            return originalImage;
        }
        var newWidth:int = (originalImage.getWidth() * canvasScale);
        var newHeight:int = (originalImage.getHeight() * canvasScale);
        if (resize) {
            if (newWidth < newHeight) {
                newWidth = newHeight;
            }
            if (newHeight < newWidth) {
                newHeight = newWidth;
            }
        }
        var image:Image = this.imageCreationUtil.createImageWH(newWidth, newHeight);
        if (image.isMutable()) {
            var halfWidthDelta:int = (newWidth - originalImage.getWidth()) / 2;
            var halfHeightDelta:int = (newHeight - originalImage.getHeight()) / 2;
            var graphics:Graphics = image.getGraphics();
            graphics.drawImage(originalImage, halfWidthDelta, halfHeightDelta, this.anchor);
            return image;
        } else {
            throw new JException("Exception", "Not Mutable");
        }
    }
    }
}

