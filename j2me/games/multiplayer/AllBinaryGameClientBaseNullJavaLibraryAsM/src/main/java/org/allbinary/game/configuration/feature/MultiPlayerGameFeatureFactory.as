// Generated Code Do Not Modify
package org.allbinary.game.configuration.feature {
    import javax.microedition.lcdui.Canvas;
    import org.allbinary.game.commands.GameCommandsFactory;

    public class MultiPlayerGameFeatureFactory {
    private static var instance_value:MultiPlayerGameFeatureFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():MultiPlayerGameFeatureFactory {
        if (!MultiPlayerGameFeatureFactory.instance_set) {
            MultiPlayerGameFeatureFactory.instance_set = true;
            MultiPlayerGameFeatureFactory.instance_value = new MultiPlayerGameFeatureFactory();
        }
        return MultiPlayerGameFeatureFactory.instance_value;
    }
    

    public static function getInstance():MultiPlayerGameFeatureFactory {
        return MultiPlayerGameFeatureFactory.instance;
    }
    

    public function MultiPlayerGameFeatureFactory() {
        super();
    }
    

    public function addCommands(anyType:Object):void {
        var gameCommandsFactory:GameCommandsFactory = GameCommandsFactory.getInstance();
        var canvas:Canvas = (anyType as Canvas);
        canvas.addCommand(gameCommandsFactory.QUIT_COMMAND);
    }
    }
}

