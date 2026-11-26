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
package org.allbinary.game.layer {
    import javax.microedition.lcdui.Image;
    import javax.microedition.lcdui.game.Sprite;
    import org.allbinary.logic.communication.log.LogUtil;

    public class SpriteFactory implements SpriteFactoryInterface {
    private static var instance_value:SpriteFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():SpriteFactory {
        if (!SpriteFactory.instance_set) {
            SpriteFactory.instance_set = true;
            SpriteFactory.instance_value = new SpriteFactory();
        }
        return SpriteFactory.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsSpriteFactory():void {
    this.logUtil = LogUtil.getInstance();
        }

        public function SpriteFactory() {
            super();
            this.initFieldsSpriteFactory();
        }
    

    public static function getInstance():SpriteFactory {
        return SpriteFactory.instance;
    }
    

    public function createSprite(image:Image, frameWidth:int, frameHeight:int):Sprite {
        return new Sprite(image, frameWidth, frameHeight);
    }
    }
}

