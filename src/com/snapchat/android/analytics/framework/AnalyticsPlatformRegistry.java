package com.snapchat.android.analytics.framework;

import akr;
import android.app.Activity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;

public class AnalyticsPlatformRegistry
{
  public List<AnalyticsPlatform> a = new ArrayList();
  
  @Inject
  AnalyticsPlatformRegistry(UpdateSnapsAnalyticsPlatform paramUpdateSnapsAnalyticsPlatform, FlurryAnalyticsPlatform paramFlurryAnalyticsPlatform, UserActionTracePlatform paramUserActionTracePlatform)
  {
    a.add(paramUpdateSnapsAnalyticsPlatform);
    a.add(paramFlurryAnalyticsPlatform);
    a.add(paramUserActionTracePlatform);
  }
  
  public final void a(Activity paramActivity)
  {
    if (akr.H()) {}
    for (;;)
    {
      return;
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext()) {
        ((AnalyticsPlatform)localIterator.next()).a(paramActivity);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.AnalyticsPlatformRegistry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */