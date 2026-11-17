
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
        
import { GameKeyEvent } from '../../../../../org/allbinary/game/input/event/GameKeyEvent.js';
//not GWT import const GameKeyEvent

















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        import { TouchButtonRecognizer } from './TouchButtonRecognizer.js';
//sameFolderImports - not GWT import - same folder const TouchButtonRecognizer
import { TouchButtonInput } from './TouchButtonInput.js';
//sameFolderImports - not GWT import - same folder const TouchButtonInput

export class ReleaseHelper
            extends Object
         {
        

    readonly touchButtonRecognizer: TouchButtonRecognizer;

public constructor (touchButtonRecognizer: TouchButtonRecognizer){

            super();
        this.touchButtonRecognizer= touchButtonRecognizer;
    
}


                //@Throws(Exception.constructor)
            
    public release(touchButtonInput: TouchButtonInput, deviceId: number){

    let nextTouchButtonInput: TouchButtonInput;;
    

    let gameKeyEvent: GameKeyEvent;;
    




                        for (
    let index: number = this.touchButtonRecognizer!.currentlyPressedTouchButtonSingleton!.size() -1;index >= 0; index--)
        {
nextTouchButtonInput= this.touchButtonRecognizer!.currentlyPressedTouchButtonSingleton!.get(index);
    
gameKeyEvent= nextTouchButtonInput!.getGameKeyEvent();
    
this.touchButtonRecognizer!.upGameKeyEventHandler!.fireEvent(gameKeyEvent);
    
this.touchButtonRecognizer!.upGameKeyEventHandler!.getInstanceForDevice(deviceId)!.fireEvent(gameKeyEvent);
    
this.touchButtonRecognizer!.currentlyPressedTouchButtonSingleton!.removeAt(index);
    
}

}


}

