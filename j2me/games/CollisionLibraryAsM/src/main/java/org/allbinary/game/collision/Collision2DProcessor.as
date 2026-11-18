// Generated Code Do Not Modify
package org.allbinary.game.collision {
    import org.allbinary.layer.AllBinaryLayer;

    public class Collision2DProcessor extends CollisionProcessor {
    

    override public function isCollision(myLayer:AllBinaryLayer, myLayer2:AllBinaryLayer):Boolean {
        if (myLayer2.getXP() >= myLayer.getX2() || myLayer2.getYP() >= myLayer.getY2() || myLayer2.getX2() <= myLayer.getXP() || myLayer2.getY2() <= myLayer.getYP()) {
            return false;
        } else {
            return true;
        }
    }
    }
}

