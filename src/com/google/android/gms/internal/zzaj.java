package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import org.json.JSONObject;

@zzgi
public class zzaj
  implements zzah
{
  private final zzic zzmu;
  
  public zzaj(Context paramContext, zzhy paramzzhy)
  {
    zzmu = zzab.zzaN().zza(paramContext, new zzba(), false, false, null, paramzzhy);
  }
  
  private void runOnUiThread(Runnable paramRunnable)
  {
    if (zzbe.zzbD().zzeC())
    {
      paramRunnable.run();
      return;
    }
    zzhw.zzzG.post(paramRunnable);
  }
  
  public void destroy()
  {
    zzmu.destroy();
  }
  
  public void zza(final zzah.zza paramzza)
  {
    zzmu.zzeG().zza(new zzid.zza()
    {
      public void zza(zzic paramAnonymouszzic, boolean paramAnonymousBoolean)
      {
        paramzza.zzbk();
      }
    });
  }
  
  public void zza(zzat paramzzat, zzep paramzzep, zzct paramzzct, zzes paramzzes, boolean paramBoolean, zzcw paramzzcw, zzcy paramzzcy, zzu paramzzu, zzeh paramzzeh)
  {
    zzmu.zzeG().zzb(paramzzat, paramzzep, paramzzct, paramzzes, paramBoolean, paramzzcw, paramzzcy, new zzu(false), paramzzeh);
  }
  
  public void zza(String paramString, zzcv paramzzcv)
  {
    zzmu.zzeG().zza(paramString, paramzzcv);
  }
  
  public void zza(final String paramString, final JSONObject paramJSONObject)
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        zzaj.zza(zzaj.this).zza(paramString, paramJSONObject);
      }
    });
  }
  
  public void zzb(String paramString, zzcv paramzzcv)
  {
    zzmu.zzeG().zzb(paramString, paramzzcv);
  }
  
  public void zzb(final String paramString1, final String paramString2)
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        zzaj.zza(zzaj.this).zzb(paramString1, paramString2);
      }
    });
  }
  
  public void zzf(String paramString)
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        zzaj.zza(zzaj.this).loadData(zznU, "text/html", "UTF-8");
      }
    });
  }
  
  public void zzg(final String paramString)
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        zzaj.zza(zzaj.this).loadUrl(paramString);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzaj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */