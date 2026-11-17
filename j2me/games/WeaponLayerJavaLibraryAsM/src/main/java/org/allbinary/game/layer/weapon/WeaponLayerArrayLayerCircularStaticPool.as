
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
        
            import { RuntimeException } from '../../../../../java/lang/RuntimeException.js';
        
//not plain js import { CircularIndexUtil } 
const CircularIndexUtil = globalThis.org.allbinary.util.CircularIndexUtil;
type CircularIndexUtil<T = any, U = any> = typeof CircularIndexUtil extends abstract new (...args: any[]) => infer Instance ? Instance : typeof CircularIndexUtil;

















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        import { WeaponLayer } from './WeaponLayer.js';
//sameFolderImports - not GWT import - same folder const WeaponLayer

export class WeaponLayerArrayLayerCircularStaticPool
            extends Object
         {
        

    private static readonly instance: WeaponLayerArrayLayerCircularStaticPool = new WeaponLayerArrayLayerCircularStaticPool();

    public static getInstance(): WeaponLayerArrayLayerCircularStaticPool{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return WeaponLayerArrayLayerCircularStaticPool.instance;
    
}


    private readonly MAX: number = 5;

    private circularIndexUtil: CircularIndexUtil = CircularIndexUtil.createInstance(this.MAX)!;

    private WEAPONLAYER_ARRAY: WeaponLayer[][];

    private TWO_WEAPONLAYER_ARRAY: WeaponLayer[][];

    private THREE_WEAPONLAYER_ARRAY: WeaponLayer[][];

    public init(){

    let WEAPONLAYER_ARRAY: WeaponLayer[][] = new Array(this.MAX *2)
                                                            ;;
    

    let TWO_WEAPONLAYER_ARRAY: WeaponLayer[][] = new Array(this.MAX)
                                                            ;;
    

    let THREE_WEAPONLAYER_ARRAY: WeaponLayer[][] = new Array(this.MAX)
                                                            ;;
    




                        for (
    let index: number = 0;index < this.MAX; index++)
        {
WEAPONLAYER_ARRAY[index]= new Array(1);
    
TWO_WEAPONLAYER_ARRAY[index]= new Array(2);
    
THREE_WEAPONLAYER_ARRAY[index]= new Array(3);
    
}

this.WEAPONLAYER_ARRAY= WEAPONLAYER_ARRAY;
    
this.TWO_WEAPONLAYER_ARRAY= TWO_WEAPONLAYER_ARRAY;
    
this.THREE_WEAPONLAYER_ARRAY= THREE_WEAPONLAYER_ARRAY;
    
}


    getWeaponLayerArrays(size: number): WeaponLayer[][]{

                        if(size == 1)
                        
                                    {
                                    


                        //if statement needs to be on the same line and ternary does not work the same way.
                        return this.WEAPONLAYER_ARRAY;
    

                                    }
                                
                             else 
                        if(size == 2)
                        
                                    {
                                    


                        //if statement needs to be on the same line and ternary does not work the same way.
                        return this.TWO_WEAPONLAYER_ARRAY;
    

                                    }
                                
                             else 
                        if(size == 3)
                        
                                    {
                                    


                        //if statement needs to be on the same line and ternary does not work the same way.
                        return this.THREE_WEAPONLAYER_ARRAY;
    

                                    }
                                



                            throw new RuntimeException();
                    
}


                //@Throws(Exception.constructor)
            
    public getInstanceArray(size: number): WeaponLayer[]{

    let weaponLayerArray: WeaponLayer[] = this.getWeaponLayerArrays(size)[this.circularIndexUtil!.getIndex()]!;;
    
this.circularIndexUtil!.next();
    



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return weaponLayerArray;
    
}


}

