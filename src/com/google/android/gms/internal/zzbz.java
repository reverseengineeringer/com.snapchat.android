package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;

@zzgi
public class zzbz
  implements zzdc.zzb
{
  private boolean zzmE = false;
  private final Object zznh = new Object();
  private final zzhq<Bundle> zzqh = new zzhq();
  private final List<Runnable> zzqi = new ArrayList();
  private boolean zzqj = false;
  
  public void zza(Runnable paramRunnable)
  {
    synchronized (zznh)
    {
      if (!zzqj)
      {
        zzqi.add(paramRunnable);
        return;
      }
      paramRunnable.run();
      return;
    }
  }
  
  public Future<Bundle> zzcc()
  {
    return zzqh;
  }
  
  public void zze(Bundle paramBundle)
  {
    synchronized (zznh)
    {
      if (zzqj) {
        return;
      }
      zzqj = true;
      zzqh.zzb(paramBundle);
      paramBundle = zzqi.iterator();
      if (paramBundle.hasNext()) {
        ((Runnable)paramBundle.next()).run();
      }
    }
    zzqi.clear();
  }
  
  public void zzl(Context paramContext)
  {
    synchronized (zznh)
    {
      if (zzmE) {
        return;
      }
      zzdc.zza(paramContext, this);
      zzmE = true;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */