package com.snapchat.android.camera.model;

import buo;
import wk;

public enum VideoRecordingModel_Factory
  implements buo<wk>
{
  INSTANCE;
  
  private VideoRecordingModel_Factory() {}
  
  public static buo<wk> create()
  {
    return INSTANCE;
  }
  
  public final wk get()
  {
    return new wk();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.model.VideoRecordingModel_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */