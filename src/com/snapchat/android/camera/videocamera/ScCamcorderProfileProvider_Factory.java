package com.snapchat.android.camera.videocamera;

import buo;
import xi;

public enum ScCamcorderProfileProvider_Factory
  implements buo<xi>
{
  INSTANCE;
  
  private ScCamcorderProfileProvider_Factory() {}
  
  public static buo<xi> create()
  {
    return INSTANCE;
  }
  
  public final xi get()
  {
    return new xi();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.videocamera.ScCamcorderProfileProvider_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */