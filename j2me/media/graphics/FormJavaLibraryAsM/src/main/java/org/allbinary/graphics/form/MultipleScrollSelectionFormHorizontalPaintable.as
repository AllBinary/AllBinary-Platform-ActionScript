
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
        
import { Graphics } from '../../../../javax/microedition/lcdui/Graphics.js';
//not GWT import const Graphics

import { ABCustomItem } from '../../../../org/allbinary/graphics/form/item/ABCustomItem.js';
//not GWT import const ABCustomItem

















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        import { ItemIndexPaintable } from './ItemIndexPaintable.js';
//sameFolderImports - not GWT import - same folder const ItemIndexPaintable
import { MultipleScrollSelectionHorizontalForm } from './MultipleScrollSelectionHorizontalForm.js';
//sameFolderImports - not GWT import - same folder const MultipleScrollSelectionHorizontalForm

export class MultipleScrollSelectionFormHorizontalPaintable extends ItemIndexPaintable {
        

    private readonly multipleScrollSelectionForm: MultipleScrollSelectionHorizontalForm;

 constructor (multipleScrollSelectionForm: MultipleScrollSelectionHorizontalForm){

            super();
        this.multipleScrollSelectionForm= multipleScrollSelectionForm;
    
}


                //@Throws(Exception.constructor)
            
    public paint(graphics: Graphics, index: number, item: ABCustomItem, dx: number, dy: number): number{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return this.multipleScrollSelectionForm!.paintHorizontal(graphics, index, item, dx, dy);;
    
}


}

