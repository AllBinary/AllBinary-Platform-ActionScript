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
package org.allbinary.graphics.threed {
    import java.lang.JRunnable;

    //SWTWithoutJOGL
    public class SWTJOGLProcessor implements JRunnable {
    private static var instance_value:SWTJOGLProcessor;
    private static var instance_set:Boolean = false;
    private static function get instance():SWTJOGLProcessor {
        if (!SWTJOGLProcessor.instance_set) {
            SWTJOGLProcessor.instance_set = true;
            SWTJOGLProcessor.instance_value = new SWTJOGLProcessor();
        }
        return SWTJOGLProcessor.instance_value;
    }
        public var glHolder:GLHolder = null;

        // Java field initializers run after the base constructor
        private function initFieldsSWTJOGLProcessor():void {
    this.glHolder = new GLHolder() /* Java anonymous class body: implement it as a named subclass
        

        public function run(renderer:Object):void {
        } */;
        }

        public function SWTJOGLProcessor() {
            super();
            this.initFieldsSWTJOGLProcessor();
        }
    

    public static function getInstance():SWTJOGLProcessor {
        return SWTJOGLProcessor.instance;
    }
    

    public function init(display:Object, comp:Object):void {
    }
    

    public function isHolderCreated():Boolean {
        return this.glHolder.isCreated;
    }
    

    public function setRenderer(renderer:Object):void {
    }
    

    public function isJOGL():Boolean {
        return false;
    }
    

    public function createSurface():void {
    }
    

    public function onSurfaceCreated():void {
    }
    

    public function onSurfaceChangedForEvent(event:Object):void {
    }
    

    public function onSurfaceChanged():void {
    }
    

    public function onSurfaceChangedWH(width:int, height:int):void {
    }
    

    public function addListener():void {
    }
    

    public function addListeners(midlet:MIDlet):void {
    }
    

    public function run():void {
    }
    

    public function clear():void {
    }
    

    public function setCustom(width:int, height:int, ratio:Number):void {
    }
    

    public function setRatioProcessor(ratioProcessor:RatioProcessor):void {
    }
    

    public function charWidth(font:Font, ch:int):int {
        throw new JException("RuntimeException", "");
    }
    

    public function charsWidth(font:Font, ch:Vector.<int>, offset:int, length:int):int {
        throw new JException("RuntimeException", "");
    }
    

    public function stringWidth(font:Font, str:String):int {
        throw new JException("RuntimeException", "");
    }
    

    public function substringWidth(font:Font, str:String, offset:int, len:int):int {
        throw new JException("RuntimeException", "");
    }
    }
}

