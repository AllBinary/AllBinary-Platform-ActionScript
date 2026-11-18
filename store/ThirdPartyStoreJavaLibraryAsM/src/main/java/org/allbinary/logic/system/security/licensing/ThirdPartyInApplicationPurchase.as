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

    public class ThirdPartyInApplicationPurchase implements ThirdPartyInApplicationPurchaseInterface {
    

    public function isPurchased(lockableFeature:LockableFeature):Boolean {
        return false;
    }
    

    public function onCreate(anyType:Object, stateObject:Object):void {
    }
    

    public function onDestroy():void {
    }
    

    public function onStart():void {
    }
    

    public function onActivityResult(requestCode:int, resultCode:int, dataObject:Object):void {
    }
    

    public function onSaveInstanceState(anyType:Object):void {
    }
    

    public function onStop():void {
    }
    

    public function requestPurchase(lockableFeature:LockableFeature):void {
    }
    

    public function requestReceipts():void {
    }
    

    public function add(lockableFeature:LockableFeature):void {
    }
    

    public function getUserName():String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public function isEnabled():Boolean {
        return false;
    }
    

    public function requestProducts():void {
    }
    }
}

