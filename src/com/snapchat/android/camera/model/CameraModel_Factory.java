package com.snapchat.android.camera.model;

import bvp;

public enum CameraModel_Factory
  implements bvp<CameraModel>
{
  INSTANCE;
  
  private CameraModel_Factory() {}
  
  public static bvp<CameraModel> create()
  {
    return INSTANCE;
  }
  
  public final CameraModel get()
  {
    return new CameraModel();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.model.CameraModel_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */