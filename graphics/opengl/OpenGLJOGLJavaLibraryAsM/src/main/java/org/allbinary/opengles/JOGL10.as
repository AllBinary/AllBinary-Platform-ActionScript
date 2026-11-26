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
    import com.jogamp.opengl.glu.GLU;
    import com.jogamp.opengl.GL;
    import com.jogamp.opengl.GL2;
    import java.nio.JBuffer;
    import java.nio.JFloatBuffer;
    import java.nio.JIntBuffer;
    import javax.microedition.khronos.opengles.GL10;

    //JOGLEToKhronosGL10
    public class JOGL10 implements GL10 {
        public var RED:String = null;
        public var GREEN:String = null;
        public var BLUE:String = null;
        public var ALPHA:String = null;
        public var PNAME:String = null;
        public var _PNAME:String = null;
        public var PARAM:String = null;
        public var PARAMS:String = null;
        public var LIGHT:String = null;
        public var FACE:String = null;
        public var TARGET:String = null;
        private var gl10:GL2 = null;
        public var glu:GLU = null;
        public var GL_LINE:int = 0;
        public var GL_QUAD_STRIP:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsJOGL10():void {
    this.RED = "red: ";
    this.GREEN = " green: ";
    this.BLUE = " blue: ";
    this.ALPHA = " alpha: ";
    this.PNAME = "pname: ";
    this._PNAME = " pname: ";
    this.PARAM = " param: ";
    this.PARAMS = " params: ";
    this.LIGHT = "light: ";
    this.FACE = "face: ";
    this.TARGET = "target: ";
    
    
    
    
        }
    

    public function JOGL10(gl:GL, gl2:GL2) {
        super();
        this.initFieldsJOGL10();
        this.gl10 = gl2;
        this.glu = GLU.createGLU(this.gl10);
        this.GL_LINE = GL2.GL_LINE;
        this.GL_QUAD_STRIP = GL2.GL_QUAD_STRIP;
    }
    

    public function getJOGLGL():GL2 {
        return this.gl10;
    }
    

    public function glActiveTexture(texture:int):void {
        this.gl10.glActiveTexture(texture);
    }
    

    public function glAlphaFunc(func:int, ref:Number):void {
        this.gl10.glAlphaFunc(func, ref);
    }
    

    public function glBindTexture(target:int, texture:int):void {
        this.gl10.glBindTexture(target, texture);
    }
    

    public function glBlendFunc(sfactor:int, dfactor:int):void {
        this.gl10.glBlendFunc(sfactor, dfactor);
    }
    

    public function glClear(mask:int):void {
        this.gl10.glClear(mask);
    }
    

    public function glClearColor(red:Number, green:Number, blue:Number, alpha:Number):void {
        this.gl10.glClearColor(red, green, blue, alpha);
    }
    

    public function glClearDepthf(depth:Number):void {
        this.gl10.glClearDepthf(depth);
    }
    

    public function glClearStencil(s:int):void {
        this.gl10.glClearStencil(s);
    }
    

    public function glClientActiveTexture(texture:int):void {
        this.gl10.glClientActiveTexture(texture);
    }
    

    public function glColor4f(red:Number, green:Number, blue:Number, alpha:Number):void {
        this.gl10.glColor4f(red, green, blue, alpha);
    }
    

    public function glColorMask(red:Boolean, green:Boolean, blue:Boolean, alpha:Boolean):void {
        this.gl10.glColorMask(red, green, blue, alpha);
    }
    

    public function glColorPointer(size:int, type:int, stride:int, pointer:JBuffer):void {
        this.gl10.glColorPointer(size, type, stride, pointer);
    }
    

    public function glCompressedTexImage2D(target:int, level:int, internalformat:int, width:int, height:int, border:int, imageSize:int, data:JBuffer):void {
        this.gl10.glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data);
    }
    

    public function glCompressedTexSubImage2D(target:int, level:int, xoffset:int, yoffset:int, width:int, height:int, format:int, imageSize:int, data:JBuffer):void {
        this.gl10.glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data);
    }
    

    public function glCopyTexImage2D(target:int, level:int, internalformat:int, x:int, y:int, width:int, height:int, border:int):void {
        this.gl10.glCopyTexImage2D(target, level, internalformat, x, y, width, height, border);
    }
    

    public function glCopyTexSubImage2D(target:int, level:int, xoffset:int, yoffset:int, x:int, y:int, width:int, height:int):void {
        this.gl10.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
    }
    

    public function glCullFace(mode:int):void {
        this.gl10.glCullFace(mode);
    }
    

    public function glDeleteTextures(...args):void {
        if (args.length == 3) {
            this.glDeleteTextures_jo3(args[0], args[1], args[2]);
            return;
        }
        if (args.length == 2) {
            this.glDeleteTextures_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "glDeleteTextures");
    }

    protected function glDeleteTextures_jo3(n:int, textures:Vector.<int>, offset:int):void {
        this.gl10.glDeleteTextures(n, textures, offset);
    }

    protected function glDeleteTextures_jo2(n:int, textures:JIntBuffer):void {
        this.gl10.glDeleteTextures(n, textures);
    }
    
    

    public function glDepthFunc(func:int):void {
        this.gl10.glDepthFunc(func);
    }
    

    public function glDepthMask(flag:Boolean):void {
        this.gl10.glDepthMask(flag);
    }
    

    public function glDepthRangef(zNear:Number, zFar:Number):void {
        this.gl10.glDepthRangef(zNear, zFar);
    }
    

    public function glDisable(cap:int):void {
        this.gl10.glDisable(cap);
    }
    

    public function glDisableClientState(array:int):void {
        this.gl10.glDisableClientState(array);
    }
    

    public function glDrawArrays(mode:int, first:int, count:int):void {
        this.gl10.glDrawArrays(mode, first, count);
    }
    

    public function glDrawElements(mode:int, count:int, type:int, indices:JBuffer):void {
        this.gl10.glDrawElements(mode, count, type, indices);
    }
    

    public function glEnable(cap:int):void {
        this.gl10.glEnable(cap);
    }
    

    public function glEnableClientState(array:int):void {
        this.gl10.glEnableClientState(array);
    }
    

    public function glFinish():void {
        this.gl10.glFinish();
    }
    

    public function glFlush():void {
        this.gl10.glFlush();
    }
    

    public function glFogf(pname:int, param:Number):void {
        this.gl10.glFogf(pname, param);
    }
    

    public function glFogfv(...args):void {
        if (args.length == 3) {
            this.glFogfv_jo3(args[0], args[1], args[2]);
            return;
        }
        if (args.length == 2) {
            this.glFogfv_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "glFogfv");
    }

    protected function glFogfv_jo3(pname:int, params:Vector.<Number>, offset:int):void {
        this.gl10.glFogfv(pname, params, offset);
    }

    protected function glFogfv_jo2(pname:int, params:JFloatBuffer):void {
        this.gl10.glFogfv(pname, params);
    }
    
    

    public function glFrontFace(mode:int):void {
        this.gl10.glFrontFace(mode);
    }
    

    public function glFrustumf(left:Number, right:Number, bottom:Number, top:Number, zNear:Number, zFar:Number):void {
        this.gl10.glFrustumf(left, right, bottom, top, zNear, zFar);
    }
    

    public function glGenTextures(...args):void {
        if (args.length == 3) {
            this.glGenTextures_jo3(args[0], args[1], args[2]);
            return;
        }
        if (args.length == 2) {
            this.glGenTextures_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "glGenTextures");
    }

    protected function glGenTextures_jo3(n:int, textures:Vector.<int>, offset:int):void {
        this.gl10.glGenTextures(n, textures, offset);
    }

    protected function glGenTextures_jo2(n:int, textures:JIntBuffer):void {
        this.gl10.glGenTextures(n, textures);
    }
    
    

    public function glGetError():int {
        return this.gl10.glGetError();
    }
    

    public function glGetIntegerv(...args):void {
        if (args.length == 3) {
            this.glGetIntegerv_jo3(args[0], args[1], args[2]);
            return;
        }
        if (args.length == 2) {
            this.glGetIntegerv_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "glGetIntegerv");
    }

    protected function glGetIntegerv_jo3(pname:int, params:Vector.<int>, offset:int):void {
        this.gl10.glGetIntegerv(pname, params, offset);
    }

    protected function glGetIntegerv_jo2(pname:int, params:JIntBuffer):void {
        this.gl10.glGetIntegerv(pname, params);
    }
    
    

    public function glGetString(name:int):String {
        return this.gl10.glGetString(name);
    }
    

    public function glHint(target:int, mode:int):void {
        this.gl10.glHint(target, mode);
    }
    

    public function glLightModelf(pname:int, param:Number):void {
        this.gl10.glLightModelf(pname, param);
    }
    

    public function glLightModelfv(...args):void {
        if (args.length == 3) {
            this.glLightModelfv_jo3(args[0], args[1], args[2]);
            return;
        }
        if (args.length == 2) {
            this.glLightModelfv_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "glLightModelfv");
    }

    protected function glLightModelfv_jo3(pname:int, params:Vector.<Number>, offset:int):void {
        this.gl10.glLightModelfv(pname, params, offset);
    }

    protected function glLightModelfv_jo2(pname:int, params:JFloatBuffer):void {
        this.gl10.glLightModelfv(pname, params);
    }
    
    

    public function glLightf(light:int, pname:int, param:Number):void {
        this.gl10.glLightf(light, pname, param);
    }
    

    public function glLightfv(...args):void {
        if (args.length == 4) {
            this.glLightfv_jo4(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 3) {
            this.glLightfv_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "glLightfv");
    }

    protected function glLightfv_jo4(light:int, pname:int, params:Vector.<Number>, offset:int):void {
        this.gl10.glLightfv(light, pname, params, offset);
    }

    protected function glLightfv_jo3(light:int, pname:int, params:JFloatBuffer):void {
        this.gl10.glLightfv(light, pname, params);
    }
    
    

    public function glLineWidth(width:Number):void {
        this.gl10.glLineWidth(width);
    }
    

    public function glLoadIdentity():void {
        this.gl10.glLoadIdentity();
    }
    

    public function glLoadMatrixf(...args):void {
        if (args.length == 2) {
            this.glLoadMatrixf_jo2(args[0], args[1]);
            return;
        }
        if (args.length == 1) {
            this.glLoadMatrixf_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "glLoadMatrixf");
    }

    protected function glLoadMatrixf_jo2(m:Vector.<Number>, offset:int):void {
        this.gl10.glLoadMatrixf(m, offset);
    }

    protected function glLoadMatrixf_jo1(m:JFloatBuffer):void {
        this.gl10.glLoadMatrixf(m);
    }
    
    

    public function glLogicOp(opcode:int):void {
        this.gl10.glLogicOp(opcode);
    }
    

    public function glMaterialf(face:int, pname:int, param:Number):void {
        this.gl10.glMaterialf(face, pname, param);
    }
    

    public function glMaterialfv(...args):void {
        if (args.length == 4) {
            this.glMaterialfv_jo4(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 3) {
            this.glMaterialfv_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "glMaterialfv");
    }

    protected function glMaterialfv_jo4(face:int, pname:int, params:Vector.<Number>, offset:int):void {
        this.gl10.glMaterialfv(face, pname, params, offset);
    }

    protected function glMaterialfv_jo3(face:int, pname:int, params:JFloatBuffer):void {
        this.gl10.glMaterialfv(face, pname, params);
    }
    
    

    public function glMatrixMode(mode:int):void {
        this.gl10.glMatrixMode(mode);
    }
    

    public function glMultMatrixf(...args):void {
        if (args.length == 2) {
            this.glMultMatrixf_jo2(args[0], args[1]);
            return;
        }
        if (args.length == 1) {
            this.glMultMatrixf_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "glMultMatrixf");
    }

    protected function glMultMatrixf_jo2(m:Vector.<Number>, offset:int):void {
        this.gl10.glMultMatrixf(m, offset);
    }

    protected function glMultMatrixf_jo1(m:JFloatBuffer):void {
        this.gl10.glMultMatrixf(m);
    }
    
    

    public function glMultiTexCoord4f(target:int, s:Number, t:Number, r:Number, q:Number):void {
        this.gl10.glMultiTexCoord4f(target, s, t, r, q);
    }
    

    public function glNormal3f(nx:Number, ny:Number, nz:Number):void {
        this.gl10.glNormal3f(nx, ny, nz);
    }
    

    public function glNormalPointer(type:int, stride:int, pointer:JBuffer):void {
        this.gl10.glNormalPointer(type, stride, pointer);
    }
    

    public function glOrthof(left:Number, right:Number, bottom:Number, top:Number, zNear:Number, zFar:Number):void {
        this.gl10.glOrthof(left, right, bottom, top, zNear, zFar);
    }
    

    public function glPixelStorei(pname:int, param:int):void {
        this.gl10.glPixelStorei(pname, param);
    }
    

    public function glPointSize(size:Number):void {
        this.gl10.glPointSize(size);
    }
    

    public function glPolygonOffset(factor:Number, units:Number):void {
        this.gl10.glPolygonOffset(factor, units);
    }
    

    public function glPopMatrix():void {
        this.gl10.glPopMatrix();
    }
    

    public function glPushMatrix():void {
        this.gl10.glPushMatrix();
    }
    

    public function glReadPixels(x:int, y:int, width:int, height:int, format:int, type:int, pixels:JBuffer):void {
        this.gl10.glReadPixels(x, y, width, height, format, type, pixels);
    }
    

    public function glRotatef(angle:Number, x:Number, y:Number, z:Number):void {
        this.gl10.glRotatef(angle, x, y, z);
    }
    

    public function glRotatex(angle:int, x:int, y:int, z:int):void {
        this.gl10.glRotatef(angle, x, y, z);
    }
    

    public function glSampleCoverage(value:Number, invert:Boolean):void {
        this.gl10.glSampleCoverage(value, invert);
    }
    

    public function glScalef(x:Number, y:Number, z:Number):void {
        this.gl10.glScalef(x, y, z);
    }
    

    public function glScalex(x:int, y:int, z:int):void {
        this.gl10.glScalef(x, y, z);
    }
    

    public function glScissor(x:int, y:int, width:int, height:int):void {
        this.gl10.glScissor(x, y, width, height);
    }
    

    public function glShadeModel(mode:int):void {
        this.gl10.glShadeModel(mode);
    }
    

    public function glStencilFunc(func:int, ref:int, mask:int):void {
        this.gl10.glStencilFunc(func, ref, mask);
    }
    

    public function glStencilMask(mask:int):void {
        this.gl10.glStencilMask(mask);
    }
    

    public function glStencilOp(fail:int, zfail:int, zpass:int):void {
        this.gl10.glStencilOp(fail, zfail, zpass);
    }
    

    public function glTexCoordPointer(size:int, type:int, stride:int, pointer:JBuffer):void {
        this.gl10.glTexCoordPointer(size, type, stride, pointer);
    }
    

    public function glTexEnvf(target:int, pname:int, param:Number):void {
        this.gl10.glTexEnvf(target, pname, param);
    }
    

    public function glTexEnvfv(...args):void {
        if (args.length == 4) {
            this.glTexEnvfv_jo4(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 3) {
            this.glTexEnvfv_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "glTexEnvfv");
    }

    protected function glTexEnvfv_jo4(target:int, pname:int, params:Vector.<Number>, offset:int):void {
        this.gl10.glTexEnvfv(target, pname, params, offset);
    }

    protected function glTexEnvfv_jo3(target:int, pname:int, params:JFloatBuffer):void {
        this.gl10.glTexEnvfv(target, pname, params);
    }
    
    

    public function glTexImage2D(target:int, level:int, internalformat:int, width:int, height:int, border:int, format:int, type:int, pixels:JBuffer):void {
        this.gl10.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
    }
    

    public function glTexParameterf(target:int, pname:int, param:Number):void {
        this.gl10.glTexParameterf(target, pname, param);
    }
    

    public function glTexParameteri(target:int, pname:int, param:int):void {
        this.gl10.glTexParameteri(target, pname, param);
    }
    

    public function glTexSubImage2D(target:int, level:int, xoffset:int, yoffset:int, width:int, height:int, format:int, type:int, pixels:JBuffer):void {
        this.gl10.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
    }
    

    public function glTranslatef(x:Number, y:Number, z:Number):void {
        this.gl10.glTranslatef(x, y, z);
    }
    

    public function glVertexPointer(size:int, type:int, stride:int, pointer:JBuffer):void {
        this.gl10.glVertexPointer(size, type, stride, pointer);
    }
    

    public function glViewport(x:int, y:int, width:int, height:int):void {
        this.gl10.glViewport(x, y, width, height);
    }
    

    public function glBegin(i:int):void {
        this.gl10.glBegin(i);
    }
    

    public function glEnd():void {
        this.gl10.glEnd();
    }
    

    public function glVertex3f(f:Number, f2:Number, f3:Number):void {
        this.gl10.glVertex3f(f, f2, f3);
    }
    

    public function glPolygonMode(i:int, i1:int):void {
        this.gl10.glPolygonMode(i, i1);
    }
    }
}

