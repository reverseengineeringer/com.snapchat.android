package com.snapchat.android.camera.model;

import bvp;
import xg;

public enum VideoRecordingModel_Factory
  implements bvp<xg>
{
  INSTANCE;
  
  private VideoRecordingModel_Factory() {}
  
  public static bvp<xg> create()
  {
    return INSTANCE;
  }
  
  public final xg get()
  {
    return new xg();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.model.VideoRecordingModel_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */