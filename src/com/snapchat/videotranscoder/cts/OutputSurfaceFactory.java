package com.snapchat.videotranscoder.cts;

import android.graphics.Bitmap;
import cgb;
import cgc;
import com.snapchat.videotranscoder.utils.TranscodingResources;

public class OutputSurfaceFactory
{
  public OutputSurface createOutputSurface(@cgb TranscodingResources paramTranscodingResources, int paramInt1, int paramInt2, @cgb float[] paramArrayOfFloat, @cgc Bitmap paramBitmap)
  {
    return new OutputSurface(paramTranscodingResources, paramInt1, paramInt2, paramArrayOfFloat, paramBitmap);
  }
  
  public OutputSurface createOutputSurface(@cgb TranscodingResources paramTranscodingResources, @cgb float[] paramArrayOfFloat, @cgc Bitmap paramBitmap)
  {
    return new OutputSurface(paramTranscodingResources, paramArrayOfFloat, paramBitmap);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.cts.OutputSurfaceFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */