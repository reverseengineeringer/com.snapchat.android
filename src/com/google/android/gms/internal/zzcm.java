package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;

@zzgi
public class zzcm
  extends zzcp.zza
  implements zzcn.zza
{
  private final Object zznh = new Object();
  private final String zzrk;
  private final Drawable zzrl;
  private final String zzrm;
  private final String zzro;
  private zzcn zzrs;
  private final Drawable zzrt;
  private final String zzru;
  
  public zzcm(String paramString1, Drawable paramDrawable1, String paramString2, Drawable paramDrawable2, String paramString3, String paramString4)
  {
    zzrk = paramString1;
    zzrl = paramDrawable1;
    zzrm = paramString2;
    zzrt = paramDrawable2;
    zzro = paramString3;
    zzru = paramString4;
  }
  
  public String getBody()
  {
    return zzrm;
  }
  
  public void recordImpression()
  {
    synchronized (zznh)
    {
      if (zzrs == null)
      {
        zzhx.zzZ("Attempt to record impression before content ad initialized.");
        return;
      }
      zzrs.recordImpression();
      return;
    }
  }
  
  public void zza(zzcn paramzzcn)
  {
    synchronized (zznh)
    {
      zzrs = paramzzcn;
      return;
    }
  }
  
  public zzd zzcD()
  {
    return zze.zzn(zzrt);
  }
  
  public String zzcE()
  {
    return zzru;
  }
  
  public String zzcw()
  {
    return zzrk;
  }
  
  public zzd zzcx()
  {
    return zze.zzn(zzrl);
  }
  
  public String zzcz()
  {
    return zzro;
  }
  
  public void zzl(int paramInt)
  {
    synchronized (zznh)
    {
      if (zzrs == null)
      {
        zzhx.zzZ("Attempt to perform click before content ad initialized.");
        return;
      }
      zzrs.zzb("1", paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzcm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */