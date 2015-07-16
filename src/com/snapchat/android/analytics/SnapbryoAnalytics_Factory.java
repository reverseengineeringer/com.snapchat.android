package com.snapchat.android.analytics;

import bvp;
import oh;

public enum SnapbryoAnalytics_Factory
  implements bvp<oh>
{
  INSTANCE;
  
  private SnapbryoAnalytics_Factory() {}
  
  public static bvp<oh> create()
  {
    return INSTANCE;
  }
  
  public final oh get()
  {
    return new oh();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.SnapbryoAnalytics_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */