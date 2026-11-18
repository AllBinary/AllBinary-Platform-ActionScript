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
package org.allbinary.game.collision {
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.GameFeatureFactory;
    import org.allbinary.graphics.opengles.OpenGLFeatureUtil;
    import org.allbinary.layer.AllBinaryLayer;

    public class LayerCollisionUtil {
    private static var instance_value:LayerCollisionUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():LayerCollisionUtil {
        if (!LayerCollisionUtil.instance_set) {
            LayerCollisionUtil.instance_set = true;
            LayerCollisionUtil.instance_value = new LayerCollisionUtil();
        }
        return LayerCollisionUtil.instance_value;
    }
        private var collisionProcessor:CollisionProcessor = null;

        // Java field initializers run after the base constructor
        private function initFieldsLayerCollisionUtil():void {
    this.collisionProcessor = null;
        }
    

    public static function getInstance():LayerCollisionUtil {
        return LayerCollisionUtil.instance;
    }
    

    public function LayerCollisionUtil() {
        super();
        this.initFieldsLayerCollisionUtil();
        var features:Features = Features.getInstance();
        var gameFeatureFactory:GameFeatureFactory = GameFeatureFactory.getInstance();
        if (OpenGLFeatureUtil.getInstance().isAnyThreed() && !features.isFeature(gameFeatureFactory.COLLISIONS_FORCED_TWO_DIMENSIONAL)) {
            this.collisionProcessor = new CollisionThreedProcessor();
        } else {
            this.collisionProcessor = new Collision2DProcessor();
        }
    }
    

    public function isCollision(myLayer:AllBinaryLayer, myLayer2:AllBinaryLayer):Boolean {
        return this.collisionProcessor.isCollision(myLayer, myLayer2);
    }
    }
}

