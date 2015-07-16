package com.snapchat.videotranscoder.cts;

import android.graphics.Bitmap;
import chc;
import chd;
import com.snapchat.videotranscoder.utils.TranscodingResources;

public class OutputSurfaceFactory
{
  public OutputSurface createOutputSurface(@chc TranscodingResources paramTranscodingResources, int paramInt1, int paramInt2, @chc float[] paramArrayOfFloat, @chd Bitmap paramBitmap)
  {
    return new OutputSurface(paramTranscodingResources, paramInt1, paramInt2, paramArrayOfFloat, paramBitmap);
  }
  
  public OutputSurface createOutputSurface(@chc TranscodingResources paramTranscodingResources, @chc float[] paramArrayOfFloat, @chd Bitmap paramBitmap)
  {
    return new OutputSurface(paramTranscodingResources, paramArrayOfFloat, paramBitmap);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.cts.OutputSurfaceFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */