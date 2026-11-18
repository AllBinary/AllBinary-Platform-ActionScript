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
package org.allbinary.game.displayable {
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.opengles.OpenGLFeatureFactory;
    import org.allbinary.logic.communication.log.LogUtil;
    import java.lang.JThread;

    public class RepaintBehavior {
    private static var instance_value:RepaintBehavior;
    private static var instance_set:Boolean = false;
    private static function get instance():RepaintBehavior {
        if (!RepaintBehavior.instance_set) {
            RepaintBehavior.instance_set = true;
            RepaintBehavior.instance_value = new RepaintBehavior();
        }
        return RepaintBehavior.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsRepaintBehavior():void {
    this.logUtil = LogUtil.getInstance();
    this.NAME = "RepaintBehavior";
        }

        public function RepaintBehavior() {
            super();
            this.initFieldsRepaintBehavior();
        }
    

    public static function getInstance():RepaintBehavior {
        return RepaintBehavior.instance;
    }
    

    public function repaint(canvas:Canvas):void {
    }
    

    public function onChangeRepaint(canvas:Canvas):void {
        var features:Features = Features.getInstance();
        var openGLFeatureFactory:OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance();
        if (features.isFeature(openGLFeatureFactory.OPENGL)) {
            DisplayInfoSingleton.getInstance().process();
        } else {
            var thread:JThread = new JThread(new RepaintRunnable(canvas), this.NAME);
            thread.start();
        }
    }
    }
}

