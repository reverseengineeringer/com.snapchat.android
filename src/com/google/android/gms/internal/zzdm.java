package com.google.android.gms.internal;

@zzgi
public final class zzdm
  extends zzdt.zza
{
  private final Object zznh = new Object();
  private zzdo.zza zzsA;
  private zzdl zzsB;
  
  public final void onAdClicked()
  {
    synchronized (zznh)
    {
      if (zzsB != null) {
        zzsB.zzah();
      }
      return;
    }
  }
  
  public final void onAdClosed()
  {
    synchronized (zznh)
    {
      if (zzsB != null) {
        zzsB.zzai();
      }
      return;
    }
  }
  
  public final void onAdFailedToLoad(int paramInt)
  {
    for (;;)
    {
      synchronized (zznh)
      {
        if (zzsA != null)
        {
          if (paramInt == 3)
          {
            paramInt = 1;
            zzsA.zzm(paramInt);
            zzsA = null;
          }
        }
        else {
          return;
        }
      }
      paramInt = 2;
    }
  }
  
  public final void onAdLeftApplication()
  {
    synchronized (zznh)
    {
      if (zzsB != null) {
        zzsB.zzaj();
      }
      return;
    }
  }
  
  public final void onAdLoaded()
  {
    synchronized (zznh)
    {
      if (zzsA != null)
      {
        zzsA.zzm(0);
        zzsA = null;
        return;
      }
      if (zzsB != null) {
        zzsB.zzal();
      }
      return;
    }
  }
  
  public final void onAdOpened()
  {
    synchronized (zznh)
    {
      if (zzsB != null) {
        zzsB.zzak();
      }
      return;
    }
  }
  
  public final void zza(zzdl paramzzdl)
  {
    synchronized (zznh)
    {
      zzsB = paramzzdl;
      return;
    }
  }
  
  public final void zza(zzdo.zza paramzza)
  {
    synchronized (zznh)
    {
      zzsA = paramzza;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */