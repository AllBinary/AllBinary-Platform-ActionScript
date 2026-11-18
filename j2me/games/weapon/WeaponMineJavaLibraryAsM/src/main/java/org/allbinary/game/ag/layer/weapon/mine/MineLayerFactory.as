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
package org.allbinary.game.ag.layer.weapon.mine {
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerFactoryInterface;
    import org.allbinary.view.ViewPositionFactoryInterface;

    public class MineLayerFactory implements AllBinaryLayerFactoryInterface {
        private var viewPositionFactoryInterface:ViewPositionFactoryInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsMineLayerFactory():void {
    
        }
    

    public function MineLayerFactory(viewPositionFactoryInterface:ViewPositionFactoryInterface) {
        super();
        this.initFieldsMineLayerFactory();
        this.viewPositionFactoryInterface = viewPositionFactoryInterface;
    }
    

    public function getInstance():AllBinaryLayer {
        return new MineLayer(this.viewPositionFactoryInterface.getInstance());
    }
    }
}

