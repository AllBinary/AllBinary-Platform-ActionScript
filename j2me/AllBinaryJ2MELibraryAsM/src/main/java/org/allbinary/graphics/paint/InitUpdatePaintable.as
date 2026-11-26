/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
package org.allbinary.graphics.paint {

    public class InitUpdatePaintable extends Paintable implements InitUpdatePaintableInterface {
    

    public function InitUpdatePaintable() {
        super();
    }
    

    public function init(...args):void {
        if (args.length == 0) {
            this.init_jo0();
            return;
        }
        throw new JException("IllegalArgumentException", "init");
    }

    private function init_jo0():void {
    }
    

    public function update(...args):void {
        if (args.length == 0) {
            this.update_jo0();
            return;
        }
        throw new JException("IllegalArgumentException", "update");
    }

    private function update_jo0():void {
    }
    }
}

