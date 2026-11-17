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
package org.allbinary.logic.system.hardware.components.linux {

    public class CpuInfo {
    private static var PROCESSOR_value:CpuInfo;
    private static var PROCESSOR_set:Boolean = false;
    public static function get PROCESSOR():CpuInfo {
        if (!CpuInfo.PROCESSOR_set) {
            CpuInfo.PROCESSOR_set = true;
            CpuInfo.PROCESSOR_value = new CpuInfo("processor");
        }
        return CpuInfo.PROCESSOR_value;
    }
    private static var VENDORID_value:CpuInfo;
    private static var VENDORID_set:Boolean = false;
    public static function get VENDORID():CpuInfo {
        if (!CpuInfo.VENDORID_set) {
            CpuInfo.VENDORID_set = true;
            CpuInfo.VENDORID_value = new CpuInfo("vendor_id");
        }
        return CpuInfo.VENDORID_value;
    }
    private static var CPUFAMILY_value:CpuInfo;
    private static var CPUFAMILY_set:Boolean = false;
    public static function get CPUFAMILY():CpuInfo {
        if (!CpuInfo.CPUFAMILY_set) {
            CpuInfo.CPUFAMILY_set = true;
            CpuInfo.CPUFAMILY_value = new CpuInfo("cpu family");
        }
        return CpuInfo.CPUFAMILY_value;
    }
    private static var MODEL_value:CpuInfo;
    private static var MODEL_set:Boolean = false;
    public static function get MODEL():CpuInfo {
        if (!CpuInfo.MODEL_set) {
            CpuInfo.MODEL_set = true;
            CpuInfo.MODEL_value = new CpuInfo("model");
        }
        return CpuInfo.MODEL_value;
    }
    private static var MODELNAME_value:CpuInfo;
    private static var MODELNAME_set:Boolean = false;
    public static function get MODELNAME():CpuInfo {
        if (!CpuInfo.MODELNAME_set) {
            CpuInfo.MODELNAME_set = true;
            CpuInfo.MODELNAME_value = new CpuInfo("model name");
        }
        return CpuInfo.MODELNAME_value;
    }
    private static var STEPPING_value:CpuInfo;
    private static var STEPPING_set:Boolean = false;
    public static function get STEPPING():CpuInfo {
        if (!CpuInfo.STEPPING_set) {
            CpuInfo.STEPPING_set = true;
            CpuInfo.STEPPING_value = new CpuInfo("stepping");
        }
        return CpuInfo.STEPPING_value;
    }
    private static var CPUMHZ_value:CpuInfo;
    private static var CPUMHZ_set:Boolean = false;
    public static function get CPUMHZ():CpuInfo {
        if (!CpuInfo.CPUMHZ_set) {
            CpuInfo.CPUMHZ_set = true;
            CpuInfo.CPUMHZ_value = new CpuInfo("cpu MHz");
        }
        return CpuInfo.CPUMHZ_value;
    }
    private static var CACHESIZE_value:CpuInfo;
    private static var CACHESIZE_set:Boolean = false;
    public static function get CACHESIZE():CpuInfo {
        if (!CpuInfo.CACHESIZE_set) {
            CpuInfo.CACHESIZE_set = true;
            CpuInfo.CACHESIZE_value = new CpuInfo("cache size");
        }
        return CpuInfo.CACHESIZE_value;
    }
    private static var FDIVBUG_value:CpuInfo;
    private static var FDIVBUG_set:Boolean = false;
    public static function get FDIVBUG():CpuInfo {
        if (!CpuInfo.FDIVBUG_set) {
            CpuInfo.FDIVBUG_set = true;
            CpuInfo.FDIVBUG_value = new CpuInfo("fdiv_bug");
        }
        return CpuInfo.FDIVBUG_value;
    }
    private static var HLTBUG_value:CpuInfo;
    private static var HLTBUG_set:Boolean = false;
    public static function get HLTBUG():CpuInfo {
        if (!CpuInfo.HLTBUG_set) {
            CpuInfo.HLTBUG_set = true;
            CpuInfo.HLTBUG_value = new CpuInfo("hlt_bug");
        }
        return CpuInfo.HLTBUG_value;
    }
    private static var F00FBUG_value:CpuInfo;
    private static var F00FBUG_set:Boolean = false;
    public static function get F00FBUG():CpuInfo {
        if (!CpuInfo.F00FBUG_set) {
            CpuInfo.F00FBUG_set = true;
            CpuInfo.F00FBUG_value = new CpuInfo("f00f_bug");
        }
        return CpuInfo.F00FBUG_value;
    }
    private static var COMABUG_value:CpuInfo;
    private static var COMABUG_set:Boolean = false;
    public static function get COMABUG():CpuInfo {
        if (!CpuInfo.COMABUG_set) {
            CpuInfo.COMABUG_set = true;
            CpuInfo.COMABUG_value = new CpuInfo("coma_bug");
        }
        return CpuInfo.COMABUG_value;
    }
    private static var FPU_value:CpuInfo;
    private static var FPU_set:Boolean = false;
    public static function get FPU():CpuInfo {
        if (!CpuInfo.FPU_set) {
            CpuInfo.FPU_set = true;
            CpuInfo.FPU_value = new CpuInfo("fpu");
        }
        return CpuInfo.FPU_value;
    }
    private static var FPUEXCEPTION_value:CpuInfo;
    private static var FPUEXCEPTION_set:Boolean = false;
    public static function get FPUEXCEPTION():CpuInfo {
        if (!CpuInfo.FPUEXCEPTION_set) {
            CpuInfo.FPUEXCEPTION_set = true;
            CpuInfo.FPUEXCEPTION_value = new CpuInfo("fpu_exception");
        }
        return CpuInfo.FPUEXCEPTION_value;
    }
    private static var CPUIDLEVEL_value:CpuInfo;
    private static var CPUIDLEVEL_set:Boolean = false;
    public static function get CPUIDLEVEL():CpuInfo {
        if (!CpuInfo.CPUIDLEVEL_set) {
            CpuInfo.CPUIDLEVEL_set = true;
            CpuInfo.CPUIDLEVEL_value = new CpuInfo("cache size");
        }
        return CpuInfo.CPUIDLEVEL_value;
    }
    private static var WP_value:CpuInfo;
    private static var WP_set:Boolean = false;
    public static function get WP():CpuInfo {
        if (!CpuInfo.WP_set) {
            CpuInfo.WP_set = true;
            CpuInfo.WP_value = new CpuInfo("yes");
        }
        return CpuInfo.WP_value;
    }
    private static var FLAGS_value:CpuInfo;
    private static var FLAGS_set:Boolean = false;
    public static function get FLAGS():CpuInfo {
        if (!CpuInfo.FLAGS_set) {
            CpuInfo.FLAGS_set = true;
            CpuInfo.FLAGS_value = new CpuInfo("flags");
        }
        return CpuInfo.FLAGS_value;
    }
    private static var BOGOMIPS_value:CpuInfo;
    private static var BOGOMIPS_set:Boolean = false;
    public static function get BOGOMIPS():CpuInfo {
        if (!CpuInfo.BOGOMIPS_set) {
            CpuInfo.BOGOMIPS_set = true;
            CpuInfo.BOGOMIPS_value = new CpuInfo("bogomips");
        }
        return CpuInfo.BOGOMIPS_value;
    }
        private var name:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCpuInfo():void {
    
        }
    

    public function CpuInfo(name:String) {
        super();
        this.initFieldsCpuInfo();
        this.name = name;
    }
    

    public function toString():String {
        return this.name;
    }
    }
}

