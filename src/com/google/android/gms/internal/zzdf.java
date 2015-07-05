package com.google.android.gms.internal;

import android.content.Context;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.WeakHashMap;

@zzgi
public class zzdf
{
  private final Context mContext;
  private final Object zznh = new Object();
  private final zzhy zznl;
  private final String zzrR;
  private final WeakHashMap<zzia<zzah>, Integer> zzrS;
  private zzia.zzd<zzah> zzrT;
  private zzia.zzd<zzah> zzrU;
  private zzia<zzah> zzrV;
  private zzah zzrW;
  private int zzrX = 1;
  
  public zzdf(Context paramContext, zzhy paramzzhy, String paramString)
  {
    zzrR = paramString;
    mContext = paramContext.getApplicationContext();
    zznl = paramzzhy;
    zzrS = new WeakHashMap();
    zzrT = new zzia.zzc();
    zzrU = new zzia.zzc();
  }
  
  public zzdf(Context paramContext, zzhy paramzzhy, String paramString, zzia.zzd<zzah> paramzzd1, zzia.zzd<zzah> paramzzd2)
  {
    this(paramContext, paramzzhy, paramString);
    zzrT = paramzzd1;
    zzrU = paramzzd2;
  }
  
  private void zza(final zzia<zzah> paramzzia)
  {
    zzrX = 2;
    zzrW = zza(mContext, zznl);
    zzrW.zza(new zzah.zza()
    {
      public void zzbk()
      {
        new Timer().schedule(new TimerTask()
        {
          public void run()
          {
            synchronized (zzdf.zza(zzdf.this))
            {
              if ((zzrY.getStatus() == -1) || (zzrY.getStatus() == 1)) {
                return;
              }
              zzdf.zza(zzdf.this, 1);
              zzrY.reject();
              return;
            }
          }
        }, zzdf.zza.zzsd);
      }
    });
    zzrW.zza("/jsLoaded", new zzcv()
    {
      public void zza(zzic arg1, Map<String, String> paramAnonymousMap)
      {
        synchronized (zzdf.zza(zzdf.this))
        {
          if ((paramzzia.getStatus() == -1) || (paramzzia.getStatus() == 1)) {
            return;
          }
          paramzzia.zzc(zzdf.zzb(zzdf.this));
          paramzzia.zza(zzdf.zzc(zzdf.this), new zzia.zzb());
          zzdf.zza(zzdf.this, 0);
          if (paramzzia != zzdf.zzd(zzdf.this)) {
            zzd(zzdf.zzd(zzdf.this));
          }
          zzdf.zza(zzdf.this, paramzzia);
          zzc(zzdf.zzd(zzdf.this));
          return;
        }
      }
    });
    final zzhv localzzhv = new zzhv();
    zzcv local3 = new zzcv()
    {
      public void zza(zzic arg1, Map<String, String> paramAnonymousMap)
      {
        synchronized (zzdf.zza(zzdf.this))
        {
          zzdf.zza(zzdf.this, 1);
          zzhx.zzaa("Javascript is requesting an update");
          zzdf.zzb(zzdf.this).zzb("/requestReload", (zzcv)localzzhv.get());
          return;
        }
      }
    };
    localzzhv.set(local3);
    zzrW.zza("/requestReload", local3);
    if (zzrR.endsWith(".js")) {
      zzrW.zzf(zzrR);
    }
    for (;;)
    {
      new Timer().schedule(new TimerTask()
      {
        public void run()
        {
          synchronized (zzdf.zza(zzdf.this))
          {
            if ((paramzzia.getStatus() == -1) || (paramzzia.getStatus() == 1)) {
              return;
            }
            zzdf.zza(zzdf.this, 1);
            paramzzia.reject();
            return;
          }
        }
      }, zza.zzsc);
      return;
      zzrW.zzg(zzrR);
    }
  }
  
  protected zzah zza(Context paramContext, zzhy paramzzhy)
  {
    return new zzaj(paramContext, paramzzhy);
  }
  
  public void zzb(zzia<zzah> paramzzia)
  {
    synchronized (zznh)
    {
      zzd(paramzzia);
      return;
    }
  }
  
  protected void zzc(zzia<zzah> paramzzia)
  {
    synchronized (zznh)
    {
      Integer localInteger2 = (Integer)zzrS.get(paramzzia);
      Integer localInteger1 = localInteger2;
      if (localInteger2 == null) {
        localInteger1 = Integer.valueOf(0);
      }
      zzhx.zzab("Incremented use-counter for js engine.");
      int i = localInteger1.intValue();
      zzrS.put(paramzzia, Integer.valueOf(i + 1));
      return;
    }
  }
  
  public zzia<zzah> zzcJ()
  {
    synchronized (zznh)
    {
      Object localObject2;
      if ((zzrV == null) || (zzrV.getStatus() == -1))
      {
        localObject2 = new zzib();
        zzrV = ((zzia)localObject2);
        zza((zzia)localObject2);
        zzc((zzia)localObject2);
        return (zzia<zzah>)localObject2;
      }
      if (zzrX == 0)
      {
        zzc(zzrV);
        localObject2 = zzrV;
        return (zzia<zzah>)localObject2;
      }
    }
    if (zzrX == 1)
    {
      zza(new zzib());
      zzc(zzrV);
      localzzia = zzrV;
      return localzzia;
    }
    if (zzrX == 2)
    {
      zzc(zzrV);
      localzzia = zzrV;
      return localzzia;
    }
    zzc(zzrV);
    zzia localzzia = zzrV;
    return localzzia;
  }
  
  protected void zzd(zzia<zzah> paramzzia)
  {
    for (;;)
    {
      synchronized (zznh)
      {
        Integer localInteger = (Integer)zzrS.get(paramzzia);
        if ((localInteger == null) || (localInteger.intValue() == 0)) {
          return;
        }
        localInteger = Integer.valueOf(localInteger.intValue() - 1);
        if (localInteger.intValue() != 0)
        {
          zzhx.zzab("Decremented use-counter for js engine.");
          zzrS.put(paramzzia, localInteger);
          return;
        }
      }
      zzhx.zzab("Removing js engine.");
      zzrS.remove(paramzzia);
      paramzzia.zza(zzrU, new zzia.zzb());
      paramzzia.zza(new zzia.zzd()new zzia.zzb
      {
        public void zzb(zzah paramAnonymouszzah)
        {
          paramAnonymouszzah.destroy();
        }
      }, new zzia.zzb());
    }
  }
  
  static class zza
  {
    static int zzsc = 60000;
    static int zzsd = 10000;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */