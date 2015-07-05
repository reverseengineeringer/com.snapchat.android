package com.addlive.view;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView.Renderer;
import com.addlive.impl.Log;
import com.addlive.platform.ADL;
import com.addlive.service.AddLiveService;
import com.addlive.service.DrawRequest;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class VideoRenderer
  implements GLSurfaceView.Renderer
{
  private static final String CIRCLE_SHADER_SRC = "precision mediump float;                                              \nvarying vec2 TexCoordOut;                                             \nvarying vec2 TexCoordOutUV;                                           \nuniform sampler2D TextureY;                                           \nuniform sampler2D TextureU;                                           \nuniform sampler2D TextureV;                                           \nuniform float CircleRadius;                                           \nuniform float xScale;                                                 \nuniform float yScale;                                                 \nconst mat3 yuv2rgb = mat3(                                            \n  1, 1, 1,                                                            \n  0, -0.18732, 1.8556,                                                \n  1.57481, -0.46813, 0);                                              \nvoid main(void) {                                                     \n  vec3 yuv;                                                           \n  vec3 rgb;                                                           \n  float xadj = (TexCoordOut.x - 0.5) * xScale;                        \n  float yadj = (TexCoordOut.y - 0.5) * yScale;                        \n  float radius = distance(vec2(xadj, yadj), vec2(0.0, 0.0));          \n  float inCircle = float(radius < CircleRadius);                      \n  yuv.x = (texture2D(TextureY, TexCoordOut).r ) * inCircle;           \n  yuv.y = (texture2D(TextureU, TexCoordOutUV).r - 0.5) * inCircle;    \n  yuv.z = (texture2D(TextureV, TexCoordOutUV).r - 0.5) * inCircle;    \n  rgb = yuv2rgb * yuv;                                                \n  gl_FragColor = vec4(rgb, inCircle);                                 \n}                                                                     \n";
  private static final String LOG_TAG = "AddLive_SDK";
  private static final String RECT_SHADER_SRC = "precision mediump float;                              \nvarying vec2 TexCoordOut;                             \nvarying vec2 TexCoordOutUV;                           \nuniform sampler2D TextureY;                           \nuniform sampler2D TextureU;                           \nuniform sampler2D TextureV;                           \nconst mat3 yuv2rgb = mat3(                            \n  1, 1, 1,                                            \n  0, -0.18732, 1.8556,                                \n  1.57481, -0.46813, 0);                              \nvoid main(void) {                                     \n  vec3 yuv;                                           \n  vec3 rgb;                                           \n  yuv.x = texture2D(TextureY, TexCoordOut).r;         \n  yuv.y = texture2D(TextureU, TexCoordOutUV).r - 0.5; \n  yuv.z = texture2D(TextureV, TexCoordOutUV).r - 0.5; \n  rgb = yuv2rgb * yuv;                                \n  gl_FragColor = vec4(rgb, 1.0);                      \n}                                                     \n";
  private static final int SIZE_FLOAT = 4;
  private static final int SIZE_SHORT = 2;
  private static final String VERTEX_SHADER_SRC = "attribute vec4 Position;                              \nattribute vec2 TexCoordIn;                            \nvarying vec2 TexCoordOut;\t                           \nvarying vec2 TexCoordOutUV;\t                   \nuniform float ScaleUV;                                \nvoid main(void) {                                     \n  gl_Position = Position;\t                           \n  TexCoordOut = TexCoordIn;                           \n  TexCoordOutUV = vec2(ScaleUV, 1) * TexCoordIn;      \n}                                                     \n";
  private String FRAGMENT_SHADER_SRC;
  private int circleCoordSlot = -1;
  private int circleRadius = -1;
  private ShortBuffer indexBuffer = null;
  private boolean mirror = false;
  private int positionSlot = -1;
  private int program = -1;
  private int rendererId = -1;
  private float scaleUV = 1.0F;
  private int scaleUniformUV = -1;
  private int srfHeight = 0;
  private float srfRadius = 0.15F;
  private int srfWidth = 0;
  private int texCoordSlot = -1;
  private int texHeight = 0;
  private int texU = -1;
  private int texUniformU = -1;
  private int texUniformV = -1;
  private int texUniformY = -1;
  private int texV = -1;
  private int texWidth = 0;
  private int texY = -1;
  private VideoViewType type;
  private boolean updateTextures = false;
  private FloatBuffer vertexBuffer = null;
  private int xScale = -1;
  private float xScaleValue = 0.0F;
  private int yScale = -1;
  private float yScaleValue = 0.0F;
  
  public VideoRenderer()
  {
    vertexBuffer.put(new float[] { -1.0F, -1.0F, 0.0F, 0.0F, 1.0F, 1.0F, -1.0F, 0.0F, 1.0F, 1.0F, 1.0F, 1.0F, 0.0F, 1.0F, 0.0F, -1.0F, 1.0F, 0.0F, 0.0F, 0.0F }).rewind();
    indexBuffer = ByteBuffer.allocateDirect(12).order(ByteOrder.nativeOrder()).asShortBuffer();
    indexBuffer.put(new short[] { 0, 1, 2, 2, 3, 0 }).rewind();
    type = VideoViewType.RECTANGLE;
    FRAGMENT_SHADER_SRC = "precision mediump float;                              \nvarying vec2 TexCoordOut;                             \nvarying vec2 TexCoordOutUV;                           \nuniform sampler2D TextureY;                           \nuniform sampler2D TextureU;                           \nuniform sampler2D TextureV;                           \nconst mat3 yuv2rgb = mat3(                            \n  1, 1, 1,                                            \n  0, -0.18732, 1.8556,                                \n  1.57481, -0.46813, 0);                              \nvoid main(void) {                                     \n  vec3 yuv;                                           \n  vec3 rgb;                                           \n  yuv.x = texture2D(TextureY, TexCoordOut).r;         \n  yuv.y = texture2D(TextureU, TexCoordOutUV).r - 0.5; \n  yuv.z = texture2D(TextureV, TexCoordOutUV).r - 0.5; \n  rgb = yuv2rgb * yuv;                                \n  gl_FragColor = vec4(rgb, 1.0);                      \n}                                                     \n";
  }
  
  public VideoRenderer(VideoViewType paramVideoViewType)
  {
    vertexBuffer.put(new float[] { -1.0F, -1.0F, 0.0F, 0.0F, 1.0F, 1.0F, -1.0F, 0.0F, 1.0F, 1.0F, 1.0F, 1.0F, 0.0F, 1.0F, 0.0F, -1.0F, 1.0F, 0.0F, 0.0F, 0.0F }).rewind();
    indexBuffer = ByteBuffer.allocateDirect(12).order(ByteOrder.nativeOrder()).asShortBuffer();
    indexBuffer.put(new short[] { 0, 1, 2, 2, 3, 0 }).rewind();
    type = paramVideoViewType;
    switch (type)
    {
    default: 
      FRAGMENT_SHADER_SRC = "precision mediump float;                              \nvarying vec2 TexCoordOut;                             \nvarying vec2 TexCoordOutUV;                           \nuniform sampler2D TextureY;                           \nuniform sampler2D TextureU;                           \nuniform sampler2D TextureV;                           \nconst mat3 yuv2rgb = mat3(                            \n  1, 1, 1,                                            \n  0, -0.18732, 1.8556,                                \n  1.57481, -0.46813, 0);                              \nvoid main(void) {                                     \n  vec3 yuv;                                           \n  vec3 rgb;                                           \n  yuv.x = texture2D(TextureY, TexCoordOut).r;         \n  yuv.y = texture2D(TextureU, TexCoordOutUV).r - 0.5; \n  yuv.z = texture2D(TextureV, TexCoordOutUV).r - 0.5; \n  rgb = yuv2rgb * yuv;                                \n  gl_FragColor = vec4(rgb, 1.0);                      \n}                                                     \n";
      return;
    case ???: 
      FRAGMENT_SHADER_SRC = "precision mediump float;                              \nvarying vec2 TexCoordOut;                             \nvarying vec2 TexCoordOutUV;                           \nuniform sampler2D TextureY;                           \nuniform sampler2D TextureU;                           \nuniform sampler2D TextureV;                           \nconst mat3 yuv2rgb = mat3(                            \n  1, 1, 1,                                            \n  0, -0.18732, 1.8556,                                \n  1.57481, -0.46813, 0);                              \nvoid main(void) {                                     \n  vec3 yuv;                                           \n  vec3 rgb;                                           \n  yuv.x = texture2D(TextureY, TexCoordOut).r;         \n  yuv.y = texture2D(TextureU, TexCoordOutUV).r - 0.5; \n  yuv.z = texture2D(TextureV, TexCoordOutUV).r - 0.5; \n  rgb = yuv2rgb * yuv;                                \n  gl_FragColor = vec4(rgb, 1.0);                      \n}                                                     \n";
      return;
    }
    FRAGMENT_SHADER_SRC = "precision mediump float;                                              \nvarying vec2 TexCoordOut;                                             \nvarying vec2 TexCoordOutUV;                                           \nuniform sampler2D TextureY;                                           \nuniform sampler2D TextureU;                                           \nuniform sampler2D TextureV;                                           \nuniform float CircleRadius;                                           \nuniform float xScale;                                                 \nuniform float yScale;                                                 \nconst mat3 yuv2rgb = mat3(                                            \n  1, 1, 1,                                                            \n  0, -0.18732, 1.8556,                                                \n  1.57481, -0.46813, 0);                                              \nvoid main(void) {                                                     \n  vec3 yuv;                                                           \n  vec3 rgb;                                                           \n  float xadj = (TexCoordOut.x - 0.5) * xScale;                        \n  float yadj = (TexCoordOut.y - 0.5) * yScale;                        \n  float radius = distance(vec2(xadj, yadj), vec2(0.0, 0.0));          \n  float inCircle = float(radius < CircleRadius);                      \n  yuv.x = (texture2D(TextureY, TexCoordOut).r ) * inCircle;           \n  yuv.y = (texture2D(TextureU, TexCoordOutUV).r - 0.5) * inCircle;    \n  yuv.z = (texture2D(TextureV, TexCoordOutUV).r - 0.5) * inCircle;    \n  rgb = yuv2rgb * yuv;                                                \n  gl_FragColor = vec4(rgb, inCircle);                                 \n}                                                                     \n";
  }
  
  private int align4(int paramInt)
  {
    return paramInt + 3 & 0xFFFFFFFC;
  }
  
  private void allocTextures(int paramInt1, int paramInt2)
  {
    texY = newTexture(paramInt1, paramInt2, 6409, null);
    texU = newTexture(paramInt1 / 2, paramInt2 / 2, 6409, null);
    texV = newTexture(paramInt1 / 2, paramInt2 / 2, 6409, null);
    texWidth = paramInt1;
    texHeight = paramInt2;
  }
  
  private void clearTextures()
  {
    if ((texWidth == 0) || (texHeight == 0)) {
      return;
    }
    ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(align4(texWidth) * texHeight);
    int i = 0;
    while (i < localByteBuffer.capacity())
    {
      localByteBuffer.put((byte)0);
      i += 1;
    }
    GLES20.glActiveTexture(33984);
    GLES20.glBindTexture(3553, texY);
    GLES20.glTexSubImage2D(3553, 0, 0, 0, align4(texWidth), texHeight, 6409, 5121, localByteBuffer.rewind());
    localByteBuffer = ByteBuffer.allocateDirect(align4(texWidth / 2) * texHeight / 2);
    i = 0;
    while (i < localByteBuffer.capacity())
    {
      localByteBuffer.put((byte)Byte.MIN_VALUE);
      i += 1;
    }
    GLES20.glActiveTexture(33985);
    GLES20.glBindTexture(3553, texU);
    GLES20.glTexSubImage2D(3553, 0, 0, 0, align4(texWidth / 2), texHeight / 2, 6409, 5121, localByteBuffer.rewind());
    GLES20.glActiveTexture(33986);
    GLES20.glBindTexture(3553, texV);
    GLES20.glTexSubImage2D(3553, 0, 0, 0, align4(texWidth / 2), texHeight / 2, 6409, 5121, localByteBuffer.rewind());
  }
  
  private int createShader(int paramInt, String paramString)
  {
    paramInt = GLES20.glCreateShader(paramInt);
    if (paramInt == 0)
    {
      Log.e("AddLive_SDK", "Error creating shader.");
      throw new RuntimeException("Error creating shader.");
    }
    GLES20.glShaderSource(paramInt, paramString);
    GLES20.glCompileShader(paramInt);
    paramString = new int[1];
    GLES20.glGetShaderiv(paramInt, 35713, paramString, 0);
    if (paramString[0] == 0)
    {
      GLES20.glDeleteShader(paramInt);
      Log.e("AddLive_SDK", "Error compiling shader.");
      throw new RuntimeException("Error compiling shader.");
    }
    return paramInt;
  }
  
  private void deallocTextures()
  {
    GLES20.glDeleteTextures(3, new int[] { texY, texU, texV }, 0);
    texV = -1;
    texU = -1;
    texY = -1;
  }
  
  private void initShaders()
  {
    int i = createShader(35633, "attribute vec4 Position;                              \nattribute vec2 TexCoordIn;                            \nvarying vec2 TexCoordOut;\t                           \nvarying vec2 TexCoordOutUV;\t                   \nuniform float ScaleUV;                                \nvoid main(void) {                                     \n  gl_Position = Position;\t                           \n  TexCoordOut = TexCoordIn;                           \n  TexCoordOutUV = vec2(ScaleUV, 1) * TexCoordIn;      \n}                                                     \n");
    int j = createShader(35632, FRAGMENT_SHADER_SRC);
    program = GLES20.glCreateProgram();
    if (program == 0)
    {
      Log.e("AddLive_SDK", "Error creating program.");
      throw new RuntimeException("Error creating program.");
    }
    GLES20.glAttachShader(program, i);
    GLES20.glAttachShader(program, j);
    GLES20.glLinkProgram(program);
    int[] arrayOfInt = new int[1];
    GLES20.glGetProgramiv(program, 35714, arrayOfInt, 0);
    if (arrayOfInt[0] == 0)
    {
      GLES20.glDeleteProgram(program);
      Log.e("AddLive_SDK", "Error linking program.");
      throw new RuntimeException("Error linking program.");
    }
    GLES20.glUseProgram(program);
    positionSlot = GLES20.glGetAttribLocation(program, "Position");
    texCoordSlot = GLES20.glGetAttribLocation(program, "TexCoordIn");
    circleCoordSlot = GLES20.glGetAttribLocation(program, "CircleCoordIn");
    GLES20.glEnableVertexAttribArray(positionSlot);
    GLES20.glEnableVertexAttribArray(texCoordSlot);
    GLES20.glEnableVertexAttribArray(circleCoordSlot);
    texUniformY = GLES20.glGetUniformLocation(program, "TextureY");
    texUniformU = GLES20.glGetUniformLocation(program, "TextureU");
    texUniformV = GLES20.glGetUniformLocation(program, "TextureV");
    scaleUniformUV = GLES20.glGetUniformLocation(program, "ScaleUV");
    circleRadius = GLES20.glGetUniformLocation(program, "CircleRadius");
    xScale = GLES20.glGetUniformLocation(program, "xScale");
    yScale = GLES20.glGetUniformLocation(program, "yScale");
  }
  
  private int newTexture(int paramInt1, int paramInt2, int paramInt3, ByteBuffer paramByteBuffer)
  {
    IntBuffer localIntBuffer = IntBuffer.allocate(1);
    GLES20.glGenTextures(1, localIntBuffer);
    GLES20.glBindTexture(3553, localIntBuffer.get(0));
    GLES20.glPixelStorei(3317, 1);
    GLES20.glTexParameteri(3553, 10241, 9729);
    GLES20.glTexParameteri(3553, 10240, 9729);
    GLES20.glTexParameteri(3553, 10242, 33071);
    GLES20.glTexParameteri(3553, 10243, 33071);
    GLES20.glTexImage2D(3553, 0, paramInt3, align4(paramInt1), paramInt2, 0, paramInt3, 5121, paramByteBuffer);
    return localIntBuffer.get(0);
  }
  
  private void renderFrame()
  {
    if ((texY < 0) || (texU < 0) || (texV < 0)) {
      return;
    }
    DrawRequest localDrawRequest = new DrawRequest(0, 0, texHeight, texWidth, rendererId, texY, texU, texV);
    ADL.getService().draw(localDrawRequest);
    GLES20.glVertexAttribPointer(positionSlot, 3, 5126, false, 20, 0);
    GLES20.glVertexAttribPointer(texCoordSlot, 2, 5126, false, 20, 12);
    GLES20.glUniform1f(scaleUniformUV, scaleUV);
    GLES20.glUniform1f(circleRadius, srfRadius);
    GLES20.glUniform1f(xScale, xScaleValue);
    GLES20.glUniform1f(yScale, yScaleValue);
    GLES20.glEnableVertexAttribArray(positionSlot);
    GLES20.glEnableVertexAttribArray(texCoordSlot);
    GLES20.glActiveTexture(33984);
    GLES20.glBindTexture(3553, texY);
    GLES20.glUniform1i(texUniformY, 0);
    GLES20.glActiveTexture(33985);
    GLES20.glBindTexture(3553, texU);
    GLES20.glUniform1i(texUniformU, 1);
    GLES20.glActiveTexture(33986);
    GLES20.glBindTexture(3553, texV);
    GLES20.glUniform1i(texUniformV, 2);
    GLES20.glDrawElements(4, 6, 5123, 0);
  }
  
  private void updateTexCoord()
  {
    Log.d("AddLive_SDK", "VideoRenderer::updateTexCoord: " + texWidth + "x" + texHeight + " --> " + srfWidth + "x" + srfHeight);
    float f3 = texWidth / texHeight;
    xScaleValue = f3;
    yScaleValue = 1.0F;
    float f1;
    float f2;
    label135:
    float f4;
    if (srfHeight * f3 > srfWidth)
    {
      f1 = srfHeight * f3;
      if (srfWidth / f3 <= srfHeight) {
        break label371;
      }
      f2 = srfWidth / f3;
      float f5 = srfWidth;
      f4 = srfHeight;
      f1 = (f1 - f5) * 0.5F / f1;
      f2 = 0.5F * (f2 - f4) / f2;
      f4 = texWidth - (texWidth & 0xFFFFFFFC);
      f3 = f4 / f3;
      f4 /= texWidth;
      f3 /= texHeight;
      scaleUV = (((texWidth & 0xFFFFFFF8) - 1.0F) / texWidth);
      if (mirror) {
        break label380;
      }
      vertexBuffer.put(3, 0.0F + f1);
      vertexBuffer.put(4, 1.0F - f2 - f3);
      vertexBuffer.put(8, 1.0F - f1 - f4);
      vertexBuffer.put(9, 1.0F - f2 - f3);
      vertexBuffer.put(13, 1.0F - f1 - f4);
      vertexBuffer.put(14, 0.0F + f2);
      vertexBuffer.put(18, f1 + 0.0F);
      vertexBuffer.put(19, f2 + 0.0F);
    }
    for (;;)
    {
      GLES20.glBufferSubData(34962, 0, 80, vertexBuffer);
      return;
      f1 = srfWidth;
      break;
      label371:
      f2 = srfHeight;
      break label135;
      label380:
      vertexBuffer.put(3, 1.0F - f1 - f4);
      vertexBuffer.put(4, 1.0F - f2 - f3);
      vertexBuffer.put(8, 0.0F + f1);
      vertexBuffer.put(9, 1.0F - f2 - f3);
      vertexBuffer.put(13, 0.0F + f1);
      vertexBuffer.put(14, 0.0F + f2);
      vertexBuffer.put(18, 1.0F - f1 - f4);
      vertexBuffer.put(19, f2 + 0.0F);
    }
  }
  
  private void updateTextures(int paramInt1, int paramInt2)
  {
    deallocTextures();
    allocTextures(paramInt1, paramInt2);
    clearTextures();
    updateTexCoord();
    updateTextures = false;
  }
  
  public int getRendererId()
  {
    return rendererId;
  }
  
  public void onDrawFrame(GL10 paramGL10)
  {
    GLES20.glClear(16384);
    GLES20.glUseProgram(program);
    if (updateTextures) {
      updateTextures(texWidth, texHeight);
    }
    if ((rendererId >= 0) && (texWidth > 0) && (texHeight > 0)) {
      renderFrame();
    }
    GLES20.glFinish();
  }
  
  public void onResolutionChanged(int paramInt1, int paramInt2)
  {
    if ((texWidth == paramInt1) && (texHeight == paramInt2)) {
      return;
    }
    texWidth = paramInt1;
    texHeight = paramInt2;
    updateTextures = true;
  }
  
  public void onStartRendering(int paramInt, boolean paramBoolean)
  {
    rendererId = paramInt;
    mirror = paramBoolean;
  }
  
  public void onStopRendering()
  {
    rendererId = -1;
    clearTextures();
  }
  
  public void onSurfaceChanged(GL10 paramGL10, int paramInt1, int paramInt2)
  {
    Log.d("AddLive_SDK", "VideoRenderer::onSurfaceChanged(" + paramInt1 + "x" + paramInt2 + ")");
    GLES20.glViewport(0, 0, paramInt1, paramInt2);
    srfWidth = paramInt1;
    srfHeight = paramInt2;
    updateTextures = true;
  }
  
  public void onSurfaceCreated(GL10 paramGL10, EGLConfig paramEGLConfig)
  {
    Log.i("AddLive_SDK", "GL Details: ==================");
    Log.i("AddLive_SDK", "VERSION: " + GLES20.glGetString(7938));
    Log.i("AddLive_SDK", "VENDOR: " + GLES20.glGetString(7936));
    Log.i("AddLive_SDK", "RENDERER: " + GLES20.glGetString(7937));
    Log.i("AddLive_SDK", "EXTENSION: " + GLES20.glGetString(7939));
    Log.i("AddLive_SDK", "==============================");
    paramGL10 = IntBuffer.allocate(2);
    GLES20.glGenTextures(2, paramGL10);
    GLES20.glBindBuffer(34962, paramGL10.get(0));
    GLES20.glBufferData(34962, 80, vertexBuffer, 35040);
    GLES20.glBindBuffer(34963, paramGL10.get(1));
    GLES20.glBufferData(34963, 12, indexBuffer, 35044);
    initShaders();
  }
  
  public void setRadius(float paramFloat)
  {
    srfRadius = paramFloat;
  }
}

/* Location:
 * Qualified Name:     com.addlive.view.VideoRenderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */