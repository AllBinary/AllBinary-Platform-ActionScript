/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2026 AllBinary
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
package org.allbinary {
    import java.io.JIOException;
    import java.io.JInputStream;
    import javax.microedition.lcdui.Form;
    import javax.microedition.lcdui.Image;
    import javax.microedition.lcdui.Item;
    import javax.microedition.media.Manager;
    import javax.microedition.media.MediaException;
    import javax.microedition.media.Player;

    //like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
    public class MIDPUtil {
    private static var instance_value:MIDPUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():MIDPUtil {
        if (!MIDPUtil.instance_set) {
            MIDPUtil.instance_set = true;
            MIDPUtil.instance_value = new MIDPUtil();
        }
        return MIDPUtil.instance_value;
    }
    

    public static function getInstance():MIDPUtil {
        return MIDPUtil.instance;
    }
    

    public function createImageWH(width:int, height:int):Image {
        return Image.createImageWH(width, height);
    }
    

    public function createImageFromByteArray(imageData:Vector.<int>, imageOffset:int, imageLength:int):Image {
        return Image.createImageFromByteArray(imageData, imageOffset, imageLength);
    }
    

    public function createImageFromInputStream(inputStream:JInputStream):Image {
        return Image.createImageFromInputStream(inputStream);
    }
    

    public function createPlayerFromInputStream(inputStream:JInputStream, type:String):Player {
        return Manager.createPlayerFromInputStream(inputStream, type);
    }
    

    public function appendItem(form:Form, item:Item):int {
        return form.appendItem(item);
    }
    }
}

