// Generated Code Do Not Modify
package javax.microedition.khronos.opengles {
    import java.nio.JBuffer;
    import java.nio.JFloatBuffer;
    import java.nio.JIntBuffer;

    public interface GL10 extends GL {
    

    function glActiveTexture(texture:int):void;
    

    function glAlphaFunc(func:int, ref:Number):void;
    

    function glBindTexture(target:int, texture:int):void;
    

    function glBlendFunc(sfactor:int, dfactor:int):void;
    

    function glClear(mask:int):void;
    

    function glClearColor(red:Number, green:Number, blue:Number, alpha:Number):void;
    

    function glClearDepthf(depth:Number):void;
    

    function glClearStencil(s:int):void;
    

    function glClientActiveTexture(texture:int):void;
    

    function glColor4f(red:Number, green:Number, blue:Number, alpha:Number):void;
    

    function glColorMask(red:Boolean, green:Boolean, blue:Boolean, alpha:Boolean):void;
    

    function glColorPointer(size:int, type:int, stride:int, pointer:JBuffer):void;
    

    function glCompressedTexImage2D(target:int, level:int, internalformat:int, width:int, height:int, border:int, imageSize:int, data:JBuffer):void;
    

    function glCompressedTexSubImage2D(target:int, level:int, xoffset:int, yoffset:int, width:int, height:int, format:int, imageSize:int, data:JBuffer):void;
    

    function glCopyTexImage2D(target:int, level:int, internalformat:int, x:int, y:int, width:int, height:int, border:int):void;
    

    function glCopyTexSubImage2D(target:int, level:int, xoffset:int, yoffset:int, x:int, y:int, width:int, height:int):void;
    

    function glCullFace(mode:int):void;
    

    function glDeleteTextures(...args):void;
    
    

    function glDepthFunc(func:int):void;
    

    function glDepthMask(flag:Boolean):void;
    

    function glDepthRangef(zNear:Number, zFar:Number):void;
    

    function glDisable(cap:int):void;
    

    function glDisableClientState(array:int):void;
    

    function glDrawArrays(mode:int, first:int, count:int):void;
    

    function glDrawElements(mode:int, count:int, type:int, indices:JBuffer):void;
    

    function glEnable(cap:int):void;
    

    function glEnableClientState(array:int):void;
    

    function glFinish():void;
    

    function glFlush():void;
    

    function glFogf(pname:int, param:Number):void;
    

    function glFogfv(...args):void;
    
    

    function glFrontFace(mode:int):void;
    

    function glFrustumf(left:Number, right:Number, bottom:Number, top:Number, zNear:Number, zFar:Number):void;
    

    function glGenTextures(...args):void;
    
    

    function glGetError():int;
    

    function glGetIntegerv(...args):void;
    
    

    function glGetString(name:int):String;
    

    function glHint(target:int, mode:int):void;
    

    function glLightModelf(pname:int, param:Number):void;
    

    function glLightModelfv(...args):void;
    
    

    function glLightf(light:int, pname:int, param:Number):void;
    

    function glLightfv(...args):void;
    
    

    function glLineWidth(width:Number):void;
    

    function glLoadIdentity():void;
    

    function glLoadMatrixf(...args):void;
    
    

    function glLogicOp(opcode:int):void;
    

    function glMaterialf(face:int, pname:int, param:Number):void;
    

    function glMaterialfv(...args):void;
    
    

    function glMatrixMode(mode:int):void;
    

    function glMultMatrixf(...args):void;
    
    

    function glMultiTexCoord4f(target:int, s:Number, t:Number, r:Number, q:Number):void;
    

    function glNormal3f(nx:Number, ny:Number, nz:Number):void;
    

    function glNormalPointer(type:int, stride:int, pointer:JBuffer):void;
    

    function glOrthof(left:Number, right:Number, bottom:Number, top:Number, zNear:Number, zFar:Number):void;
    

    function glPixelStorei(pname:int, param:int):void;
    

    function glPointSize(size:Number):void;
    

    function glPolygonOffset(factor:Number, units:Number):void;
    

    function glPopMatrix():void;
    

    function glPushMatrix():void;
    

    function glReadPixels(x:int, y:int, width:int, height:int, format:int, type:int, pixels:JBuffer):void;
    

    function glRotatef(angle:Number, x:Number, y:Number, z:Number):void;
    

    function glRotatex(angle:int, x:int, y:int, z:int):void;
    

    function glSampleCoverage(value:Number, invert:Boolean):void;
    

    function glScalef(x:Number, y:Number, z:Number):void;
    

    function glScalex(x:int, y:int, z:int):void;
    

    function glScissor(x:int, y:int, width:int, height:int):void;
    

    function glShadeModel(mode:int):void;
    

    function glStencilFunc(func:int, ref:int, mask:int):void;
    

    function glStencilMask(mask:int):void;
    

    function glStencilOp(fail:int, zfail:int, zpass:int):void;
    

    function glTexCoordPointer(size:int, type:int, stride:int, pointer:JBuffer):void;
    

    function glTexEnvf(target:int, pname:int, param:Number):void;
    

    function glTexEnvfv(...args):void;
    
    

    function glTexImage2D(target:int, level:int, internalformat:int, width:int, height:int, border:int, format:int, type:int, pixels:JBuffer):void;
    

    function glTexParameterf(target:int, pname:int, param:Number):void;
    

    function glTexParameteri(target:int, pname:int, param:int):void;
    

    function glTexSubImage2D(target:int, level:int, xoffset:int, yoffset:int, width:int, height:int, format:int, type:int, pixels:JBuffer):void;
    

    function glTranslatef(x:Number, y:Number, z:Number):void;
    

    function glVertexPointer(size:int, type:int, stride:int, pointer:JBuffer):void;
    

    function glViewport(x:int, y:int, width:int, height:int):void;
    

    function glBegin(i:int):void;
    

    function glEnd():void;
    

    function glVertex3f(f:Number, f2:Number, f3:Number):void;
    

    function glPolygonMode(i:int, i1:int):void;
    }
}

