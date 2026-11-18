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
package org.allbinary.game.paint.help {
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.string.StringUtil;

    public class UpdateMyFontProperties {
        public var actionStringArray:Vector.<String> = null;
        public var keymappingBeginWidthArray:Vector.<int> = null;
        public var actionStringDeltaXArray:Vector.<int> = null;
        public var inputDeltaXArray:Vector.<Vector.<int>> = null;
        public var sepArray:Vector.<Vector.<String>> = null;
        public var sepWidthArray:Vector.<Vector.<int>> = null;
        public var charHeight:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsUpdateMyFontProperties():void {
    this.actionStringArray = StringUtil.getInstance().getArrayInstance();
    this.keymappingBeginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY;
    this.actionStringDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY;
    this.inputDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY;
    this.sepArray = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY_OF_ARRAYS;
    this.sepWidthArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY;
    this.charHeight = 0;
        }

        public function UpdateMyFontProperties() {
            super();
            this.initFieldsUpdateMyFontProperties();
        }
    }
}

