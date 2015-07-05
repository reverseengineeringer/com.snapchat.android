package com.google.android.gms.ads.mediation.customevent;

import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.zzhx;

class CustomEventAdapter$zzb
  implements CustomEventInterstitialListener
{
  private final CustomEventAdapter zzAu;
  private final MediationInterstitialListener zzm;
  
  public CustomEventAdapter$zzb(CustomEventAdapter paramCustomEventAdapter1, CustomEventAdapter paramCustomEventAdapter2, MediationInterstitialListener paramMediationInterstitialListener)
  {
    zzAu = paramCustomEventAdapter2;
    zzm = paramMediationInterstitialListener;
  }
  
  public void onAdClicked()
  {
    zzhx.zzY("Custom event adapter called onAdClicked.");
    zzm.onAdClicked(zzAu);
  }
  
  public void onAdClosed()
  {
    zzhx.zzY("Custom event adapter called onAdClosed.");
    zzm.onAdClosed(zzAu);
  }
  
  public void onAdFailedToLoad(int paramInt)
  {
    zzhx.zzY("Custom event adapter called onFailedToReceiveAd.");
    zzm.onAdFailedToLoad(zzAu, paramInt);
  }
  
  public void onAdLeftApplication()
  {
    zzhx.zzY("Custom event adapter called onAdLeftApplication.");
    zzm.onAdLeftApplication(zzAu);
  }
  
  public void onAdLoaded()
  {
    zzhx.zzY("Custom event adapter called onReceivedAd.");
    zzm.onAdLoaded(zzAv);
  }
  
  public void onAdOpened()
  {
    zzhx.zzY("Custom event adapter called onAdOpened.");
    zzm.onAdOpened(zzAu);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.mediation.customevent.CustomEventAdapter.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */