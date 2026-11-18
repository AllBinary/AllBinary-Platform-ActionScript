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
package org.allbinary.input.motion.button {
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListUtil;

    public class TouchButtonFactory {
    private static var SINGLETON_value:TouchButtonFactory;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():TouchButtonFactory {
        if (!TouchButtonFactory.SINGLETON_set) {
            TouchButtonFactory.SINGLETON_set = true;
            TouchButtonFactory.SINGLETON_value = new TouchButtonFactory();
        }
        return TouchButtonFactory.SINGLETON_value;
    }
        private var LIST:BasicArrayList = null;
        private var list:BasicArrayList = null;
        private var savedList:BasicArrayList = null;
        private var saved:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsTouchButtonFactory():void {
    this.LIST = BasicArrayListUtil.getInstance().getImmutableInstance();
    this.list = this.LIST;
    this.savedList = this.LIST;
    this.saved = false;
        }
    

    public static function getInstance():TouchButtonFactory {
        return TouchButtonFactory.SINGLETON;
    }
    

    public function TouchButtonFactory() {
        super();
        this.initFieldsTouchButtonFactory();
    }
    

    public function defaultList():void {
        this.list = this.LIST;
        this.toggle(false, this.LIST);
    }
    

    public function toggle(save:Boolean, list:BasicArrayList):void {
        if (list != BasicArrayListUtil.getInstance().getImmutableInstance()) {
            this.savedList = list;
            if (!this.saved) {
                this.list = this.savedList;
            }
        } else {
            if (save) {
                if (!this.saved) {
                    this.saved = true;
                    this.savedList = this.list;
                    this.list = this.LIST;
                } else {
                }
            } else {
                this.list = this.savedList;
                this.saved = false;
            }
        }
    }
    

    public function setList(list:BasicArrayList):void {
        if (list == null) {
            throw new JException("Exception", "Null List");
        }
        this.list = list;
    }
    

    public function getList():BasicArrayList {
        return this.list;
    }
    }
}

