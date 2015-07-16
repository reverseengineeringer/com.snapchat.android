package com.snapchat.android.camera.videocamera;

import bvp;
import ye;

public enum ScCamcorderProfileProvider_Factory
  implements bvp<ye>
{
  INSTANCE;
  
  private ScCamcorderProfileProvider_Factory() {}
  
  public static bvp<ye> create()
  {
    return INSTANCE;
  }
  
  public final ye get()
  {
    return new ye();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.videocamera.ScCamcorderProfileProvider_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */