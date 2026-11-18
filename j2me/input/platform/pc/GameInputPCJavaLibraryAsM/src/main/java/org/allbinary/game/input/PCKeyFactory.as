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
package org.allbinary.game.input {
    import org.allbinary.math.PositionStrings;
    import org.allbinary.string.CommonPhoneStrings;
    import org.allbinary.string.CommonSeps;

    public class PCKeyFactory {
    private static var SINGLETON_value:PCKeyFactory;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():PCKeyFactory {
        if (!PCKeyFactory.SINGLETON_set) {
            PCKeyFactory.SINGLETON_set = true;
            PCKeyFactory.SINGLETON_value = new PCKeyFactory();
        }
        return PCKeyFactory.SINGLETON_value;
    }
        private var keyEventWrapper:ABKeyEventWrapper = null;
        public var UNKNOWN:PCGameKey = null;
        public var ENTER:PCGameKey = null;
        public var _A:PCGameKey = null;
        public var _B:PCGameKey = null;
        public var _C:PCGameKey = null;
        public var _D:PCGameKey = null;
        public var _E:PCGameKey = null;
        public var _F:PCGameKey = null;
        public var _G:PCGameKey = null;
        public var _H:PCGameKey = null;
        public var _I:PCGameKey = null;
        public var _J:PCGameKey = null;
        public var _K:PCGameKey = null;
        public var _L:PCGameKey = null;
        public var _M:PCGameKey = null;
        public var _N:PCGameKey = null;
        public var _O:PCGameKey = null;
        public var _P:PCGameKey = null;
        public var _Q:PCGameKey = null;
        public var _R:PCGameKey = null;
        public var _S:PCGameKey = null;
        public var _T:PCGameKey = null;
        public var _U:PCGameKey = null;
        public var _V:PCGameKey = null;
        public var _W:PCGameKey = null;
        public var _X:PCGameKey = null;
        public var _Y:PCGameKey = null;
        public var _Z:PCGameKey = null;
        public var a:PCGameKey = null;
        public var b:PCGameKey = null;
        public var c:PCGameKey = null;
        public var d:PCGameKey = null;
        public var e:PCGameKey = null;
        public var f:PCGameKey = null;
        public var g:PCGameKey = null;
        public var h:PCGameKey = null;
        public var i:PCGameKey = null;
        public var j:PCGameKey = null;
        public var k:PCGameKey = null;
        public var l:PCGameKey = null;
        public var m:PCGameKey = null;
        public var n:PCGameKey = null;
        public var o:PCGameKey = null;
        public var p:PCGameKey = null;
        public var q:PCGameKey = null;
        public var r:PCGameKey = null;
        public var s:PCGameKey = null;
        public var t:PCGameKey = null;
        public var u:PCGameKey = null;
        public var v:PCGameKey = null;
        public var w:PCGameKey = null;
        public var x:PCGameKey = null;
        public var y:PCGameKey = null;
        public var z:PCGameKey = null;
        public var ZERO:PCGameKey = null;
        public var ONE:PCGameKey = null;
        public var TWO:PCGameKey = null;
        public var THREE:PCGameKey = null;
        public var FOUR:PCGameKey = null;
        public var FIVE:PCGameKey = null;
        public var SIX:PCGameKey = null;
        public var SEVEN:PCGameKey = null;
        public var EIGHT:PCGameKey = null;
        public var NINE:PCGameKey = null;
        public var DPAD_UP:PCGameKey = null;
        public var DPAD_DOWN:PCGameKey = null;
        public var DPAD_LEFT:PCGameKey = null;
        public var DPAD_RIGHT:PCGameKey = null;
        public var DPAD_UP2:PCGameKey = null;
        public var DPAD_DOWN2:PCGameKey = null;
        public var DPAD_LEFT2:PCGameKey = null;
        public var DPAD_RIGHT2:PCGameKey = null;
        public var COMMA:PCGameKey = null;
        public var SPACE:PCGameKey = null;
        public var DEL:PCGameKey = null;
        public var STAR:PCGameKey = null;
        public var QUESTION:PCGameKey = null;
        public var PERIOD:PCGameKey = null;
        public var ESCAPE:PCGameKey = null;
        public var BACK_SPACE:PCGameKey = null;

        // Java field initializers run after the base constructor
        private function initFieldsPCKeyFactory():void {
    this.keyEventWrapper = ABKeyEventWrapper.getInstance();
    this.UNKNOWN = new PCGameKey(this.keyEventWrapper.VK_UNDEFINED, "UNKNOWN");
    this.ENTER = new PCGameKey(5, "Enter");
    this._A = new PCGameKey(this.keyEventWrapper.VK_A, "A");
    this._B = new PCGameKey(this.keyEventWrapper.VK_B, "B");
    this._C = new PCGameKey(this.keyEventWrapper.VK_C, "C");
    this._D = new PCGameKey(this.keyEventWrapper.VK_D, "D");
    this._E = new PCGameKey(this.keyEventWrapper.VK_E, "E");
    this._F = new PCGameKey(this.keyEventWrapper.VK_F, "F");
    this._G = new PCGameKey(this.keyEventWrapper.VK_G, "G");
    this._H = new PCGameKey(this.keyEventWrapper.VK_H, "H");
    this._I = new PCGameKey(this.keyEventWrapper.VK_I, "I");
    this._J = new PCGameKey(this.keyEventWrapper.VK_J, "J");
    this._K = new PCGameKey(this.keyEventWrapper.VK_K, "K");
    this._L = new PCGameKey(this.keyEventWrapper.VK_L, "L");
    this._M = new PCGameKey(this.keyEventWrapper.VK_M, "M");
    this._N = new PCGameKey(this.keyEventWrapper.VK_N, "N");
    this._O = new PCGameKey(this.keyEventWrapper.VK_O, "O");
    this._P = new PCGameKey(this.keyEventWrapper.VK_P, "P");
    this._Q = new PCGameKey(this.keyEventWrapper.VK_Q, "Q");
    this._R = new PCGameKey(this.keyEventWrapper.VK_R, "R");
    this._S = new PCGameKey(this.keyEventWrapper.VK_S, "S");
    this._T = new PCGameKey(this.keyEventWrapper.VK_T, "T");
    this._U = new PCGameKey(this.keyEventWrapper.VK_U, "U");
    this._V = new PCGameKey(this.keyEventWrapper.VK_V, "V");
    this._W = new PCGameKey(this.keyEventWrapper.VK_W, "W");
    this._X = new PCGameKey(this.keyEventWrapper.VK_X, "X");
    this._Y = new PCGameKey(this.keyEventWrapper.VK_Y, "Y");
    this._Z = new PCGameKey(this.keyEventWrapper.VK_Z, "Z");
    this.a = new PCGameKey(97, "a");
    this.b = new PCGameKey(98, "b");
    this.c = new PCGameKey(99, "c");
    this.d = new PCGameKey(100, "d");
    this.e = new PCGameKey(101, "e");
    this.f = new PCGameKey(102, "f");
    this.g = new PCGameKey(103, "g");
    this.h = new PCGameKey(104, "h");
    this.i = new PCGameKey(105, "i");
    this.j = new PCGameKey(106, "j");
    this.k = new PCGameKey(107, "k");
    this.l = new PCGameKey(108, "l");
    this.m = new PCGameKey(109, "m");
    this.n = new PCGameKey(110, "n");
    this.o = new PCGameKey(111, "o");
    this.p = new PCGameKey(112, "p");
    this.q = new PCGameKey(113, "q");
    this.r = new PCGameKey(114, "r");
    this.s = new PCGameKey(115, "s");
    this.t = new PCGameKey(116, "t");
    this.u = new PCGameKey(117, "u");
    this.v = new PCGameKey(118, "v");
    this.w = new PCGameKey(119, "w");
    this.x = new PCGameKey(120, PositionStrings.getInstance().X);
    this.y = new PCGameKey(121, PositionStrings.getInstance().Y);
    this.z = new PCGameKey(122, "z");
    this.ZERO = new PCGameKey(this.keyEventWrapper.VK_0, CommonPhoneStrings.getInstance().ZERO);
    this.ONE = new PCGameKey(this.keyEventWrapper.VK_1, CommonPhoneStrings.getInstance().ONE);
    this.TWO = new PCGameKey(this.keyEventWrapper.VK_2, CommonPhoneStrings.getInstance().TWO);
    this.THREE = new PCGameKey(this.keyEventWrapper.VK_3, CommonPhoneStrings.getInstance().THREE);
    this.FOUR = new PCGameKey(this.keyEventWrapper.VK_4, CommonPhoneStrings.getInstance().FOUR);
    this.FIVE = new PCGameKey(this.keyEventWrapper.VK_5, CommonPhoneStrings.getInstance().FIVE);
    this.SIX = new PCGameKey(this.keyEventWrapper.VK_6, CommonPhoneStrings.getInstance().SIX);
    this.SEVEN = new PCGameKey(this.keyEventWrapper.VK_7, CommonPhoneStrings.getInstance().SEVEN);
    this.EIGHT = new PCGameKey(this.keyEventWrapper.VK_8, CommonPhoneStrings.getInstance().EIGHT);
    this.NINE = new PCGameKey(this.keyEventWrapper.VK_9, CommonPhoneStrings.getInstance().NINE);
    this.DPAD_UP = new PCGameKey(this.keyEventWrapper.VK_UP, CommonPhoneStrings.getInstance().UP);
    this.DPAD_DOWN = new PCGameKey(this.keyEventWrapper.VK_DOWN, CommonPhoneStrings.getInstance().DOWN);
    this.DPAD_LEFT = new PCGameKey(this.keyEventWrapper.VK_LEFT, CommonPhoneStrings.getInstance().LEFT);
    this.DPAD_RIGHT = new PCGameKey(this.keyEventWrapper.VK_RIGHT, CommonPhoneStrings.getInstance().RIGHT);
    this.DPAD_UP2 = this.DPAD_UP;
    this.DPAD_DOWN2 = this.DPAD_DOWN;
    this.DPAD_LEFT2 = this.DPAD_LEFT;
    this.DPAD_RIGHT2 = this.DPAD_RIGHT;
    this.COMMA = new PCGameKey(this.keyEventWrapper.VK_COMMA, "COMMA");
    this.SPACE = new PCGameKey(this.keyEventWrapper.VK_SPACE, "SPACE");
    this.DEL = new PCGameKey(this.keyEventWrapper.VK_DELETE, "DEL");
    this.STAR = new PCGameKey(42, CommonPhoneStrings.getInstance().STAR);
    this.QUESTION = new PCGameKey(47, "?");
    this.PERIOD = new PCGameKey(this.keyEventWrapper.VK_PERIOD, CommonSeps.getInstance().PERIOD);
    this.ESCAPE = new PCGameKey(this.keyEventWrapper.VK_ESCAPE, "Esc");
    this.BACK_SPACE = new PCGameKey(this.keyEventWrapper.VK_BACK_SPACE, "Backspace");
        }

        public function PCKeyFactory() {
            super();
            this.initFieldsPCKeyFactory();
        }
    

    public static function getInstance():PCKeyFactory {
        return PCKeyFactory.SINGLETON;
    }
    

    public function isSubmission(input:Input):Boolean {
        if (input === this.ENTER) {
            return true;
        }
        return false;
    }
    

    public function isDelete(input:Input):Boolean {
        if (input === this.DEL) {
            return true;
        }
        return false;
    }
    

    public function isBackSpace(input:Input):Boolean {
        if (input === this.BACK_SPACE) {
            return true;
        }
        return false;
    }
    

    public function isUp(input:Input):Boolean {
        if (input === this.DPAD_UP || input === this.DPAD_UP2) {
            return true;
        }
        return false;
    }
    

    public function isDown(input:Input):Boolean {
        if (input === this.DPAD_DOWN || input === this.DPAD_DOWN2) {
            return true;
        }
        return false;
    }
    

    public function isLeft(input:Input):Boolean {
        if (input === this.DPAD_LEFT || input === this.DPAD_LEFT2) {
            return true;
        }
        return false;
    }
    

    public function isRight(input:Input):Boolean {
        if (input === this.DPAD_RIGHT || input === this.DPAD_RIGHT2) {
            return true;
        }
        return false;
    }
    

    public function isEnter(input:Input):Boolean {
        if (input === this.ENTER) {
            return true;
        }
        return false;
    }
    }
}

