package com.flurry.sdk;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import java.util.Iterator;
import java.util.List;

class dv$1
  implements Application.ActivityLifecycleCallbacks
{
  dv$1(dv paramdv) {}
  
  protected void a(Activity paramActivity, du.a parama)
  {
    Iterator localIterator = dv.a(a).iterator();
    while (localIterator.hasNext()) {
      ((du)localIterator.next()).a(paramActivity, parama);
    }
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    a(paramActivity, du.a.a);
  }
  
  public void onActivityDestroyed(Activity paramActivity)
  {
    a(paramActivity, du.a.b);
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    a(paramActivity, du.a.c);
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    a(paramActivity, du.a.d);
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
    a(paramActivity, du.a.g);
  }
  
  public void onActivityStarted(Activity paramActivity)
  {
    a(paramActivity, du.a.e);
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    a(paramActivity, du.a.f);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dv.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */