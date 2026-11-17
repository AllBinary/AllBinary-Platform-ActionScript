
        /*
                *  
                *  AllBinary Open License Version 1 
                *  Copyright (c) 2025 AllBinary 
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

        


import { IOException } from '../../../../java/io/IOException.js';
//not GWT import const IOException

import { Reader } from '../../../../java/io/Reader.js';
//not GWT import const Reader

















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        
export class NullReader extends Reader {
        

    public static readonly NULL_READER: NullReader = new NullReader();
read(...args: any[]): any {
   
   
    if (args.length === 0) return this.read$overload1();
   
    if (args.length === 3 && typeof args[1] === 'number' && typeof args[2] === 'number') return this.read$overload2(args[0], args[1], args[2]);
   
   throw new TypeError('No matching overload: read'); }
  
                //@Throws(IOException.constructor)
            
    public read$overload1(): number{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return  -1;
    
}


                //@Throws(IOException.constructor)
            
    public read$overload2(cbuf: string[], off: number, len: number): number{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return  -1;
    
}


                //@Throws(IOException.constructor)
            
    public ready(): boolean{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return false;
    
}


                //@Throws(IOException.constructor)
            
    public skip(n: number): number{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return 0;
    
}


    public close(){
}


}

