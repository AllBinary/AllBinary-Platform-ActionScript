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
package org.allbinary.logic.system.os {
    import org.allbinary.logic.java.character.CharacterSet;

    public interface OperatingSystemInterface {
    

    function getName():String;
    

    function getVersion():String;
    

    function getArch():String;
    

    function getCharacterSet():CharacterSet;
    

    function isOverScan():Boolean;
    

    function getOverScanXPercent():int;
    

    function getOverScanYPercent():int;
    

    function isScalable():Boolean;
    

    function isAutoHide():Boolean;
    
    }
}

