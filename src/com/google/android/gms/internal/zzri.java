package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.internal.zzx;
import java.util.Map;

public final class zzri
  implements Application.ActivityLifecycleCallbacks
{
  private final zzre zzasy;
  private final Map<Activity, zzrh> zzasz;
  
  public zzri(zzre paramzzre)
  {
    zzx.zzl(paramzzre);
    zzasy = paramzzre;
    zzasz = new ArrayMap();
  }
  
  public final void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    if (paramBundle == null) {}
    int i;
    do
    {
      do
      {
        return;
        paramBundle = paramBundle.getBundle("com.google.android.gms.measurement.screen_view");
      } while (paramBundle == null);
      i = paramBundle.getInt("id");
    } while (i <= 0);
    paramActivity = zza(paramActivity, i);
    paramActivity.setScreenName(paramBundle.getString("name"));
    paramActivity.zzgr(paramBundle.getInt("referrer_id"));
    paramActivity.zzcv(paramBundle.getString("referrer_name"));
    paramActivity.zzaa(paramBundle.getBoolean("interstitial"));
    paramActivity.zzrh();
  }
  
  public final void onActivityDestroyed(Activity paramActivity)
  {
    zzasz.remove(paramActivity);
  }
  
  public final void onActivityPaused(Activity paramActivity) {}
  
  public final void onActivityResumed(Activity paramActivity) {}
  
  public final void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
    if (paramBundle == null) {}
    do
    {
      return;
      paramActivity = (zzrh)zzasz.get(paramActivity);
    } while (paramActivity == null);
    Bundle localBundle = new Bundle();
    localBundle.putInt("id", paramActivity.zzaF());
    localBundle.putString("name", paramActivity.zzre());
    localBundle.putInt("referrer_id", paramActivity.zzrf());
    localBundle.putString("referrer_name", paramActivity.zzrg());
    localBundle.putBoolean("interstitial", paramActivity.zzri());
    paramBundle.putBundle("com.google.android.gms.measurement.screen_view", localBundle);
  }
  
  public final void onActivityStarted(Activity paramActivity)
  {
    zzrh localzzrh = zza(paramActivity, 0);
    zzasy.zzb(localzzrh, paramActivity);
  }
  
  public final void onActivityStopped(Activity paramActivity) {}
  
  final zzrh zza(Activity paramActivity, int paramInt)
  {
    zzx.zzl(paramActivity);
    zzrh localzzrh2 = (zzrh)zzasz.get(paramActivity);
    zzrh localzzrh1 = localzzrh2;
    if (localzzrh2 == null) {
      if (paramInt != 0) {
        break label66;
      }
    }
    label66:
    for (localzzrh1 = new zzrh(true);; localzzrh1 = new zzrh(true, paramInt))
    {
      localzzrh1.setScreenName(paramActivity.getClass().getCanonicalName());
      zzasz.put(paramActivity, localzzrh1);
      return localzzrh1;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzri
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */