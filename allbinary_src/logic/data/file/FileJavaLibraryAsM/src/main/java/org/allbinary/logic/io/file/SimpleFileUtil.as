
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

        


            import { Object } from '../../../../../java/lang/Object.js';
        
            import { Exception } from '../../../../../java/lang/Exception.js';
        
import { ByteArrayOutputStream } from '../../../../../java/io/ByteArrayOutputStream.js';
//not GWT import const ByteArrayOutputStream

import { InputStream } from '../../../../../java/io/InputStream.js';
//not GWT import const InputStream

import { OutputStream } from '../../../../../java/io/OutputStream.js';
//not GWT import const OutputStream

import { Reader } from '../../../../../java/io/Reader.js';
//not GWT import const Reader

//not plain js import { Writer } 
const Writer = (globalThis.java?.io?.Writer ?? class {}) as typeof globalThis.java.io.Writer;
type Writer<T = any, U = any> = typeof Writer extends abstract new (...args: any[]) => infer Instance ? Instance : typeof Writer;

//not plain js import { NullUtil } 
const NullUtil = globalThis.org.allbinary.logic.NullUtil;
type NullUtil<T = any, U = any> = typeof NullUtil extends abstract new (...args: any[]) => infer Instance ? Instance : typeof NullUtil;

//not plain js import { LogUtil } 
const LogUtil = globalThis.org.allbinary.logic.communication.log.LogUtil;
type LogUtil<T = any, U = any> = typeof LogUtil extends abstract new (...args: any[]) => infer Instance ? Instance : typeof LogUtil;

import { NullOutputStream } from '../../../../../org/allbinary/logic/io/NullOutputStream.js';
//not GWT import const NullOutputStream

import { NullReader } from '../../../../../org/allbinary/logic/io/NullReader.js';
//not GWT import const NullReader

import { NullWriter } from '../../../../../org/allbinary/logic/io/NullWriter.js';
//not GWT import const NullWriter

import { StreamUtil } from '../../../../../org/allbinary/logic/io/StreamUtil.js';
//not GWT import const StreamUtil

//not plain js import { StringMaker } 
const StringMaker = globalThis.org.allbinary.logic.string.StringMaker;
type StringMaker<T = any, U = any> = typeof StringMaker extends abstract new (...args: any[]) => infer Instance ? Instance : typeof StringMaker;

//not plain js import { CommonStrings } 
const CommonStrings = globalThis.org.allbinary.string.CommonStrings;
type CommonStrings<T = any, U = any> = typeof CommonStrings extends abstract new (...args: any[]) => infer Instance ? Instance : typeof CommonStrings;

//not plain js import { BasicArrayList } 
const BasicArrayList = globalThis.org.allbinary.util.BasicArrayList;
type BasicArrayList<T = any, U = any> = typeof BasicArrayList extends abstract new (...args: any[]) => infer Instance ? Instance : typeof BasicArrayList;

//not plain js import { BasicArrayListD } 
const BasicArrayListD = globalThis.org.allbinary.util.BasicArrayListD;
type BasicArrayListD<T = any, U = any> = typeof BasicArrayListD extends abstract new (...args: any[]) => infer Instance ? Instance : typeof BasicArrayListD;

















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        
export class SimpleFileUtil
            extends Object
         {
        

    private static readonly instance: SimpleFileUtil = new SimpleFileUtil();

    public static getInstance(): SimpleFileUtil{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return SimpleFileUtil.instance;
    
}


    public static nullOutputStream(): OutputStream{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return NullOutputStream.NULL_OUTPUT_STREAM;
    
}


    public static nullWriter(): Writer{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return NullWriter.NULL_WRITER;
    
}


    public static nullReader(): Reader{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return NullReader.NULL_READER;
    
}


    readonly logUtil: LogUtil = LogUtil.getInstance()!;

    public readonly NULL_WRITER: Writer = SimpleFileUtil.nullWriter()!;

    public readonly NULL_READER: Reader = SimpleFileUtil.nullReader()!;

    private readonly commonStrings: CommonStrings = CommonStrings.getInstance()!;

    private readonly nullUtil: NullUtil = NullUtil.getInstance()!;

    private readonly streamUtil: StreamUtil = StreamUtil.getInstance()!;

    public loadFileAsList(inputStream: InputStream, max: number, byteArray1: number[]): BasicArrayList{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return this.loadFileAsListReturnLine(inputStream, max, byteArray1, 0);;
    
}


    public loadFileAsListReturnLine(inputStream: InputStream, max: number, byteArray1: number[], includeReturnLine: number): BasicArrayList{

    let stringList: BasicArrayList = new BasicArrayListD();;
    

                        if(inputStream == 
                                    null
                                )
                        
                                    {
                                    


                        //if statement needs to be on the same line and ternary does not work the same way.
                        return stringList;
    

                                    }
                                

    let byteArray: number[] = this.nullUtil!.NULL_BYTE_ARRAY;;
    

 try { 
    let outputStream2: ByteArrayOutputStream = new ByteArrayOutputStream(max);;
    
byteArray= this.streamUtil!.getByteArray(inputStream, outputStream2, byteArray1);
    
this.streamUtil!.close(inputStream);
    
 }
 catch (caught: any) {
 {
  const e = caught;
  
this.streamUtil!.close(inputStream);
    
this.logUtil!.put(this.commonStrings!.EXCEPTION, this, this.commonStrings!.ADD, e);
    

 }
   }
 

                        if(byteArray == 
                                    null
                                )
                        
                                    {
                                    


                        //if statement needs to be on the same line and ternary does not work the same way.
                        return stringList;
    

                                    }
                                

    let size: number = byteArray!.length
                ;;
    

    let index: number = 0;;
    

    let startIndex: number= 0;;
    

    let returnLine: number = 0;;
    

        while(index < size)
        {
startIndex= index;
    

        while(index < size -1 && byteArray[index] != (('\n'.charCodeAt(0)) << 24 >> 24))
        {
index++;
    
}


                        if(includeReturnLine == 0)
                        
                                    {
                                    
                        if(index > 0 && byteArray[index -1] == (('\r'.charCodeAt(0)) << 24 >> 24))
                        
                                    {
                                    returnLine= 1;
    

                                    }
                                
                        else {
                            returnLine= 0;
    

                        }
                            

                                    }
                                

    let s: string = ((data: any[], offset: number, count: number) => data.slice(offset, offset + count).map(value => typeof value === 'number' ? String.fromCharCode(value & 255) : value).join(''))(byteArray, startIndex, (index +includeReturnLine -returnLine -startIndex));;
    
stringList!.add(s);
    
index++;
    
}




                        //if statement needs to be on the same line and ternary does not work the same way.
                        return stringList;
    
}


    public createStringFromArrayOfStrings(stringArray: string[]): string{

    let stringMaker: StringMaker = new StringMaker();;
    

    let size: number = stringArray!.length
                ;;
    




                        for (
    let index: number = 0;index < size; index++)
        {
stringMaker!.append(stringArray[index]!);
    
}




                        //if statement needs to be on the same line and ternary does not work the same way.
                        return stringMaker!.toString();;
    
}


}

