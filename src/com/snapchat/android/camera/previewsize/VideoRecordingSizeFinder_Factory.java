package com.snapchat.android.camera.previewsize;

import bvp;
import xm;

public enum VideoRecordingSizeFinder_Factory
  implements bvp<xm>
{
  INSTANCE;
  
  private VideoRecordingSizeFinder_Factory() {}
  
  public static bvp<xm> create()
  {
    return INSTANCE;
  }
  
  public final xm get()
  {
    return new xm();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.previewsize.VideoRecordingSizeFinder_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */