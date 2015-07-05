package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.zzhx;

public final class CustomEventAdapter
  implements MediationBannerAdapter, MediationInterstitialAdapter
{
  CustomEventBanner zzAs;
  CustomEventInterstitial zzAt;
  private View zzn;
  
  private static <T> T zza(String paramString)
  {
    try
    {
      Object localObject = Class.forName(paramString).newInstance();
      return (T)localObject;
    }
    catch (Throwable localThrowable)
    {
      zzhx.zzac("Could not instantiate custom event adapter: " + paramString + ". " + localThrowable.getMessage());
    }
    return null;
  }
  
  private void zza(View paramView)
  {
    zzn = paramView;
  }
  
  public final View getBannerView()
  {
    return zzn;
  }
  
  public final void onDestroy()
  {
    if (zzAs != null) {
      zzAs.onDestroy();
    }
    if (zzAt != null) {
      zzAt.onDestroy();
    }
  }
  
  public final void onPause()
  {
    if (zzAs != null) {
      zzAs.onPause();
    }
    if (zzAt != null) {
      zzAt.onPause();
    }
  }
  
  public final void onResume()
  {
    if (zzAs != null) {
      zzAs.onResume();
    }
    if (zzAt != null) {
      zzAt.onResume();
    }
  }
  
  public final void requestBannerAd(Context paramContext, MediationBannerListener paramMediationBannerListener, Bundle paramBundle1, AdSize paramAdSize, MediationAdRequest paramMediationAdRequest, Bundle paramBundle2)
  {
    zzAs = ((CustomEventBanner)zza(paramBundle1.getString("class_name")));
    if (zzAs == null)
    {
      paramMediationBannerListener.onAdFailedToLoad(this, 0);
      return;
    }
    if (paramBundle2 == null) {}
    for (paramBundle2 = null;; paramBundle2 = paramBundle2.getBundle(paramBundle1.getString("class_name")))
    {
      zzAs.requestBannerAd(paramContext, new zza(this, paramMediationBannerListener), paramBundle1.getString("parameter"), paramAdSize, paramMediationAdRequest, paramBundle2);
      return;
    }
  }
  
  public final void requestInterstitialAd(Context paramContext, MediationInterstitialListener paramMediationInterstitialListener, Bundle paramBundle1, MediationAdRequest paramMediationAdRequest, Bundle paramBundle2)
  {
    zzAt = ((CustomEventInterstitial)zza(paramBundle1.getString("class_name")));
    if (zzAt == null)
    {
      paramMediationInterstitialListener.onAdFailedToLoad(this, 0);
      return;
    }
    if (paramBundle2 == null) {}
    for (paramBundle2 = null;; paramBundle2 = paramBundle2.getBundle(paramBundle1.getString("class_name")))
    {
      zzAt.requestInterstitialAd(paramContext, zza(paramMediationInterstitialListener), paramBundle1.getString("parameter"), paramMediationAdRequest, paramBundle2);
      return;
    }
  }
  
  public final void showInterstitial()
  {
    zzAt.showInterstitial();
  }
  
  final zzb zza(MediationInterstitialListener paramMediationInterstitialListener)
  {
    return new zzb(this, paramMediationInterstitialListener);
  }
  
  static final class zza
    implements CustomEventBannerListener
  {
    private final CustomEventAdapter zzAu;
    private final MediationBannerListener zzl;
    
    public zza(CustomEventAdapter paramCustomEventAdapter, MediationBannerListener paramMediationBannerListener)
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
  
  class zzb
    implements CustomEventInterstitialListener
  {
    private final CustomEventAdapter zzAu;
    private final MediationInterstitialListener zzm;
    
    public zzb(CustomEventAdapter paramCustomEventAdapter, MediationInterstitialListener paramMediationInterstitialListener)
    {
      zzAu = paramCustomEventAdapter;
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
      zzm.onAdLoaded(CustomEventAdapter.this);
    }
    
    public void onAdOpened()
    {
      zzhx.zzY("Custom event adapter called onAdOpened.");
      zzm.onAdOpened(zzAu);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.mediation.customevent.CustomEventAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */