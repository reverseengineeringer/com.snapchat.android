package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.internal.zzx;

@zzgi
public final class zzdw
  implements MediationBannerListener, MediationInterstitialListener
{
  private final zzdt zzsS;
  
  public zzdw(zzdt paramzzdt)
  {
    zzsS = paramzzdt;
  }
  
  public final void onAdClicked(MediationBannerAdapter paramMediationBannerAdapter)
  {
    zzx.zzbd("onAdClicked must be called on the main UI thread.");
    zzhx.zzY("Adapter called onAdClicked.");
    try
    {
      zzsS.onAdClicked();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      zzhx.zzd("Could not call onAdClicked.", paramMediationBannerAdapter);
    }
  }
  
  public final void onAdClicked(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    zzx.zzbd("onAdClicked must be called on the main UI thread.");
    zzhx.zzY("Adapter called onAdClicked.");
    try
    {
      zzsS.onAdClicked();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      zzhx.zzd("Could not call onAdClicked.", paramMediationInterstitialAdapter);
    }
  }
  
  public final void onAdClosed(MediationBannerAdapter paramMediationBannerAdapter)
  {
    zzx.zzbd("onAdClosed must be called on the main UI thread.");
    zzhx.zzY("Adapter called onAdClosed.");
    try
    {
      zzsS.onAdClosed();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      zzhx.zzd("Could not call onAdClosed.", paramMediationBannerAdapter);
    }
  }
  
  public final void onAdClosed(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    zzx.zzbd("onAdClosed must be called on the main UI thread.");
    zzhx.zzY("Adapter called onAdClosed.");
    try
    {
      zzsS.onAdClosed();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      zzhx.zzd("Could not call onAdClosed.", paramMediationInterstitialAdapter);
    }
  }
  
  public final void onAdFailedToLoad(MediationBannerAdapter paramMediationBannerAdapter, int paramInt)
  {
    zzx.zzbd("onAdFailedToLoad must be called on the main UI thread.");
    zzhx.zzY("Adapter called onAdFailedToLoad with error. " + paramInt);
    try
    {
      zzsS.onAdFailedToLoad(paramInt);
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      zzhx.zzd("Could not call onAdFailedToLoad.", paramMediationBannerAdapter);
    }
  }
  
  public final void onAdFailedToLoad(MediationInterstitialAdapter paramMediationInterstitialAdapter, int paramInt)
  {
    zzx.zzbd("onAdFailedToLoad must be called on the main UI thread.");
    zzhx.zzY("Adapter called onAdFailedToLoad with error " + paramInt + ".");
    try
    {
      zzsS.onAdFailedToLoad(paramInt);
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      zzhx.zzd("Could not call onAdFailedToLoad.", paramMediationInterstitialAdapter);
    }
  }
  
  public final void onAdLeftApplication(MediationBannerAdapter paramMediationBannerAdapter)
  {
    zzx.zzbd("onAdLeftApplication must be called on the main UI thread.");
    zzhx.zzY("Adapter called onAdLeftApplication.");
    try
    {
      zzsS.onAdLeftApplication();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      zzhx.zzd("Could not call onAdLeftApplication.", paramMediationBannerAdapter);
    }
  }
  
  public final void onAdLeftApplication(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    zzx.zzbd("onAdLeftApplication must be called on the main UI thread.");
    zzhx.zzY("Adapter called onAdLeftApplication.");
    try
    {
      zzsS.onAdLeftApplication();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      zzhx.zzd("Could not call onAdLeftApplication.", paramMediationInterstitialAdapter);
    }
  }
  
  public final void onAdLoaded(MediationBannerAdapter paramMediationBannerAdapter)
  {
    zzx.zzbd("onAdLoaded must be called on the main UI thread.");
    zzhx.zzY("Adapter called onAdLoaded.");
    try
    {
      zzsS.onAdLoaded();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      zzhx.zzd("Could not call onAdLoaded.", paramMediationBannerAdapter);
    }
  }
  
  public final void onAdLoaded(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    zzx.zzbd("onAdLoaded must be called on the main UI thread.");
    zzhx.zzY("Adapter called onAdLoaded.");
    try
    {
      zzsS.onAdLoaded();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      zzhx.zzd("Could not call onAdLoaded.", paramMediationInterstitialAdapter);
    }
  }
  
  public final void onAdOpened(MediationBannerAdapter paramMediationBannerAdapter)
  {
    zzx.zzbd("onAdOpened must be called on the main UI thread.");
    zzhx.zzY("Adapter called onAdOpened.");
    try
    {
      zzsS.onAdOpened();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      zzhx.zzd("Could not call onAdOpened.", paramMediationBannerAdapter);
    }
  }
  
  public final void onAdOpened(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    zzx.zzbd("onAdOpened must be called on the main UI thread.");
    zzhx.zzY("Adapter called onAdOpened.");
    try
    {
      zzsS.onAdOpened();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      zzhx.zzd("Could not call onAdOpened.", paramMediationInterstitialAdapter);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */