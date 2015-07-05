package com.snapchat.android.camera.model;

import buo;
import wj;

public enum FlashModel_Factory
  implements buo<wj>
{
  INSTANCE;
  
  private FlashModel_Factory() {}
  
  public static buo<wj> create()
  {
    return INSTANCE;
  }
  
  public final wj get()
  {
    return new wj();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.model.FlashModel_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */