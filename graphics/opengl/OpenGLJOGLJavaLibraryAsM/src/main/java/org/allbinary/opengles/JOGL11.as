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
package org.allbinary.opengles {
    import com.jogamp.opengl.GL;
    import com.jogamp.opengl.GL2;
    import java.nio.JBuffer;
    import java.nio.JFloatBuffer;
    import java.nio.JIntBuffer;
    import javax.microedition.khronos.opengles.GL11;

    //JOGLEToKhronosGL11
    public class JOGL11 extends JOGL10 implements GL11 {
        private var gl11:GL2 = null;

        // Java field initializers run after the base constructor
        private function initFieldsJOGL11():void {
    
        }
    

    public function JOGL11(...args) {
        if (args.length == 2 && args[0] === JSuperArgs.ARGS) {
            args = args[1];
        }
        var jsuper:Array = JOGL11.jsuperArgs(args);
        super(jsuper[0], jsuper[1]);
        this.initFieldsJOGL11();
        this.jconstruct(args);
    }

    private static function jsuperArgs(args:Array):Array {
        if (args.length == 1) {
            return JOGL11.jsuper_1(args[0]);
        }
        if (args.length == 2) {
            return JOGL11.jsuper_2(args[0], args[1]);
        }
        return [];
    }

    private static function jsuper_1(gl:GL):Array {
        return JOGL11.jsuperArgs([gl, (gl as GL2)]);
    }

    private static function jsuper_2(gl:GL, gl2:GL2):Array {
        return [gl, gl2];
    }

    private function jconstruct(args:Array):void {
        if (args.length == 1) {
            this.jconstruct_1(args[0]);
            return;
        }
        if (args.length == 2) {
            this.jconstruct_2(args[0], args[1]);
            return;
        }
    }

    private function jconstruct_1(gl:GL):void {
        this.jconstruct([gl, (gl as GL2)]);
    }

    private function jconstruct_2(gl:GL, gl2:GL2):void {
        
        this.gl11 = this.getJOGLGL();
    }
    
    

    public function glBindBuffer(target:int, buffer:int):void {
        this.gl11.glBindBuffer(target, buffer);
    }
    

    public function glBufferData(target:int, size:int, data:JBuffer, usage:int):void {
        this.gl11.glBufferData(target, size, data, usage);
    }
    

    public function glBufferSubData(target:int, offset:int, size:int, data:JBuffer):void {
        this.gl11.glBufferSubData(target, offset, size, data);
    }
    

    public function glClipPlanef(...args):void {
        if (args.length == 3) {
            this.glClipPlanef_jo3(args[0], args[1], args[2]);
            return;
        }
        if (args.length == 2) {
            this.glClipPlanef_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "glClipPlanef");
    }

    protected function glClipPlanef_jo3(plane:int, equation:Vector.<Number>, offset:int):void {
        this.gl11.glClipPlanef(plane, equation, offset);
    }

    protected function glClipPlanef_jo2(plane:int, equation:JFloatBuffer):void {
        this.gl11.glClipPlanef(plane, equation);
    }
    
    

    public function glColor4ub(red:int, green:int, blue:int, alpha:int):void {
        this.gl11.glColor4ub(red, green, blue, alpha);
    }
    

    override public function glColorPointer(size:int, type:int, stride:int, offset:int):void {
        this.gl11.glColorPointer(size, type, stride, offset);
    }
    

    public function glDeleteBuffers(...args):void {
        if (args.length == 3) {
            this.glDeleteBuffers_jo3(args[0], args[1], args[2]);
            return;
        }
        if (args.length == 2) {
            this.glDeleteBuffers_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "glDeleteBuffers");
    }

    protected function glDeleteBuffers_jo3(n:int, buffers:Vector.<int>, offset:int):void {
        this.gl11.glDeleteBuffers(n, buffers, offset);
    }

    protected function glDeleteBuffers_jo2(n:int, buffers:JIntBuffer):void {
        this.gl11.glDeleteBuffers(n, buffers);
    }
    
    

    override public function glDrawElements(mode:int, count:int, type:int, offset:int):void {
        this.gl11.glDrawElements(mode, count, type, offset);
    }
    

    public function glGenBuffers(...args):void {
        if (args.length == 3) {
            this.glGenBuffers_jo3(args[0], args[1], args[2]);
            return;
        }
        if (args.length == 2) {
            this.glGenBuffers_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "glGenBuffers");
    }

    protected function glGenBuffers_jo3(n:int, buffers:Vector.<int>, offset:int):void {
        this.gl11.glGenBuffers(n, buffers, offset);
    }

    protected function glGenBuffers_jo2(n:int, buffers:JIntBuffer):void {
        this.gl11.glGenBuffers(n, buffers);
    }
    
    

    public function glGetBufferParameteriv(...args):void {
        if (args.length == 4) {
            this.glGetBufferParameteriv_jo4(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 3) {
            this.glGetBufferParameteriv_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "glGetBufferParameteriv");
    }

    protected function glGetBufferParameteriv_jo4(target:int, pname:int, params:Vector.<int>, offset:int):void {
        this.gl11.glGetBufferParameteriv(target, pname, params, offset);
    }

    protected function glGetBufferParameteriv_jo3(target:int, pname:int, params:JIntBuffer):void {
        this.gl11.glGetBufferParameteriv(target, pname, params);
    }
    
    

    public function glGetClipPlanef(...args):void {
        if (args.length == 3) {
            this.glGetClipPlanef_jo3(args[0], args[1], args[2]);
            return;
        }
        if (args.length == 2) {
            this.glGetClipPlanef_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "glGetClipPlanef");
    }

    protected function glGetClipPlanef_jo3(pname:int, eqn:Vector.<Number>, offset:int):void {
        this.gl11.glGetClipPlanef(pname, eqn, offset);
    }

    protected function glGetClipPlanef_jo2(pname:int, eqn:JFloatBuffer):void {
        this.gl11.glGetClipPlanef(pname, eqn);
    }
    
    

    public function glGetFloatv(...args):void {
        if (args.length == 3) {
            this.glGetFloatv_jo3(args[0], args[1], args[2]);
            return;
        }
        if (args.length == 2) {
            this.glGetFloatv_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "glGetFloatv");
    }

    protected function glGetFloatv_jo3(pname:int, params:Vector.<Number>, offset:int):void {
        this.gl11.glGetFloatv(pname, params, offset);
    }

    protected function glGetFloatv_jo2(pname:int, params:JFloatBuffer):void {
        this.gl11.glGetFloatv(pname, params);
    }
    
    

    public function glGetLightfv(...args):void {
        if (args.length == 4) {
            this.glGetLightfv_jo4(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 3) {
            this.glGetLightfv_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "glGetLightfv");
    }

    protected function glGetLightfv_jo4(light:int, pname:int, params:Vector.<Number>, offset:int):void {
        this.gl11.glGetLightfv(light, pname, params, offset);
    }

    protected function glGetLightfv_jo3(light:int, pname:int, params:JFloatBuffer):void {
        this.gl11.glGetLightfv(light, pname, params);
    }
    
    

    public function glGetMaterialfv(...args):void {
        if (args.length == 4) {
            this.glGetMaterialfv_jo4(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 3) {
            this.glGetMaterialfv_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "glGetMaterialfv");
    }

    protected function glGetMaterialfv_jo4(face:int, pname:int, params:Vector.<Number>, offset:int):void {
        this.gl11.glGetMaterialfv(face, pname, params, offset);
    }

    protected function glGetMaterialfv_jo3(face:int, pname:int, params:JFloatBuffer):void {
        this.gl11.glGetMaterialfv(face, pname, params);
    }
    
    

    public function glGetTexEnviv(...args):void {
        if (args.length == 4) {
            this.glGetTexEnviv_jo4(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 3) {
            this.glGetTexEnviv_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "glGetTexEnviv");
    }

    protected function glGetTexEnviv_jo4(env:int, pname:int, params:Vector.<int>, offset:int):void {
        this.gl11.glGetTexEnviv(env, pname, params, offset);
    }

    protected function glGetTexEnviv_jo3(env:int, pname:int, params:JIntBuffer):void {
        this.gl11.glGetTexEnviv(env, pname, params);
    }
    
    

    public function glGetTexParameterfv(...args):void {
        if (args.length == 4) {
            this.glGetTexParameterfv_jo4(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 3) {
            this.glGetTexParameterfv_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "glGetTexParameterfv");
    }

    protected function glGetTexParameterfv_jo4(target:int, pname:int, params:Vector.<Number>, offset:int):void {
        this.gl11.glGetTexParameterfv(target, pname, params, offset);
    }

    protected function glGetTexParameterfv_jo3(target:int, pname:int, params:JFloatBuffer):void {
        this.gl11.glGetTexParameterfv(target, pname, params);
    }
    
    

    public function glGetTexParameteriv(...args):void {
        if (args.length == 4) {
            this.glGetTexParameteriv_jo4(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 3) {
            this.glGetTexParameteriv_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "glGetTexParameteriv");
    }

    protected function glGetTexParameteriv_jo4(target:int, pname:int, params:Vector.<int>, offset:int):void {
        this.gl11.glGetTexParameteriv(target, pname, params, offset);
    }

    protected function glGetTexParameteriv_jo3(target:int, pname:int, params:JIntBuffer):void {
        this.gl11.glGetTexParameteriv(target, pname, params);
    }
    
    

    public function glIsBuffer(buffer:int):Boolean {
        return this.gl11.glIsBuffer(buffer);
    }
    

    public function glIsEnabled(cap:int):Boolean {
        return this.gl11.glIsEnabled(cap);
    }
    

    public function glIsTexture(texture:int):Boolean {
        return this.gl11.glIsTexture(texture);
    }
    

    override public function glNormalPointer(type:int, stride:int, offset:int):void {
        this.gl11.glNormalPointer(type, stride, offset);
    }
    

    public function glPointParameterf(pname:int, param:Number):void {
        this.gl11.glPointParameterf(pname, param);
    }
    

    public function glPointParameterfv(...args):void {
        if (args.length == 3) {
            this.glPointParameterfv_jo3(args[0], args[1], args[2]);
            return;
        }
        if (args.length == 2) {
            this.glPointParameterfv_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "glPointParameterfv");
    }

    protected function glPointParameterfv_jo3(pname:int, params:Vector.<Number>, offset:int):void {
        this.gl11.glPointParameterfv(pname, params, offset);
    }

    protected function glPointParameterfv_jo2(pname:int, params:JFloatBuffer):void {
        this.gl11.glPointParameterfv(pname, params);
    }
    
    

    override public function glTexCoordPointer(size:int, type:int, stride:int, offset:int):void {
        this.gl11.glTexCoordPointer(size, type, stride, offset);
    }
    

    public function glTexEnvi(target:int, pname:int, param:int):void {
        this.gl11.glTexEnvi(target, pname, param);
    }
    

    public function glTexEnviv(...args):void {
        if (args.length == 4) {
            this.glTexEnviv_jo4(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 3) {
            this.glTexEnviv_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "glTexEnviv");
    }

    protected function glTexEnviv_jo4(target:int, pname:int, params:Vector.<int>, offset:int):void {
        this.gl11.glTexEnviv(target, pname, params, offset);
    }

    protected function glTexEnviv_jo3(target:int, pname:int, params:JIntBuffer):void {
        this.gl11.glTexEnviv(target, pname, params);
    }
    
    

    public function glTexParameterfv(...args):void {
        if (args.length == 4) {
            this.glTexParameterfv_jo4(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 3) {
            this.glTexParameterfv_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "glTexParameterfv");
    }

    protected function glTexParameterfv_jo4(target:int, pname:int, params:Vector.<Number>, offset:int):void {
        this.gl11.glTexParameterfv(target, pname, params, offset);
    }

    protected function glTexParameterfv_jo3(target:int, pname:int, params:JFloatBuffer):void {
        this.gl11.glTexParameterfv(target, pname, params);
    }
    
    

    override public function glTexParameteri(target:int, pname:int, param:int):void {
        this.gl11.glTexParameteri(target, pname, param);
    }
    

    public function glTexParameteriv(...args):void {
        if (args.length == 4) {
            this.glTexParameteriv_jo4(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 3) {
            this.glTexParameteriv_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "glTexParameteriv");
    }

    protected function glTexParameteriv_jo4(target:int, pname:int, params:Vector.<int>, offset:int):void {
        this.gl11.glTexParameteriv(target, pname, params, offset);
    }

    protected function glTexParameteriv_jo3(target:int, pname:int, params:JIntBuffer):void {
        this.gl11.glTexParameteriv(target, pname, params);
    }
    
    

    public function glTexParameterxv(target:int, pname:int, params:Vector.<int>, offset:int):void {
        this.gl11.glTexParameteriv(target, pname, params, offset);
    }
    

    override public function glVertexPointer(size:int, type:int, stride:int, offset:int):void {
        this.gl11.glVertexPointer(size, type, stride, offset);
    }
    }
}

