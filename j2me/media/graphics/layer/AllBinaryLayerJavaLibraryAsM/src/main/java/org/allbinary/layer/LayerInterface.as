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
package org.allbinary.layer {
    import org.allbinary.game.identification.GroupInterfaceCompositeInterface;
    import org.allbinary.graphics.paint.PaintableInterface;

    public interface LayerInterface extends NamedInterface, PaintableInterface, GroupInterfaceCompositeInterface, PositionInterface {
    

    function getHeight():int;
    

    function getWidth():int;
    

    function getHalfHeight():int;
    

    function getHalfWidth():int;
    

    function getXP():int;
    

    function getYP():int;
    

    function getZP():int;
    

    function getX2():int;
    

    function getY2():int;
    

    function getZ2():int;
    

    function isVisible():Boolean;
    

    function moveDXYZ(dx:int, dy:int, dz:int):void;
    

    function setVisible(visible:Boolean):void;
    

    function implmentsTickableInterface():Boolean;
    

    function implmentsCollidableInterface():Boolean;
    

    function implmentsGameInputInterface():Boolean;
    

    function implmentsArtificialIntelligenceCompositeInterface():Boolean;
    

    function getType():int;
    }
}

