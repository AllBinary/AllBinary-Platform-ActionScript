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

    //JOGLEToKhronosGL11
    public class JOGL11 extends JOGL10 implements GL11 {
        private var gl11:GL2 = null;

        // Java field initializers run after the base constructor
        private function initFieldsJOGL11():void {
    
        }
    

    public function JOGL11(gl:GL) {
        /* this(gl, (gl as GL2)): ActionScript classes have one constructor */
    }
    

    /* Java constructor: ActionScript classes have one constructor
    public function JOGL11(gl:GL, gl2:GL2 = null) {
        super(gl, gl2);
        this.initFieldsJOGL11();
        this.gl11 = this.getJOGLGL();
    }
    */
    

    public function glBindBuffer(target:int, buffer:int):void {
        this.gl11.glBindBuffer(target, buffer);
    }
    

    public function glBufferData(target:int, size:int, data:Buffer, usage:int):void {
        this.gl11.glBufferData(target, size, data, usage);
    }
    

    public function glBufferSubData(target:int, offset:int, size:int, data:Buffer):void {
        this.gl11.glBufferSubData(target, offset, size, data);
    }
    

    public function glClipPlanef(plane:int, equation:Vector.<Number>, offset:int):void {
        this.gl11.glClipPlanef(plane, equation, offset);
    }
    

    public function glClipPlanef(plane:int, equation:FloatBuffer):void {
        this.gl11.glClipPlanef(plane, equation);
    }
    

    public function glColor4ub(red:int, green:int, blue:int, alpha:int):void {
        this.gl11.glColor4ub(red, green, blue, alpha);
    }
    

    override public function glColorPointer(size:int, type:int, stride:int, offset:int):void {
        this.gl11.glColorPointer(size, type, stride, offset);
    }
    

    public function glDeleteBuffers(n:int, buffers:Vector.<int>, offset:int):void {
        this.gl11.glDeleteBuffers(n, buffers, offset);
    }
    

    public function glDeleteBuffers(n:int, buffers:IntBuffer):void {
        this.gl11.glDeleteBuffers(n, buffers);
    }
    

    override public function glDrawElements(mode:int, count:int, type:int, offset:int):void {
        this.gl11.glDrawElements(mode, count, type, offset);
    }
    

    public function glGenBuffers(n:int, buffers:Vector.<int>, offset:int):void {
        this.gl11.glGenBuffers(n, buffers, offset);
    }
    

    public function glGenBuffers(n:int, buffers:IntBuffer):void {
        this.gl11.glGenBuffers(n, buffers);
    }
    

    public function glGetBufferParameteriv(target:int, pname:int, params:Vector.<int>, offset:int):void {
        this.gl11.glGetBufferParameteriv(target, pname, params, offset);
    }
    

    public function glGetBufferParameteriv(target:int, pname:int, params:IntBuffer):void {
        this.gl11.glGetBufferParameteriv(target, pname, params);
    }
    

    public function glGetClipPlanef(pname:int, eqn:Vector.<Number>, offset:int):void {
        this.gl11.glGetClipPlanef(pname, eqn, offset);
    }
    

    public function glGetClipPlanef(pname:int, eqn:FloatBuffer):void {
        this.gl11.glGetClipPlanef(pname, eqn);
    }
    

    public function glGetFloatv(pname:int, params:Vector.<Number>, offset:int):void {
        this.gl11.glGetFloatv(pname, params, offset);
    }
    

    public function glGetFloatv(pname:int, params:FloatBuffer):void {
        this.gl11.glGetFloatv(pname, params);
    }
    

    public function glGetLightfv(light:int, pname:int, params:Vector.<Number>, offset:int):void {
        this.gl11.glGetLightfv(light, pname, params, offset);
    }
    

    public function glGetLightfv(light:int, pname:int, params:FloatBuffer):void {
        this.gl11.glGetLightfv(light, pname, params);
    }
    

    public function glGetMaterialfv(face:int, pname:int, params:Vector.<Number>, offset:int):void {
        this.gl11.glGetMaterialfv(face, pname, params, offset);
    }
    

    public function glGetMaterialfv(face:int, pname:int, params:FloatBuffer):void {
        this.gl11.glGetMaterialfv(face, pname, params);
    }
    

    public function glGetTexEnviv(env:int, pname:int, params:Vector.<int>, offset:int):void {
        this.gl11.glGetTexEnviv(env, pname, params, offset);
    }
    

    public function glGetTexEnviv(env:int, pname:int, params:IntBuffer):void {
        this.gl11.glGetTexEnviv(env, pname, params);
    }
    

    public function glGetTexParameterfv(target:int, pname:int, params:Vector.<Number>, offset:int):void {
        this.gl11.glGetTexParameterfv(target, pname, params, offset);
    }
    

    public function glGetTexParameterfv(target:int, pname:int, params:FloatBuffer):void {
        this.gl11.glGetTexParameterfv(target, pname, params);
    }
    

    public function glGetTexParameteriv(target:int, pname:int, params:Vector.<int>, offset:int):void {
        this.gl11.glGetTexParameteriv(target, pname, params, offset);
    }
    

    public function glGetTexParameteriv(target:int, pname:int, params:IntBuffer):void {
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
    

    public function glPointParameterfv(pname:int, params:Vector.<Number>, offset:int):void {
        this.gl11.glPointParameterfv(pname, params, offset);
    }
    

    public function glPointParameterfv(pname:int, params:FloatBuffer):void {
        this.gl11.glPointParameterfv(pname, params);
    }
    

    override public function glTexCoordPointer(size:int, type:int, stride:int, offset:int):void {
        this.gl11.glTexCoordPointer(size, type, stride, offset);
    }
    

    public function glTexEnvi(target:int, pname:int, param:int):void {
        this.gl11.glTexEnvi(target, pname, param);
    }
    

    public function glTexEnviv(target:int, pname:int, params:Vector.<int>, offset:int):void {
        this.gl11.glTexEnviv(target, pname, params, offset);
    }
    

    public function glTexEnviv(target:int, pname:int, params:IntBuffer):void {
        this.gl11.glTexEnviv(target, pname, params);
    }
    

    public function glTexParameterfv(target:int, pname:int, params:Vector.<Number>, offset:int):void {
        this.gl11.glTexParameterfv(target, pname, params, offset);
    }
    

    public function glTexParameterfv(target:int, pname:int, params:FloatBuffer):void {
        this.gl11.glTexParameterfv(target, pname, params);
    }
    

    override public function glTexParameteri(target:int, pname:int, param:int):void {
        this.gl11.glTexParameteri(target, pname, param);
    }
    

    public function glTexParameteriv(target:int, pname:int, params:Vector.<int>, offset:int):void {
        this.gl11.glTexParameteriv(target, pname, params, offset);
    }
    

    public function glTexParameteriv(target:int, pname:int, params:IntBuffer):void {
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

