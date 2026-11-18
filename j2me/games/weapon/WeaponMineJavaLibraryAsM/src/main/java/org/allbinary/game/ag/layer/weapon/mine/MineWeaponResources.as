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
package org.allbinary.game.ag.layer.weapon.mine {
    import org.allbinary.game.layer.resources.BasicGameResources;
    import org.allbinary.logic.NullUtil;

    public class MineWeaponResources extends BasicGameResources {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!MineWeaponResources.instance_set) {
            MineWeaponResources.instance_set = true;
            MineWeaponResources.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return MineWeaponResources.instance_value;
    }
        public var DROP_TEXT_RESOURCE:String = null;
        public var DROP_RESOURCE:String = null;
        public var DROP_ICON_RESOURCE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsMineWeaponResources():void {
    this.DROP_TEXT_RESOURCE = "/mine_drop_text_20_by_20.png";
    this.DROP_RESOURCE = "/mine_drop_20_by_20.png";
    this.DROP_ICON_RESOURCE = "/mine_drop_icon_20_by_20.png";
        }
    

    public static function getInstance():MineWeaponResources {
        if (MineWeaponResources.instance == NullUtil.getInstance().NULL_OBJECT) {
            MineWeaponResources.instance = new MineWeaponResources();
        }
        return (MineWeaponResources.instance as MineWeaponResources);
    }
    

    public function MineWeaponResources() {
        super();
        this.initFieldsMineWeaponResources();
        var ROOT:String = "/mine";
        var SMALL:String = "_20_by_20.png";
        var MEDIUM:String = SMALL;
        var SIZE_FOUR:String = SMALL;
        var SIZE_FIVE:String = SMALL;
        var SIZE_SIX:String = SMALL;
        var SIZE:Vector.<String> = new <String>[SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX];
        super.init(ROOT, SIZE);
    }
    }
}

