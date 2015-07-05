package com.google.android.gms.internal;

import android.os.Bundle;

@zzgi
public class zzhj
{
  private final zzhg zzmV;
  private final Object zznh = new Object();
  private final String zzyC;
  private int zzze;
  private int zzzf;
  
  zzhj(zzhg paramzzhg, String paramString)
  {
    zzmV = paramzzhg;
    zzyC = paramString;
  }
  
  public zzhj(String paramString)
  {
    this(zzab.zzaP(), paramString);
  }
  
  public Bundle toBundle()
  {
    synchronized (zznh)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("pmnli", zzze);
      localBundle.putInt("pmnll", zzzf);
      return localBundle;
    }
  }
  
  public void zzg(int paramInt1, int paramInt2)
  {
    synchronized (zznh)
    {
      zzze = paramInt1;
      zzzf = paramInt2;
      zzmV.zza(zzyC, this);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */