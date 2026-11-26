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
    import javax.microedition.lcdui.Canvas;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.opengles.OpenGLFeatureFactory;
    import java.lang.JThread;

    public class AlwaysRepaintBehavior extends RepaintBehavior {
    private static var instanceC_value:AlwaysRepaintBehavior;
    private static var instanceC_set:Boolean = false;
    private static function get instanceC():AlwaysRepaintBehavior {
        if (!AlwaysRepaintBehavior.instanceC_set) {
            AlwaysRepaintBehavior.instanceC_set = true;
            AlwaysRepaintBehavior.instanceC_value = new AlwaysRepaintBehavior();
        }
        return AlwaysRepaintBehavior.instanceC_value;
    }
        private var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsAlwaysRepaintBehavior():void {
    this.NAME = "AlwaysRepaintBehavior";
        }

        public function AlwaysRepaintBehavior() {
            super();
            this.initFieldsAlwaysRepaintBehavior();
        }
    

    public static function getInstance():AlwaysRepaintBehavior {
        return AlwaysRepaintBehavior.instanceC;
    }
    

    override public function repaint(canvas:Canvas):void {
        var features:Features = Features.getInstance();
        var openGLFeatureFactory:OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance();
        if (features.isFeature(openGLFeatureFactory.OPENGL)) {
            DisplayInfoSingleton.getInstance().process();
        } else {
            var thread:JThread = new JThread(new RepaintRunnable(canvas), this.NAME);
            thread.start();
        }
    }
    

    override public function onChangeRepaint(canvas:Canvas):void {
    }
    }
}

