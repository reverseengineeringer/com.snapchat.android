package com.google.android.gms.internal;

import com.google.android.gms.ads.AdListener;

@zzgi
public final class zzav
  extends zzbh.zza
{
  private final AdListener zzoK;
  
  public zzav(AdListener paramAdListener)
  {
    zzoK = paramAdListener;
  }
  
  public final void onAdClosed()
  {
    zzoK.onAdClosed();
  }
  
  public final void onAdFailedToLoad(int paramInt)
  {
    zzoK.onAdFailedToLoad(paramInt);
  }
  
  public final void onAdLeftApplication()
  {
    zzoK.onAdLeftApplication();
  }
  
  public final void onAdLoaded()
  {
    zzoK.onAdLoaded();
  }
  
  public final void onAdOpened()
  {
    zzoK.onAdOpened();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzav
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */