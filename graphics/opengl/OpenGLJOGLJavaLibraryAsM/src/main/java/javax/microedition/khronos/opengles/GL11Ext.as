// Generated Code Do Not Modify
package javax.microedition.khronos.opengles {

    public interface GL11Ext extends GL {
    public static const GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES:int = 35742;
    public static const GL_MATRIX_INDEX_ARRAY_OES:int = 34884;
    public static const GL_MATRIX_INDEX_ARRAY_POINTER_OES:int = 34889;
    public static const GL_MATRIX_INDEX_ARRAY_SIZE_OES:int = 34886;
    public static const GL_MATRIX_INDEX_ARRAY_STRIDE_OES:int = 34888;
    public static const GL_MATRIX_INDEX_ARRAY_TYPE_OES:int = 34887;
    public static const GL_MATRIX_PALETTE_OES:int = 34880;
    public static const GL_MAX_PALETTE_MATRICES_OES:int = 34882;
    public static const GL_MAX_VERTEX_UNITS_OES:int = 34468;
    public static const GL_TEXTURE_CROP_RECT_OES:int = 35741;
    public static const GL_WEIGHT_ARRAY_BUFFER_BINDING_OES:int = 34974;
    public static const GL_WEIGHT_ARRAY_OES:int = 34477;
    public static const GL_WEIGHT_ARRAY_POINTER_OES:int = 34476;
    public static const GL_WEIGHT_ARRAY_SIZE_OES:int = 34475;
    public static const GL_WEIGHT_ARRAY_STRIDE_OES:int = 34474;
    public static const GL_WEIGHT_ARRAY_TYPE_OES:int = 34473;
    

    function glTexParameterfv(target:int, pname:int, param:Vector.<Number>, offset:int):void;
    

    function glCurrentPaletteMatrixOES(matrixpaletteindex:int):void;
    

    function glDrawTexfOES(x:Number, y:Number, z:Number, width:Number, height:Number):void;
    

    function glDrawTexfvOES(coords:Vector.<Number>, offset:int):void;
    

    function glDrawTexfvOES(coords:FloatBuffer):void;
    

    function glDrawTexiOES(x:int, y:int, z:int, width:int, height:int):void;
    

    function glDrawTexivOES(coords:Vector.<int>, offset:int):void;
    

    function glDrawTexivOES(coords:IntBuffer):void;
    

    function glDrawTexsOES(x:int, y:int, z:int, width:int, height:int):void;
    

    function glDrawTexsvOES(coords:Vector.<int>, offset:int):void;
    

    function glDrawTexsvOES(coords:ShortBuffer):void;
    

    function glDrawTexxOES(x:int, y:int, z:int, width:int, height:int):void;
    

    function glDrawTexxvOES(coords:Vector.<int>, offset:int):void;
    

    function glDrawTexxvOES(coords:IntBuffer):void;
    

    function glEnable(cap:int):void;
    

    function glEnableClientState(array:int):void;
    

    function glLoadPaletteFromModelViewMatrixOES():void;
    

    function glMatrixIndexPointerOES(size:int, type:int, stride:int, pointer:Buffer):void;
    

    function glMatrixIndexPointerOES(size:int, type:int, stride:int, offset:int):void;
    

    function glWeightPointerOES(size:int, type:int, stride:int, pointer:Buffer):void;
    

    function glWeightPointerOES(size:int, type:int, stride:int, offset:int):void;
    }
}

