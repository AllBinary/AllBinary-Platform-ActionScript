
        /* Generated Code Do Not Modify */

        


import { IOException } from '../../../java/io/IOException.js';
//not GWT import const IOException

import { InputStream } from '../../../java/io/InputStream.js';
//not GWT import const InputStream

import { Image } from '../../../javax/microedition/lcdui/Image.js';
//not GWT import const Image

//not plain js import { NullUtil } 
const NullUtil = globalThis.org.allbinary.logic.NullUtil;
type NullUtil<T = any, U = any> = typeof NullUtil extends abstract new (...args: any[]) => infer Instance ? Instance : typeof NullUtil;

import { PlatformBitmapBase } from '../../../org/allbinary/platform/graphics/PlatformBitmapBase.js';
//not GWT import const PlatformBitmapBase

import { PlatformBitmapBaseFactory } from '../../../org/allbinary/platform/graphics/PlatformBitmapBaseFactory.js';
//not GWT import const PlatformBitmapBaseFactory

















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        import { OpenGLBitmapConfig } from './OpenGLBitmapConfig.js';
//sameFolderImports - not GWT import - same folder const OpenGLBitmapConfig
import { OpenGLBitmap } from './OpenGLBitmap.js';
//sameFolderImports - not GWT import - same folder const OpenGLBitmap

export class OpenGLBitmapFactory extends PlatformBitmapBaseFactory {
        

    private static readonly instance: OpenGLBitmapFactory = new OpenGLBitmapFactory();

    public static getInstance(): OpenGLBitmapFactory{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return OpenGLBitmapFactory.instance;
    
}


    public readonly ARGB_8888: OpenGLBitmapConfig = new OpenGLBitmapConfig(NullUtil.getInstance()!.NULL_OBJECT);
createBitmap(...args: any[]): any {
   
   
    if (args.length === 3 && typeof args[0] === 'number' && typeof args[1] === 'number') return this.createBitmap$overload1(args[0], args[1], args[2]);
   
    if (args.length === 1) return this.createBitmap$overload2(args[0]);
   
   throw new TypeError('No matching overload: createBitmap'); }
  
    public createBitmap$overload1(width: number, height: number, config: OpenGLBitmapConfig): OpenGLBitmap{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return new OpenGLBitmap(NullUtil.getInstance()!.NULL_OBJECT);
    
}


                //@Throws(IOException.constructor)
            
    public decodeStream(inputStream: InputStream): OpenGLBitmap{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return new OpenGLBitmap(NullUtil.getInstance()!.NULL_OBJECT);
    
}


    public createBitmap$overload2(image: Image): PlatformBitmapBase{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return new OpenGLBitmap(NullUtil.getInstance()!.NULL_OBJECT);
    
}


}

