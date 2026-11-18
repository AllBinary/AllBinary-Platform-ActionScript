/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package javax.microedition.lcdui {
    import org.allbinary.MIDPUtil;

    public class ChoiceGroupImageFactory {
    private static var instance_value:ChoiceGroupImageFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():ChoiceGroupImageFactory {
        if (!ChoiceGroupImageFactory.instance_set) {
            ChoiceGroupImageFactory.instance_set = true;
            ChoiceGroupImageFactory.instance_value = new ChoiceGroupImageFactory();
        }
        return ChoiceGroupImageFactory.instance_value;
    }
        private var multiOff:Vector.<int> = null;
        private var multiOn:Vector.<int> = null;
        private var radioOff:Vector.<int> = null;
        private var radioOn:Vector.<int> = null;
        private var midpUtil:MIDPUtil = null;
        private var imgMultiOffO:Image = null;
        private var imgMultiOnO:Image = null;
        private var imgRadioOffO:Image = null;
        private var imgRadioOnO:Image = null;
        public var imgMultiOff:Image = null;
        public var imgMultiOn:Image = null;
        public var imgRadioOff:Image = null;
        public var imgRadioOn:Image = null;
        private var imageArray:Vector.<Image> = null;

        // Java field initializers run after the base constructor
        private function initFieldsChoiceGroupImageFactory():void {
    this.multiOff = new <int>[((int(-119) << 24) >> 24), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, ((int(-12) << 24) >> 24), ((int(-117) << 24) >> 24), 0, 0, 0, 6, 80, 76, 84, 69, ((int(-1) << 24) >> 24), ((int(-1) << 24) >> 24), ((int(-1) << 24) >> 24), ((int(-69) << 24) >> 24), ((int(-69) << 24) >> 24), ((int(-69) << 24) >> 24), ((int(-57) << 24) >> 24), 75, ((int(-33) << 24) >> 24), ((int(-8) << 24) >> 24), 0, 0, 0, 30, 73, 68, 65, 84, 120, ((int(-38) << 24) >> 24), 99, 96, 96, 96, 96, 12, 101, ((int(-8) << 24) >> 24), ((int(-51) << 24) >> 24), ((int(-32) << 24) >> 24), ((int(-64) << 24) >> 24), 32, ((int(-64) << 24) >> 24), ((int(-60) << 24) >> 24), ((int(-64) << 24) >> 24), ((int(-64) << 24) >> 24), ((int(-128) << 24) >> 24), 11, 51, ((int(-122) << 24) >> 24), 50, ((int(-4) << 24) >> 24), 6, 0, 63, 116, 3, 1, 53, ((int(-108) << 24) >> 24), 39, ((int(-26) << 24) >> 24), 0, 0, 0, 0, 73, 69, 78, 68, ((int(-82) << 24) >> 24), 66, 96, ((int(-126) << 24) >> 24)];
    this.multiOn = new <int>[((int(-119) << 24) >> 24), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, ((int(-12) << 24) >> 24), ((int(-117) << 24) >> 24), 0, 0, 0, 12, 80, 76, 84, 69, ((int(-1) << 24) >> 24), ((int(-1) << 24) >> 24), ((int(-1) << 24) >> 24), ((int(-69) << 24) >> 24), ((int(-69) << 24) >> 24), ((int(-69) << 24) >> 24), 106, 106, 106, 2, 2, 2, 106, ((int(-103) << 24) >> 24), 14, ((int(-47) << 24) >> 24), 0, 0, 0, 53, 73, 68, 65, 84, 120, ((int(-38) << 24) >> 24), 99, 96, 96, 124, ((int(-64) << 24) >> 24), ((int(-16) << 24) >> 24), ((int(-1) << 24) >> 24), ((int(-77) << 24) >> 24), 3, ((int(-45) << 24) >> 24), 65, ((int(-111) << 24) >> 24), 15, 76, 12, 108, 12, 76, 12, ((int(-4) << 24) >> 24), 12, 76, 12, 18, 12, 76, ((int(-68) << 24) >> 24), 127, 24, ((int(-104) << 24) >> 24), 126, 45, 96, 96, ((int(-7) << 24) >> 24), ((int(-11) << 24) >> 24), ((int(-109) << 24) >> 24), ((int(-127) << 24) >> 24), ((int(-23) << 24) >> 24), ((int(-65) << 24) >> 24), 3, 3, ((int(-29) << 24) >> 24), 127, ((int(-122) << 24) >> 24), ((int(-113) << 24) >> 24), 0, 5, 37, 12, ((int(-34) << 24) >> 24), 1, ((int(-99) << 24) >> 24), ((int(-83) << 24) >> 24), 100, 0, 0, 0, 0, 73, 69, 78, 68, ((int(-82) << 24) >> 24), 66, 96, ((int(-126) << 24) >> 24)];
    this.radioOff = new <int>[((int(-119) << 24) >> 24), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, ((int(-44) << 24) >> 24), ((int(-62) << 24) >> 24), ((int(-97) << 24) >> 24), ((int(-75) << 24) >> 24), 0, 0, 0, 9, 80, 76, 84, 69, ((int(-1) << 24) >> 24), ((int(-1) << 24) >> 24), ((int(-1) << 24) >> 24), ((int(-69) << 24) >> 24), ((int(-69) << 24) >> 24), ((int(-69) << 24) >> 24), 106, 106, 106, ((int(-44) << 24) >> 24), 13, ((int(-1) << 24) >> 24), ((int(-24) << 24) >> 24), 0, 0, 0, 42, 73, 68, 65, 84, 120, ((int(-38) << 24) >> 24), 99, 96, 90, ((int(-59) << 24) >> 24), ((int(-64) << 24) >> 24), 32, ((int(-63) << 24) >> 24), 48, ((int(-127) << 24) >> 24), 65, ((int(-127) << 24) >> 24), 65, ((int(-127) << 24) >> 24), 41, ((int(-127) << 24) >> 24), ((int(-31) << 24) >> 24), 5, 19, 3, 3, 3, 50, 102, 80, 96, 80, 96, ((int(-6) << 24) >> 24), ((int(-63) << 24) >> 24), 80, ((int(-64) << 24) >> 24), ((int(-64) << 24) >> 24), ((int(-76) << 24) >> 24), ((int(-118) << 24) >> 24), 1, 0, 113, 24, 5, 61, 73, ((int(-68) << 24) >> 24), ((int(-100) << 24) >> 24), 98, 0, 0, 0, 0, 73, 69, 78, 68, ((int(-82) << 24) >> 24), 66, 96, ((int(-126) << 24) >> 24)];
    this.radioOn = new <int>[((int(-119) << 24) >> 24), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, ((int(-44) << 24) >> 24), ((int(-62) << 24) >> 24), ((int(-97) << 24) >> 24), ((int(-75) << 24) >> 24), 0, 0, 0, 12, 80, 76, 84, 69, ((int(-1) << 24) >> 24), ((int(-1) << 24) >> 24), ((int(-1) << 24) >> 24), ((int(-69) << 24) >> 24), ((int(-69) << 24) >> 24), ((int(-69) << 24) >> 24), 106, 106, 106, 2, 2, 2, 106, ((int(-103) << 24) >> 24), 14, ((int(-47) << 24) >> 24), 0, 0, 0, 50, 73, 68, 65, 84, 120, ((int(-38) << 24) >> 24), 5, ((int(-63) << 24) >> 24), 65, 13, 0, 32, 12, 4, ((int(-63) << 24) >> 24), ((int(-19) << 24) >> 24), ((int(-11) << 24) >> 24), ((int(-117) << 24) >> 24), 1, 18, 68, ((int(-100) << 24) >> 24), 10, 52, 19, 94, 72, 64, 17, 101, ((int(-122) << 24) >> 24), 44, ((int(-44) << 24) >> 24), ((int(-29) << 24) >> 24), 98, ((int(-52) << 24) >> 24), 89, 77, ((int(-102) << 24) >> 24), 40, 2, 85, ((int(-95) << 24) >> 24), ((int(-73) << 24) >> 24), ((int(-63) << 24) >> 24), ((int(-104) << 24) >> 24), ((int(-63) << 24) >> 24), 37, ((int(-117) << 24) >> 24), 15, ((int(-40) << 24) >> 24), 119, 10, 41, 78, 26, ((int(-79) << 24) >> 24), 59, 0, 0, 0, 0, 73, 69, 78, 68, ((int(-82) << 24) >> 24), 66, 96, ((int(-126) << 24) >> 24)];
    this.midpUtil = MIDPUtil.getInstance();
    this.imgMultiOffO = this.midpUtil.createImageFromByteArray(this.multiOff, 0, this.multiOff.length);
    this.imgMultiOnO = this.midpUtil.createImageFromByteArray(this.multiOn, 0, this.multiOn.length);
    this.imgRadioOffO = this.midpUtil.createImageFromByteArray(this.radioOff, 0, this.radioOff.length);
    this.imgRadioOnO = this.midpUtil.createImageFromByteArray(this.radioOn, 0, this.radioOn.length);
    this.imgMultiOff = this.imgMultiOffO;
    this.imgMultiOn = this.imgMultiOnO;
    this.imgRadioOff = this.imgRadioOffO;
    this.imgRadioOn = this.imgRadioOnO;
    this.imageArray = new <Image>[this.imgMultiOff, this.imgMultiOn, this.imgRadioOff, this.imgRadioOn];
        }

        public function ChoiceGroupImageFactory() {
            super();
            this.initFieldsChoiceGroupImageFactory();
        }
    

    public static function getInstance():ChoiceGroupImageFactory {
        return ChoiceGroupImageFactory.instance;
    }
    

    public function getImageArray():Vector.<Image> {
        return this.imageArray;
    }
    

    public function init(imageArray:Vector.<Image>):void {
        this.imgMultiOff = imageArray[0];
        this.imageArray[0] = this.imgMultiOff;
        this.imgMultiOn = imageArray[1];
        this.imageArray[1] = this.imgMultiOn;
        this.imgRadioOff = imageArray[2];
        this.imageArray[2] = this.imgRadioOff;
        this.imgRadioOn = imageArray[3];
        this.imageArray[3] = this.imgRadioOn;
    }
    }
}

