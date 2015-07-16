package com.snapchat.videotranscoder.cts;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import chc;
import com.snapchat.videotranscoder.utils.TranscodingResources;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import com.snapchat.videotranscoder.video.FragmentShader.Builder;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;

public class SplitOutputSurface
  extends OutputSurface
{
  private static final String TAG = "SplitOutputSurface";
  
  public SplitOutputSurface(@chc TranscodingResources paramTranscodingResources, @chc float[] paramArrayOfFloat)
  {
    super(paramTranscodingResources, paramArrayOfFloat, null);
  }
  
  public void changeSplit(float paramFloat)
  {
    if (mTextureRenderer != null)
    {
      ((SplitTextureRenderer)mTextureRenderer).setSplit(paramFloat);
      return;
    }
    throw new RuntimeException();
  }
  
  public void onFrameAvailable(SurfaceTexture paramSurfaceTexture)
  {
    VerboseLogging.verboseLog("SplitOutputSurface", "new frame available");
  }
  
  public void setShader(@chc FragmentShader.Filter paramFilter1, @chc FragmentShader.Filter paramFilter2)
  {
    paramFilter1 = new FragmentShader.Builder(mTranscodingResources).enableSplit(true).setLeftFilter(paramFilter1).setRightFilter(paramFilter2).build();
    mTextureRenderer.changeFragmentShader(paramFilter1);
  }
  
  protected void setup(float[] paramArrayOfFloat)
  {
    if (paramArrayOfFloat == null) {
      throw new NullPointerException("transformationMatrix is null");
    }
    if (paramArrayOfFloat.length != 16) {
      throw new IllegalArgumentException("transformationMatrix must be a a 4x4 matrix of length 16");
    }
    mTextureRenderer = new SplitTextureRenderer(mTranscodingResources, paramArrayOfFloat);
    mTextureRenderer.initialize();
    VerboseLogging.verboseLog("SplitOutputSurface", "textureID=" + mTextureRenderer.getExternalTextureId());
    mSurfaceTexture = new SurfaceTexture(mTextureRenderer.getExternalTextureId());
    mSurfaceTexture.setOnFrameAvailableListener(this);
    mSurface = new Surface(mSurfaceTexture);
  }
  
  public void updateImage()
  {
    mTextureRenderer.checkGlError("before updateTexImage");
    mSurfaceTexture.updateTexImage();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.cts.SplitOutputSurface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */