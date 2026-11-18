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
package org.allbinary.audio {

    public class AudioContentTypeDataFactory {
    private static var instance_value:AudioContentTypeDataFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():AudioContentTypeDataFactory {
        if (!AudioContentTypeDataFactory.instance_set) {
            AudioContentTypeDataFactory.instance_set = true;
            AudioContentTypeDataFactory.instance_value = new AudioContentTypeDataFactory();
        }
        return AudioContentTypeDataFactory.instance_value;
    }
        public var MIME_AUDIO_TONE:AudioContentTypeData = null;
        public var MIME_AUDIO_AMR:AudioContentTypeData = null;
        public var MIME_AUDIO_AMR_WB:AudioContentTypeData = null;
        public var MIME_AUDIO_WAV:AudioContentTypeData = null;
        public var MIME_AUDIO_MIDI:AudioContentTypeData = null;
        public var MIME_AUDIO_SP_MIDI:AudioContentTypeData = null;

        // Java field initializers run after the base constructor
        private function initFieldsAudioContentTypeDataFactory():void {
    this.MIME_AUDIO_TONE = new AudioContentTypeData("audio/x-tone-seq");
    this.MIME_AUDIO_AMR = new AudioContentTypeData("audio/amr");
    this.MIME_AUDIO_AMR_WB = new AudioContentTypeData("audio/amr-wb");
    this.MIME_AUDIO_WAV = new AudioContentTypeData("audio/x-wav");
    this.MIME_AUDIO_MIDI = new AudioContentTypeData("audio/midi");
    this.MIME_AUDIO_SP_MIDI = new AudioContentTypeData("audio/sp-midi");
        }
    

    public static function getInstance():AudioContentTypeDataFactory {
        return AudioContentTypeDataFactory.instance;
    }
    

    public function AudioContentTypeDataFactory() {
        super();
        this.initFieldsAudioContentTypeDataFactory();
    }
    }
}

