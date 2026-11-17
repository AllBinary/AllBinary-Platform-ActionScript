
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

        


            import { Exception } from '../../../../../java/lang/Exception.js';
        
import { J2MEUtil } from '../../../../../org/allbinary/J2MEUtil.js';
//not GWT import const J2MEUtil

//not plain js import { ABSystemWrapper } 
const ABSystemWrapper = globalThis.org.allbinary.logic.ABSystemWrapper;
type ABSystemWrapper<T = any, U = any> = typeof ABSystemWrapper extends abstract new (...args: any[]) => infer Instance ? Instance : typeof ABSystemWrapper;

//not plain js import { LogUtil } 
const LogUtil = globalThis.org.allbinary.logic.communication.log.LogUtil;
type LogUtil<T = any, U = any> = typeof LogUtil extends abstract new (...args: any[]) => infer Instance ? Instance : typeof LogUtil;

//not plain js import { StringMaker } 
const StringMaker = globalThis.org.allbinary.logic.string.StringMaker;
type StringMaker<T = any, U = any> = typeof StringMaker extends abstract new (...args: any[]) => infer Instance ? Instance : typeof StringMaker;

//not plain js import { CommonStrings } 
const CommonStrings = globalThis.org.allbinary.string.CommonStrings;
type CommonStrings<T = any, U = any> = typeof CommonStrings extends abstract new (...args: any[]) => infer Instance ? Instance : typeof CommonStrings;

//not plain js import { ARunnable } 
const ARunnable = globalThis.org.allbinary.thread.ARunnable;
type ARunnable<T = any, U = any> = typeof ARunnable extends abstract new (...args: any[]) => infer Instance ? Instance : typeof ARunnable;

















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        import { HighScoresCanvas } from './HighScoresCanvas.js';
//sameFolderImports - not GWT import - same folder const HighScoresCanvas

export class HighScoreRunnable extends ARunnable {
        

    readonly highScoresCanvas: HighScoresCanvas;

 constructor (highScoresCanvas: HighScoresCanvas){

            super();
        this.highScoresCanvas= highScoresCanvas;
    
}


    public run(){

    let commonStrings: CommonStrings = CommonStrings.getInstance()!;;
    

    let logUtil: LogUtil = LogUtil.getInstance()!;;
    

    let highScoresCanvas: HighScoresCanvas = this.highScoresCanvas;;
    

 try { 
    let isHTML: boolean = J2MEUtil.isHTML()!;;
    

                        if(!isHTML)
                        
                                    {
                                    
        while(!highScoresCanvas!.hasPainted)
        {
}

highScoresCanvas!.hasPainted= false;
    

                                    }
                                

    let stringMaker: StringMaker = new StringMaker();;
    

    let systemWrapper: ABSystemWrapper = ABSystemWrapper.getInstance()!;;
    

    let currentTimeMillis: number = systemWrapper!.currentTimeMillis()!;;
    
logUtil!.putF(stringMaker!.append("HighScoresCanvas - Request repaint to be sure: ")!.appendlong(currentTimeMillis)!.toString(), this, commonStrings!.RUN);
    
highScoresCanvas!.repaintBehavior!.onChangeRepaint(highScoresCanvas);
    

                        if(!isHTML)
                        
                                    {
                                    
        while(!highScoresCanvas!.hasPainted)
        {
}


                                    }
                                
stringMaker!.delete(0, stringMaker!.length());
    
logUtil!.putF(stringMaker!.append("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ")!.appendlong(currentTimeMillis)!.toString(), this, commonStrings!.RUN);
    
highScoresCanvas!.executeUpdate();
    
 }
 catch (caught: any) {
 {
  const e = caught;
  
logUtil!.put(commonStrings!.EXCEPTION, this, commonStrings!.RUN, e);
    

 }
   }
 
}


}

