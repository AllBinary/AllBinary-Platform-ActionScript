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
package org.allbinary.logic.control.workflow {

    public class WorkFlowData {
    private static var instance_value:WorkFlowData;
    private static var instance_set:Boolean = false;
    private static function get instance():WorkFlowData {
        if (!WorkFlowData.instance_set) {
            WorkFlowData.instance_set = true;
            WorkFlowData.instance_value = new WorkFlowData();
        }
        return WorkFlowData.instance_value;
    }
        public var WORKFLOWS:String = null;
        public var WORKFLOW:String = null;
        public var NAME:String = null;
        public var DATA:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsWorkFlowData():void {
    this.WORKFLOWS = "WORKFLOWS";
    this.WORKFLOW = "WORKFLOW";
    this.NAME = "WORKFLOW_NAME";
    this.DATA = "WORKFLOW_DATA";
        }
    

    public static function getInstance():WorkFlowData {
        return WorkFlowData.instance;
    }
    

    public function WorkFlowData() {
        super();
        this.initFieldsWorkFlowData();
    }
    }
}

