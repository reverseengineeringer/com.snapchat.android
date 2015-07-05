package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import java.util.WeakHashMap;

@zzgi
public class zzae
  implements zzag
{
  private final Object zznh = new Object();
  private final WeakHashMap<zzhe, zzaf> zzni = new WeakHashMap();
  private final ArrayList<zzaf> zznj = new ArrayList();
  private final Context zznk;
  private final zzhy zznl;
  private final zzdf zznm;
  
  public zzae(Context paramContext, zzhy paramzzhy, zzdf paramzzdf)
  {
    zznk = paramContext.getApplicationContext();
    zznl = paramzzhy;
    zznm = paramzzdf;
  }
  
  public zzaf zza(zzba paramzzba, zzhe paramzzhe)
  {
    return zza(paramzzba, paramzzhe, zzuq.getWebView());
  }
  
  public zzaf zza(zzba paramzzba, zzhe paramzzhe, View paramView)
  {
    synchronized (zznh)
    {
      if (zzc(paramzzhe))
      {
        paramzzba = (zzaf)zzni.get(paramzzhe);
        return paramzzba;
      }
      paramzzba = new zzaf(paramzzba, paramzzhe, zznl, paramView, zznm);
      paramzzba.zza(this);
      zzni.put(paramzzhe, paramzzba);
      zznj.add(paramzzba);
      return paramzzba;
    }
  }
  
  public void zza(zzaf paramzzaf)
  {
    synchronized (zznh)
    {
      if (!paramzzaf.zzbf()) {
        zznj.remove(paramzzaf);
      }
      return;
    }
  }
  
  public boolean zzc(zzhe paramzzhe)
  {
    for (;;)
    {
      synchronized (zznh)
      {
        paramzzhe = (zzaf)zzni.get(paramzzhe);
        if ((paramzzhe != null) && (paramzzhe.zzbf()))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void zzd(zzhe paramzzhe)
  {
    synchronized (zznh)
    {
      paramzzhe = (zzaf)zzni.get(paramzzhe);
      if (paramzzhe != null) {
        paramzzhe.zzbd();
      }
      return;
    }
  }
  
  public void zze(zzhe paramzzhe)
  {
    synchronized (zznh)
    {
      paramzzhe = (zzaf)zzni.get(paramzzhe);
      if (paramzzhe != null) {
        paramzzhe.stop();
      }
      return;
    }
  }
  
  public void zzf(zzhe paramzzhe)
  {
    synchronized (zznh)
    {
      paramzzhe = (zzaf)zzni.get(paramzzhe);
      if (paramzzhe != null) {
        paramzzhe.pause();
      }
      return;
    }
  }
  
  public void zzg(zzhe paramzzhe)
  {
    synchronized (zznh)
    {
      paramzzhe = (zzaf)zzni.get(paramzzhe);
      if (paramzzhe != null) {
        paramzzhe.resume();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */