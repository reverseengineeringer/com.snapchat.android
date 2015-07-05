package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;

public class zzbq
{
  private final Context mContext;
  private zzat zzoJ;
  private AdListener zzoK;
  private final zzdq zzpD = new zzdq();
  private final zzaz zzpE;
  private zzbi zzpG;
  private String zzpH;
  private InAppPurchaseListener zzpJ;
  private PlayStorePurchaseListener zzpK;
  private OnCustomRenderedAdLoadedListener zzpL;
  private PublisherInterstitialAd zzpM;
  private AppEventListener zzpd;
  private String zzpf;
  
  public zzbq(Context paramContext)
  {
    this(paramContext, zzaz.zzbA(), null);
  }
  
  public zzbq(Context paramContext, PublisherInterstitialAd paramPublisherInterstitialAd)
  {
    this(paramContext, zzaz.zzbA(), paramPublisherInterstitialAd);
  }
  
  public zzbq(Context paramContext, zzaz paramzzaz, PublisherInterstitialAd paramPublisherInterstitialAd)
  {
    mContext = paramContext;
    zzpE = paramzzaz;
    zzpM = paramPublisherInterstitialAd;
  }
  
  private void zzy(String paramString)
  {
    if (zzpf == null) {
      zzz(paramString);
    }
    zzpG = zzbe.zzbE().zza(mContext, new zzba(), zzpf, zzpD);
    if (zzoK != null) {
      zzpG.zza(new zzav(zzoK));
    }
    if (zzoJ != null) {
      zzpG.zza(new zzau(zzoJ));
    }
    if (zzpd != null) {
      zzpG.zza(new zzbc(zzpd));
    }
    if (zzpJ != null) {
      zzpG.zza(new zzft(zzpJ));
    }
    if (zzpK != null) {
      zzpG.zza(new zzfx(zzpK), zzpH);
    }
    if (zzpL != null) {
      zzpG.zza(new zzck(zzpL));
    }
  }
  
  private void zzz(String paramString)
  {
    if (zzpG == null) {
      throw new IllegalStateException("The ad unit ID must be set on InterstitialAd before " + paramString + " is called.");
    }
  }
  
  public AdListener getAdListener()
  {
    return zzoK;
  }
  
  public String getAdUnitId()
  {
    return zzpf;
  }
  
  public AppEventListener getAppEventListener()
  {
    return zzpd;
  }
  
  public InAppPurchaseListener getInAppPurchaseListener()
  {
    return zzpJ;
  }
  
  public String getMediationAdapterClassName()
  {
    try
    {
      if (zzpG != null)
      {
        String str = zzpG.getMediationAdapterClassName();
        return str;
      }
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Failed to get the mediation adapter class name.", localRemoteException);
    }
    return null;
  }
  
  public OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener()
  {
    return zzpL;
  }
  
  public boolean isLoaded()
  {
    try
    {
      if (zzpG == null) {
        return false;
      }
      boolean bool = zzpG.isReady();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Failed to check if ad is ready.", localRemoteException);
    }
    return false;
  }
  
  public void setAdListener(AdListener paramAdListener)
  {
    try
    {
      zzoK = paramAdListener;
      zzbi localzzbi;
      if (zzpG != null)
      {
        localzzbi = zzpG;
        if (paramAdListener == null) {
          break label38;
        }
      }
      label38:
      for (paramAdListener = new zzav(paramAdListener);; paramAdListener = null)
      {
        localzzbi.zza(paramAdListener);
        return;
      }
      return;
    }
    catch (RemoteException paramAdListener)
    {
      zzhx.zzd("Failed to set the AdListener.", paramAdListener);
    }
  }
  
  public void setAdUnitId(String paramString)
  {
    if (zzpf != null) {
      throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
    }
    zzpf = paramString;
  }
  
  public void setAppEventListener(AppEventListener paramAppEventListener)
  {
    try
    {
      zzpd = paramAppEventListener;
      zzbi localzzbi;
      if (zzpG != null)
      {
        localzzbi = zzpG;
        if (paramAppEventListener == null) {
          break label38;
        }
      }
      label38:
      for (paramAppEventListener = new zzbc(paramAppEventListener);; paramAppEventListener = null)
      {
        localzzbi.zza(paramAppEventListener);
        return;
      }
      return;
    }
    catch (RemoteException paramAppEventListener)
    {
      zzhx.zzd("Failed to set the AppEventListener.", paramAppEventListener);
    }
  }
  
  public void setInAppPurchaseListener(InAppPurchaseListener paramInAppPurchaseListener)
  {
    if (zzpK != null) {
      throw new IllegalStateException("Play store purchase parameter has already been set.");
    }
    try
    {
      zzpJ = paramInAppPurchaseListener;
      zzbi localzzbi;
      if (zzpG != null)
      {
        localzzbi = zzpG;
        if (paramInAppPurchaseListener == null) {
          break label55;
        }
      }
      label55:
      for (paramInAppPurchaseListener = new zzft(paramInAppPurchaseListener);; paramInAppPurchaseListener = null)
      {
        localzzbi.zza(paramInAppPurchaseListener);
        return;
      }
      return;
    }
    catch (RemoteException paramInAppPurchaseListener)
    {
      zzhx.zzd("Failed to set the InAppPurchaseListener.", paramInAppPurchaseListener);
    }
  }
  
  public void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener paramOnCustomRenderedAdLoadedListener)
  {
    try
    {
      zzpL = paramOnCustomRenderedAdLoadedListener;
      zzbi localzzbi;
      if (zzpG != null)
      {
        localzzbi = zzpG;
        if (paramOnCustomRenderedAdLoadedListener == null) {
          break label38;
        }
      }
      label38:
      for (paramOnCustomRenderedAdLoadedListener = new zzck(paramOnCustomRenderedAdLoadedListener);; paramOnCustomRenderedAdLoadedListener = null)
      {
        localzzbi.zza(paramOnCustomRenderedAdLoadedListener);
        return;
      }
      return;
    }
    catch (RemoteException paramOnCustomRenderedAdLoadedListener)
    {
      zzhx.zzd("Failed to set the OnCustomRenderedAdLoadedListener.", paramOnCustomRenderedAdLoadedListener);
    }
  }
  
  public void setPlayStorePurchaseParams(PlayStorePurchaseListener paramPlayStorePurchaseListener, String paramString)
  {
    if (zzpJ != null) {
      throw new IllegalStateException("In app purchase parameter has already been set.");
    }
    try
    {
      zzpK = paramPlayStorePurchaseListener;
      zzpH = paramString;
      zzbi localzzbi;
      if (zzpG != null)
      {
        localzzbi = zzpG;
        if (paramPlayStorePurchaseListener == null) {
          break label61;
        }
      }
      label61:
      for (paramPlayStorePurchaseListener = new zzfx(paramPlayStorePurchaseListener);; paramPlayStorePurchaseListener = null)
      {
        localzzbi.zza(paramPlayStorePurchaseListener, paramString);
        return;
      }
      return;
    }
    catch (RemoteException paramPlayStorePurchaseListener)
    {
      zzhx.zzd("Failed to set the play store purchase parameter.", paramPlayStorePurchaseListener);
    }
  }
  
  public void show()
  {
    try
    {
      zzz("show");
      zzpG.showInterstitial();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Failed to show interstitial.", localRemoteException);
    }
  }
  
  public void zza(zzat paramzzat)
  {
    try
    {
      zzoJ = paramzzat;
      zzbi localzzbi;
      if (zzpG != null)
      {
        localzzbi = zzpG;
        if (paramzzat == null) {
          break label38;
        }
      }
      label38:
      for (paramzzat = new zzau(paramzzat);; paramzzat = null)
      {
        localzzbi.zza(paramzzat);
        return;
      }
      return;
    }
    catch (RemoteException paramzzat)
    {
      zzhx.zzd("Failed to set the AdClickListener.", paramzzat);
    }
  }
  
  public void zza(zzbo paramzzbo)
  {
    try
    {
      if (zzpG == null) {
        zzy("loadAd");
      }
      if (zzpG.zza(zzpE.zza(mContext, paramzzbo))) {
        zzpD.zze(paramzzbo.zzbJ());
      }
      return;
    }
    catch (RemoteException paramzzbo)
    {
      zzhx.zzd("Failed to load ad.", paramzzbo);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */