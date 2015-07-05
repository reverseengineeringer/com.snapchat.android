package com.addlive.impl.cam;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.addlive.impl.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

class ADLCameraFrameLayout$RenderTexture
{
  private final String mFragmentShader = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
  private int mFramebufferId;
  private int mHeight;
  private float[] mMVPMatrix = new float[16];
  private int mProgram;
  private float[] mSTMatrix = new float[16];
  private int mTextureId;
  private final String mVertexShader = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
  private int mWidth;
  private final float[] mXyzUv = { -1.0F, -1.0F, 0.0F, 0.0F, 0.0F, 1.0F, -1.0F, 0.0F, 1.0F, 0.0F, -1.0F, 1.0F, 0.0F, 0.0F, 1.0F, 1.0F, 1.0F, 0.0F, 1.0F, 1.0F };
  private FloatBuffer mXyzUvBuffer;
  private int maPositionHandle;
  private int maTextureHandle;
  private int muMVPMatrixHandle;
  private int muSTMatrixHandle;
  
  public ADLCameraFrameLayout$RenderTexture(ADLCameraFrameLayout paramADLCameraFrameLayout, int paramInt1, int paramInt2)
  {
    mWidth = paramInt1;
    mHeight = paramInt2;
    mTextureId = ADLCameraFrameLayout.access$500(3553);
    GLES20.glTexImage2D(3553, 0, 6408, mWidth, mHeight, 0, 6408, 5121, null);
    GLES20.glBindTexture(3553, 0);
    mFramebufferId = ADLCameraFrameLayout.access$700(mTextureId);
    mXyzUvBuffer = ByteBuffer.allocateDirect(80).order(ByteOrder.nativeOrder()).asFloatBuffer();
    mXyzUvBuffer.put(mXyzUv).position(0);
    mProgram = ADLCameraFrameLayout.access$600("uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
    maPositionHandle = GLES20.glGetAttribLocation(mProgram, "aPosition");
    maTextureHandle = GLES20.glGetAttribLocation(mProgram, "aTextureCoord");
    muMVPMatrixHandle = GLES20.glGetUniformLocation(mProgram, "uMVPMatrix");
    muSTMatrixHandle = GLES20.glGetUniformLocation(mProgram, "uSTMatrix");
    GLES20.glBindFramebuffer(36160, 0);
  }
  
  public void onDrawFrame(SurfaceTexture paramSurfaceTexture, int paramInt, float paramFloat)
  {
    paramSurfaceTexture.getTransformMatrix(mSTMatrix);
    GLES20.glBindFramebuffer(36160, mFramebufferId);
    GLES20.glFramebufferTexture2D(36160, 36064, 3553, mTextureId, 0);
    if (GLES20.glCheckFramebufferStatus(36160) != 36053) {
      Log.e("AddLive_SDK_FCam", "framebuffer not complete");
    }
    GLES20.glViewport(0, 0, mWidth, mHeight);
    GLES20.glUseProgram(mProgram);
    GLES20.glActiveTexture(33984);
    GLES20.glBindTexture(36197, paramInt);
    mXyzUvBuffer.position(0);
    GLES20.glVertexAttribPointer(maPositionHandle, 3, 5126, false, 20, mXyzUvBuffer);
    GLES20.glEnableVertexAttribArray(maPositionHandle);
    mXyzUvBuffer.position(3);
    GLES20.glVertexAttribPointer(maTextureHandle, 3, 5126, false, 20, mXyzUvBuffer);
    GLES20.glEnableVertexAttribArray(maTextureHandle);
    float f = (float)Math.cos(paramFloat);
    paramFloat = (float)Math.sin(paramFloat);
    Matrix.setIdentityM(mMVPMatrix, 0);
    mMVPMatrix[0] = f;
    mMVPMatrix[1] = (-paramFloat);
    mMVPMatrix[4] = paramFloat;
    mMVPMatrix[5] = f;
    GLES20.glUniformMatrix4fv(muMVPMatrixHandle, 1, false, mMVPMatrix, 0);
    GLES20.glUniformMatrix4fv(muSTMatrixHandle, 1, false, mSTMatrix, 0);
    GLES20.glDrawArrays(5, 0, 4);
    GLES20.glBindFramebuffer(36160, 0);
    GLES20.glFinish();
    GLES20.glBindTexture(3553, mTextureId);
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.cam.ADLCameraFrameLayout.RenderTexture
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */