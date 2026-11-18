// Generated Code Do Not Modify
package javax.microedition.khronos.opengles {
    import java.nio.JBuffer;
    import java.nio.JFloatBuffer;
    import java.nio.JIntBuffer;

    public interface GL10 extends GL {
    public static const GL_ADD:int = 260;
    public static const GL_ALIASED_LINE_WIDTH_RANGE:int = 33902;
    public static const GL_ALIASED_POINT_SIZE_RANGE:int = 33901;
    public static const GL_ALPHA:int = 6406;
    public static const GL_ALPHA_BITS:int = 3413;
    public static const GL_ALPHA_TEST:int = 3008;
    public static const GL_ALWAYS:int = 519;
    public static const GL_AMBIENT:int = 4608;
    public static const GL_AMBIENT_AND_DIFFUSE:int = 5634;
    public static const GL_AND:int = 5377;
    public static const GL_AND_INVERTED:int = 5380;
    public static const GL_AND_REVERSE:int = 5378;
    public static const GL_BACK:int = 1029;
    public static const GL_BLEND:int = 3042;
    public static const GL_BLUE_BITS:int = 3412;
    public static const GL_BYTE:int = 5120;
    public static const GL_CCW:int = 2305;
    public static const GL_CLAMP_TO_EDGE:int = 33071;
    public static const GL_CLEAR:int = 5376;
    public static const GL_COLOR_ARRAY:int = 32886;
    public static const GL_COLOR_BUFFER_BIT:int = 16384;
    public static const GL_COLOR_LOGIC_OP:int = 3058;
    public static const GL_COLOR_MATERIAL:int = 2903;
    public static const GL_COMPRESSED_TEXTURE_FORMATS:int = 34467;
    public static const GL_CONSTANT_ATTENUATION:int = 4615;
    public static const GL_COPY:int = 5379;
    public static const GL_COPY_INVERTED:int = 5388;
    public static const GL_CULL_FACE:int = 2884;
    public static const GL_CW:int = 2304;
    public static const GL_DECAL:int = 8449;
    public static const GL_DECR:int = 7683;
    public static const GL_DEPTH_BITS:int = 3414;
    public static const GL_DEPTH_BUFFER_BIT:int = 256;
    public static const GL_DEPTH_TEST:int = 2929;
    public static const GL_DIFFUSE:int = 4609;
    public static const GL_DITHER:int = 3024;
    public static const GL_DONT_CARE:int = 4352;
    public static const GL_DST_ALPHA:int = 772;
    public static const GL_DST_COLOR:int = 774;
    public static const GL_EMISSION:int = 5632;
    public static const GL_EQUAL:int = 514;
    public static const GL_EQUIV:int = 5385;
    public static const GL_EXP:int = 2048;
    public static const GL_EXP2:int = 2049;
    public static const GL_EXTENSIONS:int = 7939;
    public static const GL_FALSE:int = 0;
    public static const GL_FASTEST:int = 4353;
    public static const GL_FIXED:int = 5132;
    public static const GL_FLAT:int = 7424;
    public static const GL_FLOAT:int = 5126;
    public static const GL_FOG:int = 2912;
    public static const GL_FOG_COLOR:int = 2918;
    public static const GL_FOG_DENSITY:int = 2914;
    public static const GL_FOG_END:int = 2916;
    public static const GL_FOG_HINT:int = 3156;
    public static const GL_FOG_MODE:int = 2917;
    public static const GL_FOG_START:int = 2915;
    public static const GL_FRONT:int = 1028;
    public static const GL_FRONT_AND_BACK:int = 1032;
    public static const GL_GEQUAL:int = 518;
    public static const GL_GREATER:int = 516;
    public static const GL_GREEN_BITS:int = 3411;
    public static const GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES:int = 35739;
    public static const GL_IMPLEMENTATION_COLOR_READ_TYPE_OES:int = 35738;
    public static const GL_INCR:int = 7682;
    public static const GL_INVALID_ENUM:int = 1280;
    public static const GL_INVALID_OPERATION:int = 1282;
    public static const GL_INVALID_VALUE:int = 1281;
    public static const GL_INVERT:int = 5386;
    public static const GL_KEEP:int = 7680;
    public static const GL_LEQUAL:int = 515;
    public static const GL_LESS:int = 513;
    public static const GL_LIGHT_MODEL_AMBIENT:int = 2899;
    public static const GL_LIGHT_MODEL_TWO_SIDE:int = 2898;
    public static const GL_LIGHT0:int = 16384;
    public static const GL_LIGHT1:int = 16385;
    public static const GL_LIGHT2:int = 16386;
    public static const GL_LIGHT3:int = 16387;
    public static const GL_LIGHT4:int = 16388;
    public static const GL_LIGHT5:int = 16389;
    public static const GL_LIGHT6:int = 16390;
    public static const GL_LIGHT7:int = 16391;
    public static const GL_LIGHTING:int = 2896;
    public static const GL_LINE_LOOP:int = 2;
    public static const GL_LINE_SMOOTH:int = 2848;
    public static const GL_LINE_SMOOTH_HINT:int = 3154;
    public static const GL_LINE_STRIP:int = 3;
    public static const GL_LINEAR:int = 9729;
    public static const GL_LINEAR_ATTENUATION:int = 4616;
    public static const GL_LINEAR_MIPMAP_LINEAR:int = 9987;
    public static const GL_LINEAR_MIPMAP_NEAREST:int = 9985;
    public static const GL_LINES:int = 1;
    public static const GL_LUMINANCE:int = 6409;
    public static const GL_LUMINANCE_ALPHA:int = 6410;
    public static const GL_MAX_ELEMENTS_INDICES:int = 33001;
    public static const GL_MAX_ELEMENTS_VERTICES:int = 33000;
    public static const GL_MAX_LIGHTS:int = 3377;
    public static const GL_MAX_MODELVIEW_STACK_DEPTH:int = 3382;
    public static const GL_MAX_PROJECTION_STACK_DEPTH:int = 3384;
    public static const GL_MAX_TEXTURE_SIZE:int = 3379;
    public static const GL_MAX_TEXTURE_STACK_DEPTH:int = 3385;
    public static const GL_MAX_TEXTURE_UNITS:int = 34018;
    public static const GL_MAX_VIEWPORT_DIMS:int = 3386;
    public static const GL_MODELVIEW:int = 5888;
    public static const GL_MODULATE:int = 8448;
    public static const GL_MULTISAMPLE:int = 32925;
    public static const GL_NAND:int = 5390;
    public static const GL_NEAREST:int = 9728;
    public static const GL_NEAREST_MIPMAP_LINEAR:int = 9986;
    public static const GL_NEAREST_MIPMAP_NEAREST:int = 9984;
    public static const GL_NEVER:int = 512;
    public static const GL_NICEST:int = 4354;
    public static const GL_NO_ERROR:int = 0;
    public static const GL_NOOP:int = 5381;
    public static const GL_NOR:int = 5384;
    public static const GL_NORMAL_ARRAY:int = 32885;
    public static const GL_NORMALIZE:int = 2977;
    public static const GL_NOTEQUAL:int = 517;
    public static const GL_NUM_COMPRESSED_TEXTURE_FORMATS:int = 34466;
    public static const GL_ONE:int = 1;
    public static const GL_ONE_MINUS_DST_ALPHA:int = 773;
    public static const GL_ONE_MINUS_DST_COLOR:int = 775;
    public static const GL_ONE_MINUS_SRC_ALPHA:int = 771;
    public static const GL_ONE_MINUS_SRC_COLOR:int = 769;
    public static const GL_OR:int = 5383;
    public static const GL_OR_INVERTED:int = 5389;
    public static const GL_OR_REVERSE:int = 5387;
    public static const GL_OUT_OF_MEMORY:int = 1285;
    public static const GL_PACK_ALIGNMENT:int = 3333;
    public static const GL_PALETTE4_R5_G6_B5_OES:int = 35730;
    public static const GL_PALETTE4_RGB5_A1_OES:int = 35732;
    public static const GL_PALETTE4_RGB8_OES:int = 35728;
    public static const GL_PALETTE4_RGBA4_OES:int = 35731;
    public static const GL_PALETTE4_RGBA8_OES:int = 35729;
    public static const GL_PALETTE8_R5_G6_B5_OES:int = 35735;
    public static const GL_PALETTE8_RGB5_A1_OES:int = 35737;
    public static const GL_PALETTE8_RGB8_OES:int = 35733;
    public static const GL_PALETTE8_RGBA4_OES:int = 35736;
    public static const GL_PALETTE8_RGBA8_OES:int = 35734;
    public static const GL_PERSPECTIVE_CORRECTION_HINT:int = 3152;
    public static const GL_POINT_SMOOTH:int = 2832;
    public static const GL_POINT_SMOOTH_HINT:int = 3153;
    public static const GL_POINTS:int = 0;
    public static const GL_POINT_FADE_THRESHOLD_SIZE:int = 33064;
    public static const GL_POINT_SIZE:int = 2833;
    public static const GL_POLYGON_OFFSET_FILL:int = 32823;
    public static const GL_POLYGON_SMOOTH_HINT:int = 3155;
    public static const GL_POSITION:int = 4611;
    public static const GL_PROJECTION:int = 5889;
    public static const GL_QUADRATIC_ATTENUATION:int = 4617;
    public static const GL_RED_BITS:int = 3410;
    public static const GL_RENDERER:int = 7937;
    public static const GL_REPEAT:int = 10497;
    public static const GL_REPLACE:int = 7681;
    public static const GL_RESCALE_NORMAL:int = 32826;
    public static const GL_RGB:int = 6407;
    public static const GL_RGBA:int = 6408;
    public static const GL_SAMPLE_ALPHA_TO_COVERAGE:int = 32926;
    public static const GL_SAMPLE_ALPHA_TO_ONE:int = 32927;
    public static const GL_SAMPLE_COVERAGE:int = 32928;
    public static const GL_SCISSOR_TEST:int = 3089;
    public static const GL_SET:int = 5391;
    public static const GL_SHININESS:int = 5633;
    public static const GL_SHORT:int = 5122;
    public static const GL_SMOOTH:int = 7425;
    public static const GL_SMOOTH_LINE_WIDTH_RANGE:int = 2850;
    public static const GL_SMOOTH_POINT_SIZE_RANGE:int = 2834;
    public static const GL_SPECULAR:int = 4610;
    public static const GL_SPOT_CUTOFF:int = 4614;
    public static const GL_SPOT_DIRECTION:int = 4612;
    public static const GL_SPOT_EXPONENT:int = 4613;
    public static const GL_SRC_ALPHA:int = 770;
    public static const GL_SRC_ALPHA_SATURATE:int = 776;
    public static const GL_SRC_COLOR:int = 768;
    public static const GL_STACK_OVERFLOW:int = 1283;
    public static const GL_STACK_UNDERFLOW:int = 1284;
    public static const GL_STENCIL_BITS:int = 3415;
    public static const GL_STENCIL_BUFFER_BIT:int = 1024;
    public static const GL_STENCIL_TEST:int = 2960;
    public static const GL_SUBPIXEL_BITS:int = 3408;
    public static const GL_TEXTURE:int = 5890;
    public static const GL_TEXTURE_2D:int = 3553;
    public static const GL_TEXTURE_COORD_ARRAY:int = 32888;
    public static const GL_TEXTURE_ENV:int = 8960;
    public static const GL_TEXTURE_ENV_COLOR:int = 8705;
    public static const GL_TEXTURE_ENV_MODE:int = 8704;
    public static const GL_TEXTURE_MAG_FILTER:int = 10240;
    public static const GL_TEXTURE_MIN_FILTER:int = 10241;
    public static const GL_TEXTURE_WRAP_S:int = 10242;
    public static const GL_TEXTURE_WRAP_T:int = 10243;
    public static const GL_TEXTURE0:int = 33984;
    public static const GL_TEXTURE1:int = 33985;
    public static const GL_TEXTURE2:int = 33986;
    public static const GL_TEXTURE3:int = 33987;
    public static const GL_TEXTURE4:int = 33988;
    public static const GL_TEXTURE5:int = 33989;
    public static const GL_TEXTURE6:int = 33990;
    public static const GL_TEXTURE7:int = 33991;
    public static const GL_TEXTURE8:int = 33992;
    public static const GL_TEXTURE9:int = 33993;
    public static const GL_TEXTURE10:int = 33994;
    public static const GL_TEXTURE11:int = 33995;
    public static const GL_TEXTURE12:int = 33996;
    public static const GL_TEXTURE13:int = 33997;
    public static const GL_TEXTURE14:int = 33998;
    public static const GL_TEXTURE15:int = 33999;
    public static const GL_TEXTURE16:int = 34000;
    public static const GL_TEXTURE17:int = 34001;
    public static const GL_TEXTURE18:int = 34002;
    public static const GL_TEXTURE19:int = 34003;
    public static const GL_TEXTURE20:int = 34004;
    public static const GL_TEXTURE21:int = 34005;
    public static const GL_TEXTURE22:int = 34006;
    public static const GL_TEXTURE23:int = 34007;
    public static const GL_TEXTURE24:int = 34008;
    public static const GL_TEXTURE25:int = 34009;
    public static const GL_TEXTURE26:int = 34010;
    public static const GL_TEXTURE27:int = 34011;
    public static const GL_TEXTURE28:int = 34012;
    public static const GL_TEXTURE29:int = 34013;
    public static const GL_TEXTURE30:int = 34014;
    public static const GL_TEXTURE31:int = 34015;
    public static const GL_TRIANGLE_FAN:int = 6;
    public static const GL_TRIANGLE_STRIP:int = 5;
    public static const GL_TRIANGLES:int = 4;
    public static const GL_TRUE:int = 1;
    public static const GL_UNPACK_ALIGNMENT:int = 3317;
    public static const GL_UNSIGNED_BYTE:int = 5121;
    public static const GL_UNSIGNED_SHORT:int = 5123;
    public static const GL_UNSIGNED_SHORT_4_4_4_4:int = 32819;
    public static const GL_UNSIGNED_SHORT_5_5_5_1:int = 32820;
    public static const GL_UNSIGNED_SHORT_5_6_5:int = 33635;
    public static const GL_VENDOR:int = 7936;
    public static const GL_VERSION:int = 7938;
    public static const GL_VERTEX_ARRAY:int = 32884;
    public static const GL_XOR:int = 5382;
    public static const GL_ZERO:int = 0;
    

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
    

    function glColorPointer(size:int, type:int, stride:int, pointer:Buffer):void;
    

    function glCompressedTexImage2D(target:int, level:int, internalformat:int, width:int, height:int, border:int, imageSize:int, data:Buffer):void;
    

    function glCompressedTexSubImage2D(target:int, level:int, xoffset:int, yoffset:int, width:int, height:int, format:int, imageSize:int, data:Buffer):void;
    

    function glCopyTexImage2D(target:int, level:int, internalformat:int, x:int, y:int, width:int, height:int, border:int):void;
    

    function glCopyTexSubImage2D(target:int, level:int, xoffset:int, yoffset:int, x:int, y:int, width:int, height:int):void;
    

    function glCullFace(mode:int):void;
    

    function glDeleteTextures(n:int, textures:Vector.<int>, offset:int):void;
    

    function glDeleteTextures(n:int, textures:IntBuffer):void;
    

    function glDepthFunc(func:int):void;
    

    function glDepthMask(flag:Boolean):void;
    

    function glDepthRangef(zNear:Number, zFar:Number):void;
    

    function glDisable(cap:int):void;
    

    function glDisableClientState(array:int):void;
    

    function glDrawArrays(mode:int, first:int, count:int):void;
    

    function glDrawElements(mode:int, count:int, type:int, indices:Buffer):void;
    

    function glEnable(cap:int):void;
    

    function glEnableClientState(array:int):void;
    

    function glFinish():void;
    

    function glFlush():void;
    

    function glFogf(pname:int, param:Number):void;
    

    function glFogfv(pname:int, params:Vector.<Number>, offset:int):void;
    

    function glFogfv(pname:int, params:FloatBuffer):void;
    

    function glFrontFace(mode:int):void;
    

    function glFrustumf(left:Number, right:Number, bottom:Number, top:Number, zNear:Number, zFar:Number):void;
    

    function glGenTextures(n:int, textures:Vector.<int>, offset:int):void;
    

    function glGenTextures(n:int, textures:IntBuffer):void;
    

    function glGetError():int;
    

    function glGetIntegerv(pname:int, params:Vector.<int>, offset:int):void;
    

    function glGetIntegerv(pname:int, params:IntBuffer):void;
    

    function glGetString(name:int):String;
    

    function glHint(target:int, mode:int):void;
    

    function glLightModelf(pname:int, param:Number):void;
    

    function glLightModelfv(pname:int, params:Vector.<Number>, offset:int):void;
    

    function glLightModelfv(pname:int, params:FloatBuffer):void;
    

    function glLightf(light:int, pname:int, param:Number):void;
    

    function glLightfv(light:int, pname:int, params:Vector.<Number>, offset:int):void;
    

    function glLightfv(light:int, pname:int, params:FloatBuffer):void;
    

    function glLineWidth(width:Number):void;
    

    function glLoadIdentity():void;
    

    function glLoadMatrixf(m:Vector.<Number>, offset:int):void;
    

    function glLoadMatrixf(m:FloatBuffer):void;
    

    function glLogicOp(opcode:int):void;
    

    function glMaterialf(face:int, pname:int, param:Number):void;
    

    function glMaterialfv(face:int, pname:int, params:Vector.<Number>, offset:int):void;
    

    function glMaterialfv(face:int, pname:int, params:FloatBuffer):void;
    

    function glMatrixMode(mode:int):void;
    

    function glMultMatrixf(m:Vector.<Number>, offset:int):void;
    

    function glMultMatrixf(m:FloatBuffer):void;
    

    function glMultiTexCoord4f(target:int, s:Number, t:Number, r:Number, q:Number):void;
    

    function glNormal3f(nx:Number, ny:Number, nz:Number):void;
    

    function glNormalPointer(type:int, stride:int, pointer:Buffer):void;
    

    function glOrthof(left:Number, right:Number, bottom:Number, top:Number, zNear:Number, zFar:Number):void;
    

    function glPixelStorei(pname:int, param:int):void;
    

    function glPointSize(size:Number):void;
    

    function glPolygonOffset(factor:Number, units:Number):void;
    

    function glPopMatrix():void;
    

    function glPushMatrix():void;
    

    function glReadPixels(x:int, y:int, width:int, height:int, format:int, type:int, pixels:Buffer):void;
    

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
    

    function glTexCoordPointer(size:int, type:int, stride:int, pointer:Buffer):void;
    

    function glTexEnvf(target:int, pname:int, param:Number):void;
    

    function glTexEnvfv(target:int, pname:int, params:Vector.<Number>, offset:int):void;
    

    function glTexEnvfv(target:int, pname:int, params:FloatBuffer):void;
    

    function glTexImage2D(target:int, level:int, internalformat:int, width:int, height:int, border:int, format:int, type:int, pixels:Buffer):void;
    

    function glTexParameterf(target:int, pname:int, param:Number):void;
    

    function glTexParameteri(target:int, pname:int, param:int):void;
    

    function glTexSubImage2D(target:int, level:int, xoffset:int, yoffset:int, width:int, height:int, format:int, type:int, pixels:Buffer):void;
    

    function glTranslatef(x:Number, y:Number, z:Number):void;
    

    function glVertexPointer(size:int, type:int, stride:int, pointer:Buffer):void;
    

    function glViewport(x:int, y:int, width:int, height:int):void;
    

    function glBegin(i:int):void;
    

    function glEnd():void;
    

    function glVertex3f(f:Number, f2:Number, f3:Number):void;
    

    function glPolygonMode(i:int, i1:int):void;
    }
}

