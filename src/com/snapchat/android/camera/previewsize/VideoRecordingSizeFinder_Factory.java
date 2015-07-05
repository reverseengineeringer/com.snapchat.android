package com.snapchat.android.camera.previewsize;

import buo;
import wq;

public enum VideoRecordingSizeFinder_Factory
  implements buo<wq>
{
  INSTANCE;
  
  private VideoRecordingSizeFinder_Factory() {}
  
  public static buo<wq> create()
  {
    return INSTANCE;
  }
  
  public final wq get()
  {
    return new wq();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.previewsize.VideoRecordingSizeFinder_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */