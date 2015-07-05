package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;

@zzgi
public class zzcl
  extends zzco.zza
  implements zzcn.zza
{
  private final Object zznh = new Object();
  private final String zzrk;
  private final Drawable zzrl;
  private final String zzrm;
  private final Drawable zzrn;
  private final String zzro;
  private final double zzrp;
  private final String zzrq;
  private final String zzrr;
  private zzcn zzrs;
  
  public zzcl(String paramString1, Drawable paramDrawable1, String paramString2, Drawable paramDrawable2, String paramString3, double paramDouble, String paramString4, String paramString5)
  {
    zzrk = paramString1;
    zzrl = paramDrawable1;
    zzrm = paramString2;
    zzrn = paramDrawable2;
    zzro = paramString3;
    zzrp = paramDouble;
    zzrq = paramString4;
    zzrr = paramString5;
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
        zzhx.zzZ("Attempt to record impression before app install ad initialized.");
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
  
  public double zzcA()
  {
    return zzrp;
  }
  
  public String zzcB()
  {
    return zzrq;
  }
  
  public String zzcC()
  {
    return zzrr;
  }
  
  public String zzcw()
  {
    return zzrk;
  }
  
  public zzd zzcx()
  {
    return zze.zzn(zzrl);
  }
  
  public zzd zzcy()
  {
    return zze.zzn(zzrn);
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
        zzhx.zzZ("Attempt to perform click before app install ad initialized.");
        return;
      }
      zzrs.zzb("2", paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzcl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */