package com.addlive.impl.cam;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView.Renderer;
import android.opengl.Matrix;
import com.addlive.impl.Log;
import com.addlive.impl.cb.ADLInjectFrameCb;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

class ADLCameraFrameLayout$InternalRenderer
  implements GLSurfaceView.Renderer
{
  private int mCamHeight;
  private int mCamWidth;
  private final String mFragmentShader = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
  private ADLInjectFrameCb mFrameReceiver;
  private int mHeight;
  private float[] mMVPMatrix = new float[16];
  private int mProgram;
  private ADLCameraFrameLayout.RenderTexture mRenderTextureL;
  private ADLCameraFrameLayout.RenderTexture mRenderTextureP;
  private float[] mSTMatrix = new float[16];
  private SurfaceTexture mSurfaceTexture;
  private int mTextureId;
  private final String mVertexShader = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
  private int mWidth;
  private final float[] mXyzUv = { -1.0F, -1.0F, 0.0F, 0.0F, 0.0F, 1.0F, -1.0F, 0.0F, 1.0F, 0.0F, -1.0F, 1.0F, 0.0F, 0.0F, 1.0F, 1.0F, 1.0F, 0.0F, 1.0F, 1.0F };
  private FloatBuffer mXyzUvBuffer;
  private int maPositionHandle;
  private int maTextureHandle;
  private int muMVPMatrixHandle;
  private int muSTMatrixHandle;
  
  public ADLCameraFrameLayout$InternalRenderer(ADLCameraFrameLayout paramADLCameraFrameLayout, ADLInjectFrameCb paramADLInjectFrameCb, int paramInt1, int paramInt2)
  {
    mCamWidth = paramInt1;
    mCamHeight = paramInt2;
    mXyzUvBuffer = ByteBuffer.allocateDirect(80).order(ByteOrder.nativeOrder()).asFloatBuffer();
    mXyzUvBuffer.put(mXyzUv).position(0);
    Matrix.setIdentityM(mSTMatrix, 0);
    mFrameReceiver = paramADLInjectFrameCb;
  }
  
  public void drawFrame(int paramInt1, int paramInt2, long paramLong)
  {
    mSurfaceTexture.updateTexImage();
    float f = 1.5707964F * (paramInt1 + 3);
    if ((paramInt1 == 0) || (paramInt1 == 2))
    {
      mRenderTextureL.onDrawFrame(mSurfaceTexture, mTextureId, f);
      mFrameReceiver.injectFrame(null, mCamWidth, mCamHeight, 0, 0, paramInt1, paramInt2, paramLong);
    }
    for (;;)
    {
      mSurfaceTexture.getTransformMatrix(mSTMatrix);
      GLES20.glViewport(0, 0, mWidth, mHeight);
      GLES20.glUseProgram(mProgram);
      GLES20.glClear(16384);
      GLES20.glActiveTexture(33984);
      GLES20.glBindTexture(36197, mTextureId);
      mXyzUvBuffer.position(0);
      GLES20.glVertexAttribPointer(maPositionHandle, 3, 5126, false, 20, mXyzUvBuffer);
      GLES20.glEnableVertexAttribArray(maPositionHandle);
      mXyzUvBuffer.position(3);
      GLES20.glVertexAttribPointer(maTextureHandle, 3, 5126, false, 20, mXyzUvBuffer);
      GLES20.glEnableVertexAttribArray(maTextureHandle);
      Matrix.setIdentityM(mMVPMatrix, 0);
      GLES20.glUniformMatrix4fv(muMVPMatrixHandle, 1, false, mMVPMatrix, 0);
      GLES20.glUniformMatrix4fv(muSTMatrixHandle, 1, false, mSTMatrix, 0);
      GLES20.glDrawArrays(5, 0, 4);
      return;
      mRenderTextureP.onDrawFrame(mSurfaceTexture, mTextureId, f);
      mFrameReceiver.injectFrame(null, mCamHeight, mCamWidth, 0, 0, paramInt1, paramInt2, paramLong);
    }
  }
  
  public void onDrawFrame(GL10 paramGL10) {}
  
  public void onSurfaceChanged(GL10 paramGL10, int paramInt1, int paramInt2)
  {
    mWidth = paramInt1;
    mHeight = paramInt2;
  }
  
  public void onSurfaceCreated(GL10 paramGL10, EGLConfig paramEGLConfig)
  {
    Log.d("AddLive_SDK_FCam", "onSurfaceCreated");
    mTextureId = ADLCameraFrameLayout.access$500(36197);
    mSurfaceTexture = new SurfaceTexture(mTextureId);
    mRenderTextureL = new ADLCameraFrameLayout.RenderTexture(this$0, mCamWidth, mCamHeight);
    mRenderTextureP = new ADLCameraFrameLayout.RenderTexture(this$0, mCamHeight, mCamWidth);
    mProgram = ADLCameraFrameLayout.access$600("uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
    maPositionHandle = GLES20.glGetAttribLocation(mProgram, "aPosition");
    maTextureHandle = GLES20.glGetAttribLocation(mProgram, "aTextureCoord");
    muMVPMatrixHandle = GLES20.glGetUniformLocation(mProgram, "uMVPMatrix");
    muSTMatrixHandle = GLES20.glGetUniformLocation(mProgram, "uSTMatrix");
    try
    {
      startCamera();
      return;
    }
    catch (Exception paramGL10)
    {
      Log.e("AddLive_SDK_FCam", "critical error: failed to start camera");
    }
  }
  
  public void startCamera()
  {
    if (mSurfaceTexture != null) {
      ADLCameraFrameLayout.access$300(this$0, mSurfaceTexture);
    }
  }
  
  public void stopCamera()
  {
    if (mSurfaceTexture != null) {
      ADLCameraFrameLayout.access$400(this$0, mSurfaceTexture);
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.cam.ADLCameraFrameLayout.InternalRenderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */