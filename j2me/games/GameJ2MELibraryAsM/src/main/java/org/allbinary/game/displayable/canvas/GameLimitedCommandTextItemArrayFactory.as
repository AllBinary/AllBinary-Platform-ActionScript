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
package org.allbinary.game.displayable.canvas {
    import org.allbinary.graphics.form.item.CommandTextItemArrayFactory;
    import org.allbinary.graphics.form.item.LimitCommandsVisitor;

    public class GameLimitedCommandTextItemArrayFactory {
    private static var instance_value:GameLimitedCommandTextItemArrayFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():GameLimitedCommandTextItemArrayFactory {
        if (!GameLimitedCommandTextItemArrayFactory.instance_set) {
            GameLimitedCommandTextItemArrayFactory.instance_set = true;
            GameLimitedCommandTextItemArrayFactory.instance_value = new GameLimitedCommandTextItemArrayFactory();
        }
        return GameLimitedCommandTextItemArrayFactory.instance_value;
    }
        private var commandTextItemArrayFactory:CommandTextItemArrayFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameLimitedCommandTextItemArrayFactory():void {
    this.commandTextItemArrayFactory = new CommandTextItemArrayFactory(new LimitCommandsVisitor());
        }

        public function GameLimitedCommandTextItemArrayFactory() {
            super();
            this.initFieldsGameLimitedCommandTextItemArrayFactory();
        }
    

    public static function getInstance():GameLimitedCommandTextItemArrayFactory {
        return GameLimitedCommandTextItemArrayFactory.instance;
    }
    

    public function getCommandTextItemArrayFactory():CommandTextItemArrayFactory {
        return this.commandTextItemArrayFactory;
    }
    }
}

