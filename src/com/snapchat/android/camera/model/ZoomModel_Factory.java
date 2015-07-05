package com.snapchat.android.camera.model;

import buo;
import wl;

public enum ZoomModel_Factory
  implements buo<wl>
{
  INSTANCE;
  
  private ZoomModel_Factory() {}
  
  public static buo<wl> create()
  {
    return INSTANCE;
  }
  
  public final wl get()
  {
    return new wl();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.model.ZoomModel_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */