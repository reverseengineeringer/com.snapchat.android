package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Bundle;

@zzgi
public class zzam
  implements Application.ActivityLifecycleCallbacks
{
  private Context mContext;
  private final Object zznh = new Object();
  private Activity zzoi;
  
  public zzam(Application paramApplication, Activity paramActivity)
  {
    paramApplication.registerActivityLifecycleCallbacks(this);
    setActivity(paramActivity);
    mContext = paramApplication.getApplicationContext();
  }
  
  private void setActivity(Activity paramActivity)
  {
    synchronized (zznh)
    {
      if (!paramActivity.getClass().getName().startsWith("com.google.android.gms.ads")) {
        zzoi = paramActivity;
      }
      return;
    }
  }
  
  public Activity getActivity()
  {
    return zzoi;
  }
  
  public Context getContext()
  {
    return mContext;
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity)
  {
    synchronized (zznh)
    {
      if (zzoi == null) {
        return;
      }
      if (zzoi.equals(paramActivity)) {
        zzoi = null;
      }
      return;
    }
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    setActivity(paramActivity);
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    setActivity(paramActivity);
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity)
  {
    setActivity(paramActivity);
  }
  
  public void onActivityStopped(Activity paramActivity) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzam
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */