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
package org.allbinary.game.multiplayer.layer {
    import org.allbinary.game.identification.Group;
    import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.view.ViewPositionBase;

    public class MultiPlayerGameLayer extends CollidableDestroyableDamageableLayer implements MultiPlayerGameLayerInterface {
    

    public function MultiPlayerGameLayer(remoteInfo:RemoteInfo, groupInterface:Vector.<Group>, name:String, layerInfo:Rectangle, viewPosition:ViewPositionBase) {
        super(groupInterface, name, layerInfo, viewPosition);
    }
    

    public function getMultiplayerBehavior():MultiplayerBehavior {
        return MultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR;
    }
    

    public function setPingInfo(show:Boolean):void {
    }
    

    public function setFiring(firing:int):void {
    }
    

    public function getFiring():int {
        return 0;
    }
    }
}

