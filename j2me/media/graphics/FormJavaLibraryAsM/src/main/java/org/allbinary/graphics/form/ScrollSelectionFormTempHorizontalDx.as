
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

        


            import { Exception } from '../../../../java/lang/Exception.js';
        
import { ABCustomItem } from '../../../../org/allbinary/graphics/form/item/ABCustomItem.js';
//not GWT import const ABCustomItem

















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        import { ItemIndexDx } from './ItemIndexDx.js';
//sameFolderImports - not GWT import - same folder const ItemIndexDx
import { ScrollSelectionForm } from './ScrollSelectionForm.js';
//sameFolderImports - not GWT import - same folder const ScrollSelectionForm

export class ScrollSelectionFormTempHorizontalDx extends ItemIndexDx {
        

    private readonly scrollSelectionForm: ScrollSelectionForm;

public constructor (scrollSelectionForm: ScrollSelectionForm){

            super();
        this.scrollSelectionForm= scrollSelectionForm;
    
}


                //@Throws(Exception.constructor)
            
    public getDx(index: number, item: ABCustomItem, dx: number, dy: number): number{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return this.scrollSelectionForm!.getSelectedIndexForPointTempHorizontalDx(index, item, dx, dy);;
    
}


}

