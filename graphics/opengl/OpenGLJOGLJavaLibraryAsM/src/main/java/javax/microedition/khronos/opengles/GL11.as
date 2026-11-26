// Generated Code Do Not Modify
package javax.microedition.khronos.opengles {
    import java.nio.JBuffer;
    import java.nio.JFloatBuffer;
    import java.nio.JIntBuffer;

    public interface GL11 extends GL10 {
    

    function glBindBuffer(target:int, buffer:int):void;
    

    function glBufferData(target:int, size:int, data:JBuffer, usage:int):void;
    

    function glBufferSubData(target:int, offset:int, size:int, data:JBuffer):void;
    

    function glClipPlanef(...args):void;
    
    

    function glColor4ub(red:int, green:int, blue:int, alpha:int):void;
    
    

    function glDeleteBuffers(...args):void;
    
    
    

    function glGenBuffers(...args):void;
    
    

    function glGetBufferParameteriv(...args):void;
    
    

    function glGetClipPlanef(...args):void;
    
    

    function glGetFloatv(...args):void;
    
    

    function glGetLightfv(...args):void;
    
    

    function glGetMaterialfv(...args):void;
    
    

    function glGetTexEnviv(...args):void;
    
    

    function glGetTexParameterfv(...args):void;
    
    

    function glGetTexParameteriv(...args):void;
    
    

    function glIsBuffer(buffer:int):Boolean;
    

    function glIsEnabled(cap:int):Boolean;
    

    function glIsTexture(texture:int):Boolean;
    
    

    function glPointParameterf(pname:int, param:Number):void;
    

    function glPointParameterfv(...args):void;
    
    
    

    function glTexEnvi(target:int, pname:int, param:int):void;
    

    function glTexEnviv(...args):void;
    
    

    function glTexParameterfv(...args):void;
    
    
    

    function glTexParameteriv(...args):void;
    
    
    }
}

