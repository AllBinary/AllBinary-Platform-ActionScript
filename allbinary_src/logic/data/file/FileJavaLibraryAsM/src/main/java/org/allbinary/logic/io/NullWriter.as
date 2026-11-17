
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

//not plain js import { Writer } 
const Writer = (globalThis.java?.io?.Writer ?? class {}) as typeof globalThis.java.io.Writer;
type Writer<T = any, U = any> = typeof Writer extends abstract new (...args: any[]) => infer Instance ? Instance : typeof Writer;

















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        
export class NullWriter extends Writer {
        

    public static readonly NULL_WRITER: NullWriter = new NullWriter();
write(...args: any[]): any {
   
   
    if (args.length === 1 && typeof args[0] === 'number') return this.write$overload1(args[0]);
   
    if (args.length === 3 && typeof args[1] === 'number' && typeof args[2] === 'number') return this.write$overload2(args[0], args[1], args[2]);
   
    if (args.length === 1 && typeof args[0] === 'string') return this.write$overload3(args[0]);
   
    if (args.length === 3 && typeof args[0] === 'string' && typeof args[1] === 'number' && typeof args[2] === 'number') return this.write$overload4(args[0], args[1], args[2]);
   
   throw new TypeError('No matching overload: write'); }
  
                //@Throws(IOException.constructor)
            
    public write$overload1(c: number){
}


                //@Throws(IOException.constructor)
            
    public write$overload2(cbuf: string[], off: number, len: number){
}


                //@Throws(IOException.constructor)
            
    public write$overload3(str: string){
}


                //@Throws(IOException.constructor)
            
    public write$overload4(str: string, off: number, len: number){
}


                //@Throws(IOException.constructor)
            
    public flush(){
}


    public close(){
}


}

