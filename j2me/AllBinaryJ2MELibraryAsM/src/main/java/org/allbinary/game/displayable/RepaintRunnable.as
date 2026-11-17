
        /*
                *  
                *  AllBinary Open License Version 1 
                *  Copyright (c) 2022 AllBinary 
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

        


            import { Exception } from '../../../../java/lang/Exception.js';
        
import { Canvas } from '../../../../javax/microedition/lcdui/Canvas.js';
//not GWT import const Canvas

import { DisplayInfoSingleton } from '../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.js';
//not GWT import const DisplayInfoSingleton

//not plain js import { LogUtil } 
const LogUtil = globalThis.org.allbinary.logic.communication.log.LogUtil;
type LogUtil<T = any, U = any> = typeof LogUtil extends abstract new (...args: any[]) => infer Instance ? Instance : typeof LogUtil;

//not plain js import { CommonStrings } 
const CommonStrings = globalThis.org.allbinary.string.CommonStrings;
type CommonStrings<T = any, U = any> = typeof CommonStrings extends abstract new (...args: any[]) => infer Instance ? Instance : typeof CommonStrings;

//not plain js import { ARunnable } 
const ARunnable = globalThis.org.allbinary.thread.ARunnable;
type ARunnable<T = any, U = any> = typeof ARunnable extends abstract new (...args: any[]) => infer Instance ? Instance : typeof ARunnable;

















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        
export class RepaintRunnable extends ARunnable {
        

    private readonly canvas: Canvas;

public constructor (canvas: Canvas){

            super();
        this.canvas= canvas;
    
}


    public run(){

 try { this.canvas.repaint();
    
DisplayInfoSingleton.getInstance()!.process();
    
 }
 catch (caught: any) {
 {
  const e = caught;
  

    let commonStrings: CommonStrings = CommonStrings.getInstance()!;;
    

    let logUtil: LogUtil = LogUtil.getInstance()!;;
    
logUtil!.put(commonStrings!.EXCEPTION, this, commonStrings!.RUN, e);
    

 }
   }
 
}


}

