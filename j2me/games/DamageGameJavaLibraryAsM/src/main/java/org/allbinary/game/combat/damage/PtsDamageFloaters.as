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
package org.allbinary.game.combat.damage {
    import org.allbinary.game.rand.MyRandomFactory;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorArrayIndexer;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.color.BasicColorSetUtil;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.java.character.CharArrayFactory;
    import org.allbinary.logic.math.PrimitiveLongUtil;
    import org.allbinary.util.CircularIndexUtil;
    import org.allbinary.view.ViewPositionBase;

    public class PtsDamageFloaters extends DamageFloaters {
    private static var basicColorArrayIndexer_value:BasicColorArrayIndexer;
    private static var basicColorArrayIndexer_set:Boolean = false;
    private static function get basicColorArrayIndexer():BasicColorArrayIndexer {
        if (!PtsDamageFloaters.basicColorArrayIndexer_set) {
            PtsDamageFloaters.basicColorArrayIndexer_set = true;
            PtsDamageFloaters.basicColorArrayIndexer_value = new BasicColorArrayIndexer(new <BasicColor>[BasicColorFactory.getInstance().WHITE, BasicColorFactory.getInstance().RED, BasicColorFactory.getInstance().YELLOW, BasicColorFactory.getInstance().BLUE]);
        }
        return PtsDamageFloaters.basicColorArrayIndexer_value;
    }
        public var basicSetColorUtil:BasicColorSetUtil = null;
        private var layerInterface:AllBinaryLayer = null;
        private var lastDamage:Vector.<int> = null;
        private var lastDamageString:Vector.<Vector.<int>> = null;
        private var lastDamageStringSizeArray:Vector.<int> = null;
        private var circularIndexUtil:CircularIndexUtil = null;
        private var primitiveLongUtil:PrimitiveLongUtil = null;
        private var myRandomFactory:MyRandomFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsPtsDamageFloaters():void {
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    
    this.lastDamage = new Vector.<int>(5);
    this.lastDamageString = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(5); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(0); } return array; })();
    this.lastDamageStringSizeArray = new Vector.<int>(5);
    this.circularIndexUtil = CircularIndexUtil.createInstance(5);
    
    this.myRandomFactory = MyRandomFactory.getInstance();
        }
    

    public function PtsDamageFloaters(layerInterface:AllBinaryLayer) {
        super();
        this.initFieldsPtsDamageFloaters();
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(100000);
        this.layerInterface = layerInterface;
        var CHAR_ARRAY:Vector.<int> = CharArrayFactory.getInstance().getZeroCharArray();
        for (var index:int = int(this.lastDamageString.length - 1); index >= 0; index--) {
            this.lastDamageString[index] = CHAR_ARRAY;
        }
    }
    

    override public function add(damage:int):void {
        var index:int = this.circularIndexUtil.getIndex();
        this.lastDamage[index] = damage;
        this.lastDamageString[index] = this.primitiveLongUtil.getCharArray(this.lastDamage[index]);
        this.lastDamageStringSizeArray[index] = this.primitiveLongUtil.getCurrentTotalDigits();
        this.circularIndexUtil.next();
    }
    

    override public function paint(graphics:Graphics):void {
        var viewPosition:ViewPositionBase = this.layerInterface.getViewPosition();
        var x:int = viewPosition.getX();
        var y:int = viewPosition.getY();
        for (var index:int = int(this.lastDamage.length - 1); index >= 0; index--) {
            if (this.lastDamage[index] != 0) {
                var delta:int = int(10 * (int(index + 2)));
                this.basicSetColorUtil.setBasicColorP(graphics, PtsDamageFloaters.basicColorArrayIndexer.get_());
                graphics.drawChars(this.lastDamageString[index], 0, this.lastDamageStringSizeArray[index], int(x - this.myRandomFactory.getNextInt(delta)), int(y - delta), 0);
                PtsDamageFloaters.basicColorArrayIndexer.next();
            }
            this.lastDamage[index] = 0;
        }
    }
    }
}

