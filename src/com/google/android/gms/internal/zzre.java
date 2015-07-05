package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.List;

public class zzre
{
  private static final zza[] zzash = new zza[0];
  private static zzre zzasi;
  private final Application zzasj;
  private zzrh zzask;
  private final List<zza> zzasl;
  private zzri zzasm;
  
  private zzre(Application paramApplication)
  {
    zzx.zzl(paramApplication);
    zzasj = paramApplication;
    zzasl = new ArrayList();
  }
  
  public static zzre zzag(Context paramContext)
  {
    zzx.zzl(paramContext);
    paramContext = (Application)paramContext.getApplicationContext();
    zzx.zzl(paramContext);
    try
    {
      if (zzasi == null) {
        zzasi = new zzre(paramContext);
      }
      paramContext = zzasi;
      return paramContext;
    }
    finally {}
  }
  
  private zza[] zzqZ()
  {
    synchronized (zzasl)
    {
      if (zzasl.isEmpty())
      {
        arrayOfzza = zzash;
        return arrayOfzza;
      }
      zza[] arrayOfzza = (zza[])zzasl.toArray(new zza[zzasl.size()]);
      return arrayOfzza;
    }
  }
  
  public void zzZ(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT < 14) {}
    while (zzqY() == paramBoolean) {
      return;
    }
    if (paramBoolean)
    {
      zzasm = new zzri(this);
      zzasj.registerActivityLifecycleCallbacks(zzasm);
      return;
    }
    zzasj.unregisterActivityLifecycleCallbacks(zzasm);
    zzasm = null;
  }
  
  public void zza(zza paramzza)
  {
    zzx.zzl(paramzza);
    synchronized (zzasl)
    {
      zzasl.remove(paramzza);
      zzasl.add(paramzza);
      return;
    }
  }
  
  public void zzb(zzrh paramzzrh, Activity paramActivity)
  {
    int j = 0;
    zzx.zzl(paramzzrh);
    zza[] arrayOfzza = null;
    int i;
    if (paramzzrh.isMutable())
    {
      if ((paramActivity instanceof zzrd)) {
        ((zzrd)paramActivity).zzb(paramzzrh);
      }
      if (zzask != null)
      {
        paramzzrh.zzgr(zzask.zzaF());
        paramzzrh.zzcv(zzask.zzre());
      }
      arrayOfzza = zzqZ();
      i = 0;
      while (i < arrayOfzza.length)
      {
        arrayOfzza[i].zza(paramzzrh, paramActivity);
        i += 1;
      }
      paramzzrh.zzrh();
      if (!TextUtils.isEmpty(paramzzrh.zzre())) {}
    }
    for (;;)
    {
      return;
      if ((zzask != null) && (zzask.zzaF() == paramzzrh.zzaF()))
      {
        zzask = paramzzrh;
        return;
      }
      zzqX();
      zzask = paramzzrh;
      paramActivity = arrayOfzza;
      i = j;
      if (arrayOfzza == null)
      {
        paramActivity = zzqZ();
        i = j;
      }
      while (i < paramActivity.length)
      {
        paramActivity[i].zza(paramzzrh);
        i += 1;
      }
    }
  }
  
  public zzrh zzqW()
  {
    return zzask;
  }
  
  public void zzqX()
  {
    zzask = null;
  }
  
  public boolean zzqY()
  {
    return zzasm != null;
  }
  
  public static abstract interface zza
  {
    public abstract void zza(zzrh paramzzrh);
    
    public abstract void zza(zzrh paramzzrh, Activity paramActivity);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzre
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */