/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.device {
    import javax.microedition.khronos.opengles.GL10;
    import java.nio.JBuffer;
    import java.nio.JFloatBuffer;
    import java.nio.JIntBuffer;
    import org.allbinary.logic.string.StringUtil;

    public class NullGL10 implements GL10 {
    private static var NULL_GL10_value:NullGL10;
    private static var NULL_GL10_set:Boolean = false;
    public static function get NULL_GL10():NullGL10 {
        if (!NullGL10.NULL_GL10_set) {
            NullGL10.NULL_GL10_set = true;
            NullGL10.NULL_GL10_value = new NullGL10();
        }
        return NullGL10.NULL_GL10_value;
    }
    

    public function glActiveTexture(texture:int):void {
        return;
    }
    

    public function glAlphaFunc(func:int, ref:Number):void {
        return;
    }
    

    public function glBindTexture(target:int, texture:int):void {
        return;
    }
    

    public function glBlendFunc(sfactor:int, dfactor:int):void {
        return;
    }
    

    public function glClear(mask:int):void {
        return;
    }
    

    public function glClearColor(red:Number, green:Number, blue:Number, alpha:Number):void {
        return;
    }
    

    public function glClearDepthf(depth:Number):void {
        return;
    }
    

    public function glClearStencil(s:int):void {
        return;
    }
    

    public function glClientActiveTexture(texture:int):void {
        return;
    }
    

    public function glColor4f(red:Number, green:Number, blue:Number, alpha:Number):void {
        return;
    }
    

    public function glColorMask(red:Boolean, green:Boolean, blue:Boolean, alpha:Boolean):void {
        return;
    }
    

    public function glColorPointer(size:int, type:int, stride:int, pointer:JBuffer):void {
        return;
    }
    

    public function glCompressedTexImage2D(target:int, level:int, internalformat:int, width:int, height:int, border:int, imageSize:int, data:JBuffer):void {
        return;
    }
    

    public function glCompressedTexSubImage2D(target:int, level:int, xoffset:int, yoffset:int, width:int, height:int, format:int, imageSize:int, data:JBuffer):void {
        return;
    }
    

    public function glCopyTexImage2D(target:int, level:int, internalformat:int, x:int, y:int, width:int, height:int, border:int):void {
        return;
    }
    

    public function glCopyTexSubImage2D(target:int, level:int, xoffset:int, yoffset:int, x:int, y:int, width:int, height:int):void {
        return;
    }
    

    public function glCullFace(mode:int):void {
        return;
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
        return;
    }

    protected function glDeleteTextures_jo2(n:int, textures:JIntBuffer):void {
        return;
    }
    
    

    public function glDepthFunc(func:int):void {
        return;
    }
    

    public function glDepthMask(flag:Boolean):void {
        return;
    }
    

    public function glDepthRangef(zNear:Number, zFar:Number):void {
        return;
    }
    

    public function glDisable(cap:int):void {
        return;
    }
    

    public function glDisableClientState(array:int):void {
        return;
    }
    

    public function glDrawArrays(mode:int, first:int, count:int):void {
        return;
    }
    

    public function glDrawElements(mode:int, count:int, type:int, indices:JBuffer):void {
        return;
    }
    

    public function glEnable(cap:int):void {
        return;
    }
    

    public function glEnableClientState(array:int):void {
        return;
    }
    

    public function glFinish():void {
        return;
    }
    

    public function glFlush():void {
        return;
    }
    

    public function glFogf(pname:int, param:Number):void {
        return;
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
        return;
    }

    protected function glFogfv_jo2(pname:int, params:JFloatBuffer):void {
        return;
    }
    
    

    public function glFrontFace(mode:int):void {
        return;
    }
    

    public function glFrustumf(left:Number, right:Number, bottom:Number, top:Number, zNear:Number, zFar:Number):void {
        return;
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
        return;
    }

    protected function glGenTextures_jo2(n:int, textures:JIntBuffer):void {
        return;
    }
    
    

    public function glGetError():int {
        return 0;
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
        return;
    }

    protected function glGetIntegerv_jo2(pname:int, params:JIntBuffer):void {
        return;
    }
    
    

    public function glGetString(name:int):String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public function glHint(target:int, mode:int):void {
        return;
    }
    

    public function glLightModelf(pname:int, param:Number):void {
        return;
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
        return;
    }

    protected function glLightModelfv_jo2(pname:int, params:JFloatBuffer):void {
        return;
    }
    
    

    public function glLightf(light:int, pname:int, param:Number):void {
        return;
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
        return;
    }

    protected function glLightfv_jo3(light:int, pname:int, params:JFloatBuffer):void {
        return;
    }
    
    

    public function glLineWidth(width:Number):void {
        return;
    }
    

    public function glLoadIdentity():void {
        return;
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
        return;
    }

    protected function glLoadMatrixf_jo1(m:JFloatBuffer):void {
        return;
    }
    
    

    public function glLogicOp(opcode:int):void {
        return;
    }
    

    public function glMaterialf(face:int, pname:int, param:Number):void {
        return;
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
        return;
    }

    protected function glMaterialfv_jo3(face:int, pname:int, params:JFloatBuffer):void {
        return;
    }
    
    

    public function glMatrixMode(mode:int):void {
        return;
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
        return;
    }

    protected function glMultMatrixf_jo1(m:JFloatBuffer):void {
        return;
    }
    
    

    public function glMultiTexCoord4f(target:int, s:Number, t:Number, r:Number, q:Number):void {
        return;
    }
    

    public function glNormal3f(nx:Number, ny:Number, nz:Number):void {
        return;
    }
    

    public function glNormalPointer(type:int, stride:int, pointer:JBuffer):void {
        return;
    }
    

    public function glOrthof(left:Number, right:Number, bottom:Number, top:Number, zNear:Number, zFar:Number):void {
        return;
    }
    

    public function glPixelStorei(pname:int, param:int):void {
        return;
    }
    

    public function glPointSize(size:Number):void {
        return;
    }
    

    public function glPolygonOffset(factor:Number, units:Number):void {
        return;
    }
    

    public function glPopMatrix():void {
        return;
    }
    

    public function glPushMatrix():void {
        return;
    }
    

    public function glReadPixels(x:int, y:int, width:int, height:int, format:int, type:int, pixels:JBuffer):void {
        return;
    }
    

    public function glRotatef(angle:Number, x:Number, y:Number, z:Number):void {
        return;
    }
    

    public function glRotatex(angle:int, x:int, y:int, z:int):void {
        return;
    }
    

    public function glSampleCoverage(value:Number, invert:Boolean):void {
        return;
    }
    

    public function glScalef(x:Number, y:Number, z:Number):void {
        return;
    }
    

    public function glScalex(x:int, y:int, z:int):void {
        return;
    }
    

    public function glScissor(x:int, y:int, width:int, height:int):void {
        return;
    }
    

    public function glShadeModel(mode:int):void {
        return;
    }
    

    public function glStencilFunc(func:int, ref:int, mask:int):void {
        return;
    }
    

    public function glStencilMask(mask:int):void {
        return;
    }
    

    public function glStencilOp(fail:int, zfail:int, zpass:int):void {
        return;
    }
    

    public function glTexCoordPointer(size:int, type:int, stride:int, pointer:JBuffer):void {
        return;
    }
    

    public function glTexEnvf(target:int, pname:int, param:Number):void {
        return;
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
        return;
    }

    protected function glTexEnvfv_jo3(target:int, pname:int, params:JFloatBuffer):void {
        return;
    }
    
    

    public function glTexImage2D(target:int, level:int, internalformat:int, width:int, height:int, border:int, format:int, type:int, pixels:JBuffer):void {
        return;
    }
    

    public function glTexParameterf(target:int, pname:int, param:Number):void {
        return;
    }
    

    public function glTexParameteri(target:int, pname:int, param:int):void {
        return;
    }
    

    public function glTexSubImage2D(target:int, level:int, xoffset:int, yoffset:int, width:int, height:int, format:int, type:int, pixels:JBuffer):void {
        return;
    }
    

    public function glTranslatef(x:Number, y:Number, z:Number):void {
        return;
    }
    

    public function glVertexPointer(size:int, type:int, stride:int, pointer:JBuffer):void {
        return;
    }
    

    public function glViewport(x:int, y:int, width:int, height:int):void {
        return;
    }
    

    public function glBegin(i:int):void {
        return;
    }
    

    public function glEnd():void {
        return;
    }
    

    public function glVertex3f(f:Number, f2:Number, f3:Number):void {
        return;
    }
    

    public function glPolygonMode(i:int, i1:int):void {
        return;
    }
    }
}

