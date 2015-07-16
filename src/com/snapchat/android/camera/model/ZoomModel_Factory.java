package com.snapchat.android.camera.model;

import bvp;
import xh;

public enum ZoomModel_Factory
  implements bvp<xh>
{
  INSTANCE;
  
  private ZoomModel_Factory() {}
  
  public static bvp<xh> create()
  {
    return INSTANCE;
  }
  
  public final xh get()
  {
    return new xh();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.model.ZoomModel_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */