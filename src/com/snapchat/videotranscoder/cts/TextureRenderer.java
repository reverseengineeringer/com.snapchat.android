package com.snapchat.videotranscoder.cts;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import cgb;
import com.snapchat.videotranscoder.utils.Debug;
import com.snapchat.videotranscoder.utils.TranscodingResources;
import com.snapchat.videotranscoder.utils.Utils;
import com.snapchat.videotranscoder.video.FragmentShader;
import com.snapchat.videotranscoder.video.FragmentShader.Builder;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;
import com.snapchat.videotranscoder.video.VertexShader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Map;

class TextureRenderer
{
  protected static final int FLOAT_SIZE_BYTES = 4;
  protected static final float[] QUAD_VERTICES_DATA = { -1.0F, -1.0F, 0.0F, 0.0F, 0.0F, 1.0F, -1.0F, 0.0F, 1.0F, 0.0F, -1.0F, 1.0F, 0.0F, 0.0F, 1.0F, 1.0F, 1.0F, 0.0F, 1.0F, 1.0F };
  protected static final int QUAD_VERTICES_DATA_POS_OFFSET = 0;
  protected static final int QUAD_VERTICES_DATA_STRIDE_BYTES = 20;
  protected static final int QUAD_VERTICES_DATA_UV_OFFSET = 3;
  private static final String TAG = "TextureRenderer";
  protected int mCurrentShader = -1;
  protected int mExternalTextureID = 53191;
  protected boolean mIsInitialized = false;
  protected float[] mMVPMatrix = new float[16];
  protected int mMissEtikateLookupTextureID = 53191;
  private Bitmap mOverlayBitmap = null;
  protected int mOverlayTextureID = 53191;
  protected int mProgram;
  protected FloatBuffer mQuadVertices;
  protected final float[] mSTMatrix;
  protected final TranscodingResources mTranscodingResources;
  protected int maPositionHandle;
  protected int maTextureHandle;
  protected int muMVPMatrixHandle;
  protected int muSTMatrixHandle;
  protected Map<String, Integer> shaderMap = new HashMap();
  
  public TextureRenderer(@cgb TranscodingResources paramTranscodingResources, @cgb float[] paramArrayOfFloat)
  {
    if (paramTranscodingResources == null) {
      throw new NullPointerException("transcodingResources is null");
    }
    if (paramArrayOfFloat == null) {
      throw new NullPointerException("transformationMatrix is null");
    }
    if (paramArrayOfFloat.length != 16) {
      throw new IllegalArgumentException("transformationMatrix must be a a 4x4 matrix of length 16");
    }
    mTranscodingResources = paramTranscodingResources;
    mSTMatrix = paramArrayOfFloat;
    mQuadVertices = ByteBuffer.allocateDirect(QUAD_VERTICES_DATA.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    mQuadVertices.put(QUAD_VERTICES_DATA).position(0);
  }
  
  private void loadFragmentShaders()
  {
    FragmentShader.Filter[] arrayOfFilter1 = FragmentShader.Filter.values();
    int k = arrayOfFilter1.length;
    int i = 0;
    while (i < k)
    {
      FragmentShader.Filter localFilter1 = arrayOfFilter1[i];
      loadShader(35632, new FragmentShader.Builder(mTranscodingResources).setFilter(localFilter1).build().getText());
      loadShader(35632, new FragmentShader.Builder(mTranscodingResources).enableOverlay(true).setFilter(localFilter1).build().getText());
      FragmentShader.Filter[] arrayOfFilter2 = FragmentShader.Filter.values();
      int m = arrayOfFilter2.length;
      int j = 0;
      while (j < m)
      {
        FragmentShader.Filter localFilter2 = arrayOfFilter2[j];
        loadShader(35632, new FragmentShader.Builder(mTranscodingResources).enableSplit(true).setLeftFilter(localFilter1).setRightFilter(localFilter2).build().getText());
        j += 1;
      }
      i += 1;
    }
  }
  
  private int loadShader(int paramInt, String paramString)
  {
    int i = GLES20.glCreateShader(paramInt);
    checkGlError("glCreateShader type=" + paramInt);
    GLES20.glShaderSource(i, paramString);
    GLES20.glCompileShader(i);
    int[] arrayOfInt = new int[1];
    GLES20.glGetShaderiv(i, 35713, arrayOfInt, 0);
    if (arrayOfInt[0] == 0)
    {
      new StringBuilder("Could not compile shader ").append(paramInt).append(":");
      new StringBuilder(" ").append(GLES20.glGetShaderInfoLog(i));
      Utils.getInstance().printShaderSource(i);
      GLES20.glDeleteShader(i);
      throw new RuntimeException("Could not compile shader");
    }
    shaderMap.put(paramString, Integer.valueOf(i));
    return i;
  }
  
  /* Error */
  public static void saveFrame(String paramString, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: iload_1
    //   3: iload_2
    //   4: imul
    //   5: iconst_4
    //   6: imul
    //   7: invokestatic 95	java/nio/ByteBuffer:allocateDirect	(I)Ljava/nio/ByteBuffer;
    //   10: astore 6
    //   12: aload 6
    //   14: getstatic 249	java/nio/ByteOrder:LITTLE_ENDIAN	Ljava/nio/ByteOrder;
    //   17: invokevirtual 105	java/nio/ByteBuffer:order	(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    //   20: pop
    //   21: iconst_0
    //   22: iconst_0
    //   23: iload_1
    //   24: iload_2
    //   25: sipush 6408
    //   28: sipush 5121
    //   31: aload 6
    //   33: invokestatic 253	android/opengl/GLES20:glReadPixels	(IIIIIILjava/nio/Buffer;)V
    //   36: aload 6
    //   38: invokevirtual 257	java/nio/ByteBuffer:rewind	()Ljava/nio/Buffer;
    //   41: pop
    //   42: iload_1
    //   43: iload_2
    //   44: imul
    //   45: istore 4
    //   47: iload 4
    //   49: newarray <illegal type>
    //   51: astore 8
    //   53: aload 6
    //   55: invokevirtual 261	java/nio/ByteBuffer:asIntBuffer	()Ljava/nio/IntBuffer;
    //   58: aload 8
    //   60: invokevirtual 267	java/nio/IntBuffer:get	([I)Ljava/nio/IntBuffer;
    //   63: pop
    //   64: iload_3
    //   65: iload 4
    //   67: if_icmpge +46 -> 113
    //   70: aload 8
    //   72: iload_3
    //   73: iaload
    //   74: istore 5
    //   76: aload 8
    //   78: iload_3
    //   79: iload 5
    //   81: sipush 255
    //   84: iand
    //   85: bipush 16
    //   87: ishl
    //   88: ldc_w 268
    //   91: iload 5
    //   93: iand
    //   94: ldc_w 269
    //   97: iload 5
    //   99: iand
    //   100: bipush 16
    //   102: ishr
    //   103: ior
    //   104: ior
    //   105: iastore
    //   106: iload_3
    //   107: iconst_1
    //   108: iadd
    //   109: istore_3
    //   110: goto -46 -> 64
    //   113: new 271	java/io/FileOutputStream
    //   116: dup
    //   117: aload_0
    //   118: invokespecial 272	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   121: astore 7
    //   123: aload 7
    //   125: astore 6
    //   127: aload 8
    //   129: iload_1
    //   130: iload_2
    //   131: getstatic 278	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   134: invokestatic 284	android/graphics/Bitmap:createBitmap	([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   137: astore 8
    //   139: aload 7
    //   141: astore 6
    //   143: aload 8
    //   145: getstatic 290	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   148: bipush 90
    //   150: aload 7
    //   152: invokevirtual 294	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   155: pop
    //   156: aload 7
    //   158: astore 6
    //   160: aload 8
    //   162: invokevirtual 297	android/graphics/Bitmap:recycle	()V
    //   165: aload 7
    //   167: invokevirtual 300	java/io/FileOutputStream:close	()V
    //   170: new 174	java/lang/StringBuilder
    //   173: dup
    //   174: ldc_w 302
    //   177: invokespecial 177	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   180: iload_1
    //   181: invokevirtual 181	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   184: ldc_w 304
    //   187: invokevirtual 207	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: iload_2
    //   191: invokevirtual 181	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   194: ldc_w 306
    //   197: invokevirtual 207	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: aload_0
    //   201: invokevirtual 207	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: ldc_w 308
    //   207: invokevirtual 207	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   210: pop
    //   211: return
    //   212: astore 6
    //   214: new 227	java/lang/RuntimeException
    //   217: dup
    //   218: new 174	java/lang/StringBuilder
    //   221: dup
    //   222: ldc_w 310
    //   225: invokespecial 177	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   228: aload_0
    //   229: invokevirtual 207	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: invokevirtual 184	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   235: aload 6
    //   237: invokespecial 313	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   240: athrow
    //   241: astore 8
    //   243: aconst_null
    //   244: astore 6
    //   246: new 227	java/lang/RuntimeException
    //   249: dup
    //   250: new 174	java/lang/StringBuilder
    //   253: dup
    //   254: ldc_w 315
    //   257: invokespecial 177	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   260: aload_0
    //   261: invokevirtual 207	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: invokevirtual 184	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   267: aload 8
    //   269: invokespecial 313	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   272: athrow
    //   273: astore 8
    //   275: aload 6
    //   277: astore 7
    //   279: aload 8
    //   281: astore 6
    //   283: aload 7
    //   285: ifnull +8 -> 293
    //   288: aload 7
    //   290: invokevirtual 300	java/io/FileOutputStream:close	()V
    //   293: aload 6
    //   295: athrow
    //   296: astore 6
    //   298: new 227	java/lang/RuntimeException
    //   301: dup
    //   302: new 174	java/lang/StringBuilder
    //   305: dup
    //   306: ldc_w 310
    //   309: invokespecial 177	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   312: aload_0
    //   313: invokevirtual 207	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: invokevirtual 184	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   319: aload 6
    //   321: invokespecial 313	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   324: athrow
    //   325: astore 6
    //   327: aconst_null
    //   328: astore 7
    //   330: goto -47 -> 283
    //   333: astore 8
    //   335: aload 7
    //   337: astore 6
    //   339: goto -93 -> 246
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	342	0	paramString	String
    //   0	342	1	paramInt1	int
    //   0	342	2	paramInt2	int
    //   1	109	3	i	int
    //   45	23	4	j	int
    //   74	26	5	k	int
    //   10	149	6	localObject1	Object
    //   212	24	6	localIOException1	java.io.IOException
    //   244	50	6	localObject2	Object
    //   296	24	6	localIOException2	java.io.IOException
    //   325	1	6	localObject3	Object
    //   337	1	6	localObject4	Object
    //   121	215	7	localObject5	Object
    //   51	110	8	localObject6	Object
    //   241	27	8	localIOException3	java.io.IOException
    //   273	7	8	localObject7	Object
    //   333	1	8	localIOException4	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   165	170	212	java/io/IOException
    //   113	123	241	java/io/IOException
    //   127	139	273	finally
    //   143	156	273	finally
    //   160	165	273	finally
    //   246	273	273	finally
    //   288	293	296	java/io/IOException
    //   113	123	325	finally
    //   127	139	333	java/io/IOException
    //   143	156	333	java/io/IOException
    //   160	165	333	java/io/IOException
  }
  
  protected void attachExtraUniforms()
  {
    if (mOverlayBitmap != null)
    {
      int i = GLES20.glGetUniformLocation(mProgram, "sOverlayTexture");
      checkGlError("glGetUniformLocation");
      GLES20.glActiveTexture(33985);
      GLES20.glBindTexture(3553, mOverlayTextureID);
      GLES20.glUniform1i(i, 1);
    }
  }
  
  public void changeFragmentShader(@cgb FragmentShader paramFragmentShader)
  {
    paramFragmentShader = paramFragmentShader.getText();
    if (mProgram == 0) {
      throw new RuntimeException("Program doesn't exist");
    }
    if (!shaderMap.containsKey(paramFragmentShader)) {
      throw new RuntimeException("Shader does not exist");
    }
    int i = ((Integer)shaderMap.get(paramFragmentShader)).intValue();
    if (mCurrentShader != i)
    {
      if (mCurrentShader != -1) {
        GLES20.glDetachShader(mProgram, mCurrentShader);
      }
      mCurrentShader = i;
      GLES20.glAttachShader(mProgram, mCurrentShader);
      GLES20.glLinkProgram(mProgram);
      checkGlError("glAttachShader");
    }
  }
  
  public void checkGlError(String paramString)
  {
    int i = GLES20.glGetError();
    if (i != 0)
    {
      new StringBuilder().append(paramString).append(": glError ").append(i);
      throw new RuntimeException(paramString + ": glError " + i + " " + GLU.gluErrorString(i));
    }
  }
  
  protected int createProgram(String paramString1, String paramString2)
  {
    int j = loadShader(35633, paramString1);
    if (j == 0) {
      return 0;
    }
    loadFragmentShaders();
    int i = GLES20.glCreateProgram();
    checkGlError("glCreateProgram");
    GLES20.glAttachShader(i, j);
    checkGlError("glAttachShader");
    mCurrentShader = ((Integer)shaderMap.get(paramString2)).intValue();
    GLES20.glAttachShader(i, mCurrentShader);
    checkGlError("glAttachShader");
    GLES20.glLinkProgram(i);
    paramString1 = new int[1];
    GLES20.glGetProgramiv(i, 35714, paramString1, 0);
    if (paramString1[0] != 1)
    {
      GLES20.glGetProgramInfoLog(i);
      GLES20.glDeleteProgram(i);
      i = 0;
    }
    for (;;)
    {
      return i;
    }
  }
  
  public void drawFrame()
  {
    Debug.assertTrue(mIsInitialized);
    checkGlError("onDrawFrame start");
    GLES20.glClearColor(0.0F, 1.0F, 0.0F, 1.0F);
    GLES20.glClear(16640);
    GLES20.glUseProgram(mProgram);
    checkGlError("glUseProgram");
    int i = GLES20.glGetUniformLocation(mProgram, "sExternalTexture");
    checkGlError("glGetUniformLocation");
    GLES20.glActiveTexture(33984);
    GLES20.glBindTexture(36197, mExternalTextureID);
    GLES20.glUniform1i(i, 0);
    i = GLES20.glGetUniformLocation(mProgram, "sMissEtikateLookupTexture");
    checkGlError("glGetUniformLocation");
    GLES20.glActiveTexture(33986);
    GLES20.glBindTexture(3553, mMissEtikateLookupTextureID);
    GLES20.glUniform1i(i, 2);
    attachExtraUniforms();
    mQuadVertices.position(0);
    GLES20.glVertexAttribPointer(maPositionHandle, 3, 5126, false, 20, mQuadVertices);
    checkGlError("glVertexAttribPointer maPosition");
    GLES20.glEnableVertexAttribArray(maPositionHandle);
    checkGlError("glEnableVertexAttribArray maPositionHandle");
    mQuadVertices.position(3);
    GLES20.glVertexAttribPointer(maTextureHandle, 2, 5126, false, 20, mQuadVertices);
    checkGlError("glVertexAttribPointer maTextureHandle");
    GLES20.glEnableVertexAttribArray(maTextureHandle);
    checkGlError("glEnableVertexAttribArray maTextureHandle");
    Matrix.setIdentityM(mMVPMatrix, 0);
    GLES20.glUniformMatrix4fv(muMVPMatrixHandle, 1, false, mMVPMatrix, 0);
    GLES20.glUniformMatrix4fv(muSTMatrixHandle, 1, false, mSTMatrix, 0);
    GLES20.glDrawArrays(5, 0, 4);
    checkGlError("glDrawArrays");
    GLES20.glFinish();
  }
  
  public int getExternalTextureId()
  {
    Debug.assertTrue(mIsInitialized);
    return mExternalTextureID;
  }
  
  public void initialize()
  {
    if (!mIsInitialized) {}
    for (boolean bool = true;; bool = false)
    {
      Debug.assertTrue(bool);
      initializeFragmentShader();
      maPositionHandle = GLES20.glGetAttribLocation(mProgram, "aPosition");
      checkGlError("glGetAttribLocation aPosition");
      if (maPositionHandle != -1) {
        break;
      }
      throw new RuntimeException("Could not get attrib location for aPosition");
    }
    maTextureHandle = GLES20.glGetAttribLocation(mProgram, "aTextureCoord");
    checkGlError("glGetAttribLocation aTextureCoord");
    if (maTextureHandle == -1) {
      throw new RuntimeException("Could not get attrib location for aTextureCoord");
    }
    muMVPMatrixHandle = GLES20.glGetUniformLocation(mProgram, "uMVPMatrix");
    checkGlError("glGetUniformLocation uMVPMatrix");
    if (muMVPMatrixHandle == -1) {
      throw new RuntimeException("Could not get attrib location for uMVPMatrix");
    }
    muSTMatrixHandle = GLES20.glGetUniformLocation(mProgram, "uSTMatrix");
    checkGlError("glGetUniformLocation uSTMatrix");
    if (muSTMatrixHandle == -1) {
      throw new RuntimeException("Could not get attrib location for uSTMatrix");
    }
    Object localObject = new int[3];
    GLES20.glGenTextures(3, (int[])localObject, 0);
    mExternalTextureID = localObject[0];
    mOverlayTextureID = localObject[1];
    mMissEtikateLookupTextureID = localObject[2];
    GLES20.glBindTexture(36197, mExternalTextureID);
    checkGlError("glBindTexture mExternalTextureID");
    GLES20.glTexParameterf(36197, 10241, 9728.0F);
    GLES20.glTexParameterf(36197, 10240, 9729.0F);
    GLES20.glTexParameteri(36197, 10242, 33071);
    GLES20.glTexParameteri(36197, 10243, 33071);
    checkGlError("glTexParameter");
    GLES20.glBindTexture(3553, mMissEtikateLookupTextureID);
    checkGlError("glBindTexture mMissEtikateLookupTextureID");
    GLES20.glTexParameterf(3553, 10241, 9729.0F);
    GLES20.glTexParameterf(3553, 10240, 9729.0F);
    GLES20.glTexParameteri(3553, 10242, 33071);
    GLES20.glTexParameteri(3553, 10243, 33071);
    checkGlError("glTexParameter");
    localObject = mTranscodingResources.loadMissEtikateLookupBitmap();
    GLUtils.texImage2D(3553, 0, (Bitmap)localObject, 0);
    checkGlError("texImage2D");
    ((Bitmap)localObject).recycle();
    if (mOverlayBitmap != null)
    {
      GLES20.glBindTexture(3553, mOverlayTextureID);
      checkGlError("glBindTexture mOverlayTextureID");
      GLES20.glTexParameterf(3553, 10241, 9729.0F);
      GLES20.glTexParameterf(3553, 10240, 9729.0F);
      GLES20.glTexParameteri(3553, 10242, 33071);
      GLES20.glTexParameteri(3553, 10243, 33071);
      checkGlError("glTexParameter");
      GLUtils.texImage2D(3553, 0, mOverlayBitmap, 0);
      checkGlError("texImage2D");
    }
    mIsInitialized = true;
  }
  
  protected void initializeFragmentShader()
  {
    VertexShader localVertexShader = new VertexShader(mTranscodingResources);
    Object localObject = new FragmentShader.Builder(mTranscodingResources);
    if (mOverlayBitmap != null) {}
    for (boolean bool = true;; bool = false)
    {
      localObject = ((FragmentShader.Builder)localObject).enableOverlay(bool).build();
      mProgram = createProgram(localVertexShader.getText(), ((FragmentShader)localObject).getText());
      if (mProgram != 0) {
        break;
      }
      throw new RuntimeException("failed creating program");
    }
  }
  
  public void release()
  {
    GLES20.glDeleteTextures(3, new int[] { mExternalTextureID, mOverlayTextureID, mMissEtikateLookupTextureID }, 0);
  }
  
  public void setOverlayBitmap(@cgb Bitmap paramBitmap)
  {
    if (!mIsInitialized) {}
    for (boolean bool = true;; bool = false)
    {
      Debug.assertTrue(bool);
      mOverlayBitmap = paramBitmap;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.cts.TextureRenderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */