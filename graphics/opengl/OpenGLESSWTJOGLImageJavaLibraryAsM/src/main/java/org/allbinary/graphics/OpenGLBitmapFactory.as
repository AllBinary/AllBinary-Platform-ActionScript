
        /* Generated Code Do Not Modify */

        


            import { Exception } from '../../../java/lang/Exception.js';
        
import { IOException } from '../../../java/io/IOException.js';
//not GWT import const IOException

import { InputStream } from '../../../java/io/InputStream.js';
//not GWT import const InputStream

import { Image } from '../../../javax/microedition/lcdui/Image.js';
//not GWT import const Image

import { ImageFactory } from '../../../org/allbinary/image/ImageFactory.js';
//not GWT import const ImageFactory

import { PlatformBitmapBaseFactory } from '../../../org/allbinary/platform/graphics/PlatformBitmapBaseFactory.js';
//not GWT import const PlatformBitmapBaseFactory

import { PlatformBitmapBase } from '../../../org/allbinary/platform/graphics/PlatformBitmapBase.js';
//not GWT import const PlatformBitmapBase

















                                        
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


    public readonly ARGB_8888: OpenGLBitmapConfig = new OpenGLBitmapConfig(
                            null);
createBitmap(...args: any[]): any {
   
   
    if (args.length === 3 && typeof args[0] === 'number' && typeof args[1] === 'number') return this.createBitmap$overload1(args[0], args[1], args[2]);
   
    if (args.length === 1) return this.createBitmap$overload2(args[0]);
   
   throw new TypeError('No matching overload: createBitmap'); }
  
    public createBitmap$overload1(width: number, height: number, config: OpenGLBitmapConfig): OpenGLBitmap{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return new OpenGLBitmap(Image.createImage(width, height));
    
}


                //@Throws(Exception.constructor)
            
    public decodeStream(inputStream: InputStream): OpenGLBitmap{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return new OpenGLBitmap(ImageFactory.getInstance()!.createImageFromInputStream(inputStream));
    
}


    public createBitmap$overload2(image: Image): PlatformBitmapBase{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return new OpenGLBitmap(image);
    
}


}

