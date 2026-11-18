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
package org.allbinary.business.init {
    import org.allbinary.logic.io.file.directory.Directory;
    import org.allbinary.logic.io.path.AbPath;

    public class InitInfo2 {
    private static var instance_value:InitInfo2;
    private static var instance_set:Boolean = false;
    private static function get instance():InitInfo2 {
        if (!InitInfo2.instance_set) {
            InitInfo2.instance_set = true;
            InitInfo2.instance_value = new InitInfo2();
        }
        return InitInfo2.instance_value;
    }
        private var directory:Directory = null;

        // Java field initializers run after the base constructor
        private function initFieldsInitInfo2():void {
    this.directory = Directory.getInstance();
        }

        public function InitInfo2() {
            super();
            this.initFieldsInitInfo2();
        }
    

    public static function getInstance():InitInfo2 {
        return InitInfo2.instance;
    }
    

    public function isTestHtmlPathValid(value:AbPath):Boolean {
        return this.directory.create(value);
    }
    

    public function isMainPathValid(value:AbPath):Boolean {
        return this.directory.create(value);
    }
    }
}

