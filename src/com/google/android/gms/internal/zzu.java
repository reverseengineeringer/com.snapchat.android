package com.google.android.gms.internal;

import android.net.Uri.Builder;
import android.text.TextUtils;

@zzgi
public class zzu
{
  private zza zzmq;
  private boolean zzmr;
  private boolean zzms;
  
  public zzu()
  {
    zzms = ((Boolean)zzca.zzqq.get()).booleanValue();
  }
  
  public zzu(boolean paramBoolean)
  {
    zzms = paramBoolean;
  }
  
  public void recordClick()
  {
    zzmr = true;
  }
  
  public void zza(zza paramzza)
  {
    zzmq = paramzza;
  }
  
  public boolean zzaB()
  {
    return (!zzms) || (zzmr);
  }
  
  public void zzd(String paramString)
  {
    zzhx.zzY("Action was blocked because no click was detected.");
    if (zzmq != null) {
      zzmq.zze(paramString);
    }
  }
  
  public static abstract interface zza
  {
    public abstract void zze(String paramString);
  }
  
  @zzgi
  public static class zzb
    implements zzu.zza
  {
    private final zzhe.zza zzmt;
    private final zzic zzmu;
    
    public zzb(zzhe.zza paramzza, zzic paramzzic)
    {
      zzmt = paramzza;
      zzmu = paramzzic;
    }
    
    public void zze(String paramString)
    {
      zzhx.zzY("An auto-clicking creative is blocked");
      Uri.Builder localBuilder = new Uri.Builder();
      localBuilder.scheme("https");
      localBuilder.path("//pagead2.googlesyndication.com/pagead/gen_204");
      localBuilder.appendQueryParameter("id", "gmob-apps-blocked-navigation");
      if (!TextUtils.isEmpty(paramString)) {
        localBuilder.appendQueryParameter("navigationURL", paramString);
      }
      if ((zzmt != null) && (zzmt.zzyz != null) && (!TextUtils.isEmpty(zzmt.zzyz.zzwN))) {
        localBuilder.appendQueryParameter("debugDialog", zzmt.zzyz.zzwN);
      }
      zzab.zzaM().zzc(zzmu.getContext(), zzmu.zzeJ().zzzH, localBuilder.toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */