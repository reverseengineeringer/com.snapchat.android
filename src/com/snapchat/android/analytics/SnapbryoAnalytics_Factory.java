package com.snapchat.android.analytics;

import buo;
import nq;

public enum SnapbryoAnalytics_Factory
  implements buo<nq>
{
  INSTANCE;
  
  private SnapbryoAnalytics_Factory() {}
  
  public static buo<nq> create()
  {
    return INSTANCE;
  }
  
  public final nq get()
  {
    return new nq();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.SnapbryoAnalytics_Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */