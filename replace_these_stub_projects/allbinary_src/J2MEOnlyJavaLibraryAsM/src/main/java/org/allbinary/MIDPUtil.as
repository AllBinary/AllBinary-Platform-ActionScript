
        /*
                * 
                *  AllBinary Open License Version 1
                *  Copyright (c) 2026 AllBinary
                * 
                *  By agreeing to this license you and any business entity you represent are
                *  legally bound to the AllBinary Open License Version 1 legal agreement.
                * 
                *  You may obtain the AllBinary Open License Version 1 legal agreement from
                *  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
                * 
                *  Created By: Travis Berthelot 
        */
        
        /* Generated Code Do Not Modify */

        


            import { Object } from '../../java/lang/Object.js';
        
import { IOException } from '../../java/io/IOException.js';
//not GWT import const IOException

import { InputStream } from '../../java/io/InputStream.js';
//not GWT import const InputStream

import { Form } from '../../javax/microedition/lcdui/Form.js';
//not GWT import const Form

import { Image } from '../../javax/microedition/lcdui/Image.js';
//not GWT import const Image

import { Item } from '../../javax/microedition/lcdui/Item.js';
//not GWT import const Item

import { Manager } from '../../javax/microedition/media/Manager.js';
//not GWT import const Manager

import { MediaException } from '../../javax/microedition/media/MediaException.js';
//not GWT import const MediaException

import { Player, PlayerI } from '../../javax/microedition/media/Player.js';
//not GWT import const Player

















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        //like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
export class MIDPUtil
            extends Object
         {
        

    private static readonly instance: MIDPUtil = new MIDPUtil();

    public static getInstance(): MIDPUtil{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return MIDPUtil.instance;
    
}


    public createImageWH(width: number, height: number): Image{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return Image.createImage(width, height);;
    
}


    public createImageFromByteArray(imageData: number[], imageOffset: number, imageLength: number): Image{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return Image.createImage(imageData, imageOffset, imageLength);;
    
}


                //@Throws(IOException.constructor)
            
    public createImageFromInputStream(inputStream: InputStream): Image{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return Image.createImage(inputStream);;
    
}


                //@Throws(IOException.constructor, MediaException.constructor)
            
    public createPlayerFromInputStream(inputStream: InputStream, type: string): Player{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return Manager.createPlayer(inputStream, type);;
    
}


    public appendItem(form: Form, item: Item): number{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return form.append(item);;
    
}


}

