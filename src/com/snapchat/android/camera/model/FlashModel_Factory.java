package com.snapchat.android.camera.model;

import bvp;
import xf;

public enum FlashModel_Factory
  implements bvp<xf>
{
  INSTANCE;
  
  private FlashModel_Factory() {}
  
  public static bvp<xf> create()
  {
    return INSTANCE;
  }
  
  public final xf get()
  {
    return new xf();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.model.FlashModel_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */