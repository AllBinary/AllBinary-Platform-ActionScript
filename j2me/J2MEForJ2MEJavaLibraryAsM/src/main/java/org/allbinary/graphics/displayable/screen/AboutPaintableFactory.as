/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2022 AllBinary
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
package org.allbinary.graphics.displayable.screen {
    import org.allbinary.game.paint.AboutPaintable;
    import org.allbinary.graphics.paint.NullPaintable;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.logic.string.StringUtil;

    public class AboutPaintableFactory {
    private static var instance_value:AboutPaintableFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():AboutPaintableFactory {
        if (!AboutPaintableFactory.instance_set) {
            AboutPaintableFactory.instance_set = true;
            AboutPaintableFactory.instance_value = new AboutPaintableFactory();
        }
        return AboutPaintableFactory.instance_value;
    }
        public var paintableArray:Vector.<Paintable> = null;

        // Java field initializers run after the base constructor
        private function initFieldsAboutPaintableFactory():void {
    this.paintableArray = new <Paintable>[NullPaintable.getInstance()];
        }
    

    public static function getInstance():AboutPaintableFactory {
        return AboutPaintableFactory.instance;
    }
    

    public function AboutPaintableFactory() {
        super();
        this.initFieldsAboutPaintableFactory();
        var INFO:Vector.<String> = new <String>["Built with the", "AllBinary Platform", StringUtil.getInstance().EMPTY_STRING, "Comments or Questions:", "support@allbinary.com"];
        var DEVELOPERS:Vector.<String> = new <String>["Developed By:", "Travis Berthelot"];
        this.paintableArray = AboutPaintable.getInstance2(INFO, DEVELOPERS).getPaintableArrayInstance();
    }
    }
}

