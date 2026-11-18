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
package org.allbinary.game.layer {
    import org.allbinary.game.input.PlayerGameInput;
    import org.allbinary.game.input.PlayerGameInputCompositeInterface;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.displayable.CanvasStrings;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.view.StaticViewPosition;

    public class PlayerGameInputGameLayer extends AllBinaryGameLayer implements PlayerGameInputCompositeInterface {
        private var playerGameInput:PlayerGameInput = null;

        // Java field initializers run after the base constructor
        private function initFieldsPlayerGameInputGameLayer():void {
    
        }
    

    public function PlayerGameInputGameLayer(playerInputId:int) {
        super(StringUtil.getInstance().EMPTY_STRING, new Rectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0), new StaticViewPosition(0, 0, 0));
        this.initFieldsPlayerGameInputGameLayer();
        this.playerGameInput = new PlayerGameInput(this.getGameKeyEventList(), new BasicArrayListD(), playerInputId);
        var canvasStrings:CanvasStrings = CanvasStrings.getInstance();
        this.logUtil.putF("Danger Danger Danger: Should Not Be Called Except For Testing Input", this, canvasStrings.PAINT);
    }
    

    public function getPlayerGameInput():PlayerGameInput {
        return this.playerGameInput;
    }
    

    public function initInputProcessors():void {
    }
    

    override public function processInput(myManager:AllBinaryLayerManager):void {
    }
    

    override public function paint(graphics:Graphics):void {
    }
    }
}

