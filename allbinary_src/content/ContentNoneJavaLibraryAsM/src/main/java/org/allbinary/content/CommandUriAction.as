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
package org.allbinary.content {
    import org.allbinary.logic.communication.log.LogUtil;

    public class CommandUriAction {
    private static var instance_value:CommandUriAction;
    private static var instance_set:Boolean = false;
    private static function get instance():CommandUriAction {
        if (!CommandUriAction.instance_set) {
            CommandUriAction.instance_set = true;
            CommandUriAction.instance_value = new CommandUriAction();
        }
        return CommandUriAction.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsCommandUriAction():void {
    this.logUtil = LogUtil.getInstance();
        }

        public function CommandUriAction() {
            super();
            this.initFieldsCommandUriAction();
        }
    

    public static function getInstance():CommandUriAction {
        return CommandUriAction.instance;
    }
    

    public function add(command:Command, url:String):void {
    }
    

    public function process(command:Command):void {
    }
    }
}

