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

    public class DemoLimitedCommandTextItemArrayFactory {
    private static var instance_value:DemoLimitedCommandTextItemArrayFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():DemoLimitedCommandTextItemArrayFactory {
        if (!DemoLimitedCommandTextItemArrayFactory.instance_set) {
            DemoLimitedCommandTextItemArrayFactory.instance_set = true;
            DemoLimitedCommandTextItemArrayFactory.instance_value = new DemoLimitedCommandTextItemArrayFactory();
        }
        return DemoLimitedCommandTextItemArrayFactory.instance_value;
    }
        private var commandTextItemArrayFactory:CommandTextItemArrayFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsDemoLimitedCommandTextItemArrayFactory():void {
    this.commandTextItemArrayFactory = new CommandTextItemArrayFactory(new LimitCommandsVisitor());
        }

        public function DemoLimitedCommandTextItemArrayFactory() {
            super();
            this.initFieldsDemoLimitedCommandTextItemArrayFactory();
        }
    

    public static function getInstance():DemoLimitedCommandTextItemArrayFactory {
        return DemoLimitedCommandTextItemArrayFactory.instance;
    }
    

    public function getCommandTextItemArrayFactory():CommandTextItemArrayFactory {
        return this.commandTextItemArrayFactory;
    }
    }
}

