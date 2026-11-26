/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.image.opengles {
    import java.io.JIOException;
    import java.io.JInputStream;
    import org.allbinary.graphics.OpenGLBitmap;
    import org.allbinary.graphics.color.BasicColor;

    public class OpenGLImageUtilBase {
    

    public function paint(...args):OpenGLBitmap {
        if (args.length == 3) {
            return this.paint_jo3(args[0], args[1], args[2]);
        }
        if (args.length == 4) {
            return this.paint_jo4(args[0], args[1], args[2], args[3]);
        }
        throw new JException("IllegalArgumentException", "paint");
    }

    private function paint_jo3(alphaBitmap:OpenGLBitmap, originalBitmap:OpenGLBitmap, index:int):OpenGLBitmap {
        throw new JException("RuntimeException", "");
    }

    private function paint_jo4(colorBitmap:OpenGLBitmap, originalBitmap:OpenGLBitmap, alpha:int, basicColor:BasicColor):OpenGLBitmap {
        throw new JException("RuntimeException", "");
    }
    
    

    public function createImage(name:String):OpenGLBitmap {
        throw new JException("RuntimeException", "");
    }
    

    public function createImageFromInputStream(inputStream:JInputStream):OpenGLBitmap {
        throw new JException("RuntimeException", "");
    }
    }
}

