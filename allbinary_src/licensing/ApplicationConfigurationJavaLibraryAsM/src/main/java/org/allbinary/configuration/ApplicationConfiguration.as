// Generated Code Do Not Modify
package org.allbinary.configuration {
    import java.io.JCloseable;
    import java.io.JInputStream;
    import java.io.JOutputStream;
    import org.allbinary.game.configuration.feature.Feature;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.MainFeatureFactory;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.AbDataInputStream;
    import org.allbinary.logic.io.AbDataOutputStream;
    import org.allbinary.logic.io.FileStreamFactory;
    import org.allbinary.logic.io.NullCloseable;
    import org.allbinary.logic.io.StreamUtil;
    import org.allbinary.logic.io.file.FileFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
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
        private var FILE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsApplicationConfiguration():void {
    this.logUtil = LogUtil.getInstance();
    this.fullscreen = true;
    this.showTitleBar = false;
    this.progressBarView = false;
    this.FILE = "ReloadConfiguration.dat";
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
            if (FileFactory.getInstance().isFile(this.FILE)) {
                this.read();
            } else {
                this.write();
            }
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
        }
    }
    

    private function read():void {
        var fileInputStreamFactory:FileStreamFactory = FileStreamFactory.getInstance();
        var fileInputStream:InputStream = fileInputStreamFactory.getFileInputStreamInstance(StringUtil.getInstance().EMPTY_STRING, this.FILE);
        var dataInputStream:AbDataInputStream = new AbDataInputStream(fileInputStream);
        var fullScreen:int = dataInputStream.readInt();
        if (fullScreen == 0) {
            this.setFullscreen(false);
        } else if (fullScreen == 1) {
            this.setFullscreen(true);
        } else {
            throw new JException("Exception", "Invalid FullScreen ActivityConfiguration");
        }
        var progressBarView:int = dataInputStream.readInt();
        if (progressBarView == 0) {
            this.setProgressBarView(false);
        } else if (progressBarView == 1) {
            this.setProgressBarView(true);
        } else {
            throw new JException("Exception", "Invalid ProgressBarView ActivityConfiguration");
        }
        var showTitleBar:int = dataInputStream.readInt();
        if (showTitleBar == 0) {
            this.setShowTitleBar(false);
        } else if (showTitleBar == 1) {
            this.setShowTitleBar(true);
        } else {
            throw new JException("Exception", "Invalid ShowTitleBar ActivityConfiguration");
        }
        this.logUtil.putF("Read Configuration: " + this.toString(), this, "read");
    }
    

    public function write():void {
        var closeable:Closeable = NullCloseable.NULL_CLOSEABLE;
        try {
            this.logUtil.putF("Write Configuration: " + this.toString(), this, "write");
            var fileInputStreamFactory:FileStreamFactory = FileStreamFactory.getInstance();
            var fileOutputStream:OutputStream = fileInputStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, this.FILE);
            var dataOutputStream:AbDataOutputStream = new AbDataOutputStream(fileOutputStream);
            closeable = dataOutputStream;
            if (this.isFullscreen()) {
                dataOutputStream.writeInt(1);
            } else {
                dataOutputStream.writeInt(0);
            }
            if (this.isProgressBarView()) {
                dataOutputStream.writeInt(1);
            } else {
                dataOutputStream.writeInt(0);
            }
            if (this.isShowTitleBar()) {
                dataOutputStream.writeInt(1);
            } else {
                dataOutputStream.writeInt(0);
            }
            dataOutputStream.flush();
        } catch (e:*) {
            throw e;
        } finally {
            StreamUtil.getInstance().close(closeable);
        }
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

