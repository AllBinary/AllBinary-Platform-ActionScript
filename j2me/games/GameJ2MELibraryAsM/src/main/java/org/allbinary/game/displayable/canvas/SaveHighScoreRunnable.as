
        /*
                * 
                *  AllBinary Open License Version 1
                *  Copyright (c) 2011 AllBinary
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

        


            import { Object } from '../../../../../java/lang/Object.js';
        
            import { Exception } from '../../../../../java/lang/Exception.js';
        
            import { Runnable } from '../../../../../java/lang/Runnable.js';
        
import { HighScoreTextBox } from '../../../../../org/allbinary/game/score/displayable/HighScoreTextBox.js';
//not GWT import const HighScoreTextBox

import { ProgressCanvas } from '../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.js';
//not GWT import const ProgressCanvas

import { ProgressCanvasFactory } from '../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.js';
//not GWT import const ProgressCanvasFactory

//not plain js import { LogUtil } 
const LogUtil = globalThis.org.allbinary.logic.communication.log.LogUtil;
type LogUtil<T = any, U = any> = typeof LogUtil extends abstract new (...args: any[]) => infer Instance ? Instance : typeof LogUtil;

//not plain js import { CommonStrings } 
const CommonStrings = globalThis.org.allbinary.string.CommonStrings;
type CommonStrings<T = any, U = any> = typeof CommonStrings extends abstract new (...args: any[]) => infer Instance ? Instance : typeof CommonStrings;

















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        
export class SaveHighScoreRunnable
            extends Object
         implements Runnable {
        

    private readonly progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()!;

    private readonly isLast: boolean;

    private readonly textBox: HighScoreTextBox;

 constructor (isLast: boolean, textBox: HighScoreTextBox){

            super();
        this.isLast= isLast;
    
this.textBox= textBox;
    
}


    public run(){

    let logUtil: LogUtil = LogUtil.getInstance()!;;
    

 try { 
                        if(this.isLast)
                        
                                    {
                                    this.textBox!.submit();
    

                                    }
                                
                        else {
                            this.textBox!.saveHighScore();
    

                        }
                            
 }
 catch (caught: any) {
 {
  const e = caught;
  

    let commonStrings: CommonStrings = CommonStrings.getInstance()!;;
    
logUtil!.put(commonStrings!.EXCEPTION, this, "run", e);
    
this.progressCanvas!.end();
    

 }
   }
 
}


}

