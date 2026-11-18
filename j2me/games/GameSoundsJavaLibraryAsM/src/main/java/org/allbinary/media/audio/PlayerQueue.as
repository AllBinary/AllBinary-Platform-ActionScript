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
package org.allbinary.media.audio {
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class PlayerQueue {
    private static const TOTAL:String = "Sounds In Queue: ";
        private var commonStrings:CommonStrings = null;
        private var list:BasicArrayList = null;
        private var max:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsPlayerQueue():void {
    this.commonStrings = CommonStrings.getInstance();
    this.list = new BasicArrayListD();
    
        }
    

    public function PlayerQueue(max:int) {
        super();
        this.initFieldsPlayerQueue();
        this.max = max;
    }
    

    public function add(sound:Sound):void {
        try {
            if (!this.list.contains(sound)) {
                this.list.add(sound);
            }
        } catch (e:*) {
            PreLogUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD);
        }
    }
    

    public function process():Boolean {
        var sound:Sound = NoSound.getInstance();
        try {
            var played:Boolean = false;
            if (this.list.size() > 0) {
                sound = (this.list.removeAt(0) as Sound);
                if (sound != null) {
                    sound.getPlayerP().start();
                }
                while (this.list.size() > this.max) {
                    this.list.removeAt(0);
                }
                played = true;
            }
            return played;
        } catch (e:*) {
            var resource:String = StringUtil.getInstance().EMPTY_STRING;
            if (sound != null) {
                resource = sound.getResource();
            }
            PreLogUtil.put(new StringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(resource).toString(), this, this.commonStrings.PROCESS);
            return false;
        }
    }
    

    public function clear():void {
        this.list.clear();
    }
    

    public function toString():String {
        return new StringMaker().append(PlayerQueue.TOTAL).appendint(this.list.size()).toString();
    }
    }
}

