package com.snapchat.videotranscoder.cts;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.Matrix;
import chc;
import com.snapchat.videotranscoder.utils.TranscodingResources;
import com.snapchat.videotranscoder.video.FragmentShader;
import com.snapchat.videotranscoder.video.FragmentShader.Builder;
import com.snapchat.videotranscoder.video.VertexShader;

public class SplitTextureRenderer
  extends TextureRenderer
{
  private float mCurrentSplit = 0.0F;
  private float[] mInvertedSTM = new float[16];
  private float mRequestedSplit = 0.0F;
  private int mTransformHandle;
  private int muSplitHandle;
  
  public SplitTextureRenderer(@chc TranscodingResources paramTranscodingResources, @chc float[] paramArrayOfFloat)
  {
    super(paramTranscodingResources, paramArrayOfFloat);
    Matrix.invertM(mInvertedSTM, 0, mSTMatrix, 0);
  }
  
  protected void attachExtraUniforms()
  {
    mCurrentSplit = mRequestedSplit;
    muSplitHandle = GLES20.glGetUniformLocation(mProgram, "uSplit");
    checkGlError("glGetUniformLocation uSplit");
    if (muSplitHandle == -1) {
      throw new RuntimeException("Could not get uniform location for uSplit");
    }
    GLES20.glUniform1f(muSplitHandle, mCurrentSplit);
    checkGlError("glUniform1f");
    mTransformHandle = GLES20.glGetUniformLocation(mProgram, "uTransform");
    checkGlError("glGetUniformLocation uTransform");
    if (mTransformHandle == -1) {
      throw new RuntimeException("Could not get uniform location for transform");
    }
    GLES20.glUniformMatrix4fv(mTransformHandle, 1, false, mInvertedSTM, 0);
    checkGlError("glUniformMatrix4fv");
  }
  
  public void initialize()
  {
    super.initialize();
    initializeFragmentShader();
    muSplitHandle = GLES20.glGetUniformLocation(mProgram, "uSplit");
    checkGlError("glGetUniformLocation uSplit");
    if (muSplitHandle == -1) {
      throw new RuntimeException("Could not get uniform location for uSplit");
    }
    mTransformHandle = GLES20.glGetUniformLocation(mProgram, "uTransform");
    checkGlError("glGetUniformLocation uTransform");
    if (mTransformHandle == -1) {
      throw new RuntimeException("Could not get uniform location for transform");
    }
  }
  
  protected void initializeFragmentShader()
  {
    VertexShader localVertexShader = new VertexShader(mTranscodingResources);
    FragmentShader localFragmentShader = new FragmentShader.Builder(mTranscodingResources).enableSplit(true).build();
    mProgram = createProgram(localVertexShader.getText(), localFragmentShader.getText());
    if (mProgram == 0) {
      throw new RuntimeException("failed creating program");
    }
  }
  
  public void setOverlayBitmap(@chc Bitmap paramBitmap)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setSplit(float paramFloat)
  {
    mRequestedSplit = paramFloat;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.cts.SplitTextureRenderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */