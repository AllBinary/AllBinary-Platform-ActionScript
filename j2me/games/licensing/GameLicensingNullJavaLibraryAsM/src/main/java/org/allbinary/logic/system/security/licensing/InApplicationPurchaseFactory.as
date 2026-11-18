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
package org.allbinary.logic.system.security.licensing {
    import org.allbinary.logic.string.StringUtil;

    public class InApplicationPurchaseFactory {
    private static var instance_value:InApplicationPurchaseFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():InApplicationPurchaseFactory {
        if (!InApplicationPurchaseFactory.instance_set) {
            InApplicationPurchaseFactory.instance_set = true;
            InApplicationPurchaseFactory.instance_value = new InApplicationPurchaseFactory();
        }
        return InApplicationPurchaseFactory.instance_value;
    }
    

    public static function getInstance():InApplicationPurchaseFactory {
        return InApplicationPurchaseFactory.instance;
    }
    

    public function InApplicationPurchaseFactory() {
        super();
    }
    

    public function init(anyType:Object, stateObject:Object):void {
    }
    

    public function onCreate(anyType:Object, stateObject:Object):void {
    }
    

    public function onStart():void {
    }
    

    public function onResult(requestCode:int, resultCode:int, data:Object):void {
    }
    

    public function onSaveState(anyType:Object):void {
    }
    

    public function onStop():void {
    }
    

    public function onDestroy():void {
    }
    

    public function purchase(lockableFeature:LockableFeature):void {
    }
    

    public function isPurchased(lockableFeature:LockableFeature):Boolean {
        return false;
    }
    

    public function add(lockableFeature:LockableFeature):void {
    }
    

    public function getUserName():String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public function isEnabled():Boolean {
        return false;
    }
    }
}

