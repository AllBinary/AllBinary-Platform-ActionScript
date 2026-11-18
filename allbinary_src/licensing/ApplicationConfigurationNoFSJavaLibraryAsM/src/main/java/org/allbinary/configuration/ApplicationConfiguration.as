// Generated Code Do Not Modify
package org.allbinary.configuration {
    import org.allbinary.game.configuration.feature.Feature;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.MainFeatureFactory;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;

    public class ApplicationConfiguration {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!ApplicationConfiguration.instance_set) {
            ApplicationConfiguration.instance_set = true;
            ApplicationConfiguration.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return ApplicationConfiguration.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var fullscreen:Boolean = false;
        private var showTitleBar:Boolean = false;
        private var progressBarView:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsApplicationConfiguration():void {
    this.logUtil = LogUtil.getInstance();
    this.fullscreen = true;
    this.showTitleBar = false;
    this.progressBarView = false;
        }
    

    public static function getInstance():ApplicationConfiguration {
        if (ApplicationConfiguration.instance == NullUtil.getInstance().NULL_OBJECT) {
            ApplicationConfiguration.instance = new ApplicationConfiguration();
        }
        return (ApplicationConfiguration.instance as ApplicationConfiguration);
    }
    

    public function ApplicationConfiguration() {
        super();
        this.initFieldsApplicationConfiguration();
        try {
            this.read();
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
        }
    }
    

    private function read():void {
        this.setFullscreen(true);
        this.setProgressBarView(false);
        this.setShowTitleBar(false);
        this.logUtil.putF("Read Configuration: " + this.toString(), this, "read");
    }
    

    public function write():void {
    }
    

    public function update(gameFeature:Feature):void {
        if (gameFeature == MainFeatureFactory.getInstance().FULL_SCREEN) {
            var features:Features = Features.getInstance();
            if (features.isFeature(gameFeature)) {
                if (!this.isFullscreen()) {
                    this.setFullscreen(true);
                    this.write();
                }
            } else {
                if (this.isFullscreen()) {
                    this.setFullscreen(false);
                    this.write();
                }
            }
        }
    }
    

    public function setFullscreen(fullscreen:Boolean):void {
        this.fullscreen = fullscreen;
    }
    

    public function isFullscreen():Boolean {
        return this.fullscreen;
    }
    

    public function setShowTitleBar(showTitleBar:Boolean):void {
        this.showTitleBar = showTitleBar;
    }
    

    public function isShowTitleBar():Boolean {
        return this.showTitleBar;
    }
    

    public function setProgressBarView(progressBarView:Boolean):void {
        this.progressBarView = progressBarView;
    }
    

    public function isProgressBarView():Boolean {
        return this.progressBarView;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("isFullscreen: ");
        stringBuffer.appendboolean(this.isFullscreen());
        stringBuffer.append(" isProgressBarView: ");
        stringBuffer.appendboolean(this.isProgressBarView());
        stringBuffer.append(" isShowTitleBar: ");
        stringBuffer.appendboolean(this.isShowTitleBar());
        return stringBuffer.toString();
    }
    }
}

