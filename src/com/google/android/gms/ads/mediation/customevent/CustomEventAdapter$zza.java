package com.google.android.gms.ads.mediation.customevent;

import android.view.View;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.internal.zzhx;

final class CustomEventAdapter$zza
  implements CustomEventBannerListener
{
  private final CustomEventAdapter zzAu;
  private final MediationBannerListener zzl;
  
  public CustomEventAdapter$zza(CustomEventAdapter paramCustomEventAdapter, MediationBannerListener paramMediationBannerListener)
  {
    zzAu = paramCustomEventAdapter;
    zzl = paramMediationBannerListener;
  }
  
  public final void onAdClicked()
  {
    zzhx.zzY("Custom event adapter called onAdClicked.");
    zzl.onAdClicked(zzAu);
  }
  
  public final void onAdClosed()
  {
    zzhx.zzY("Custom event adapter called onAdClosed.");
    zzl.onAdClosed(zzAu);
  }
  
  public final void onAdFailedToLoad(int paramInt)
  {
    zzhx.zzY("Custom event adapter called onAdFailedToLoad.");
    zzl.onAdFailedToLoad(zzAu, paramInt);
  }
  
  public final void onAdLeftApplication()
  {
    zzhx.zzY("Custom event adapter called onAdLeftApplication.");
    zzl.onAdLeftApplication(zzAu);
  }
  
  public final void onAdLoaded(View paramView)
  {
    zzhx.zzY("Custom event adapter called onAdLoaded.");
    CustomEventAdapter.zza(zzAu, paramView);
    zzl.onAdLoaded(zzAu);
  }
  
  public final void onAdOpened()
  {
    zzhx.zzY("Custom event adapter called onAdOpened.");
    zzl.onAdOpened(zzAu);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.mediation.customevent.CustomEventAdapter.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */