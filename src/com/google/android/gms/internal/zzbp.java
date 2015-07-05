package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import java.util.concurrent.atomic.AtomicBoolean;

public class zzbp
{
  private zzat zzoJ;
  private AdListener zzoK;
  private final zzdq zzpD = new zzdq();
  private final zzaz zzpE;
  private final AtomicBoolean zzpF;
  private zzbi zzpG;
  private String zzpH;
  private ViewGroup zzpI;
  private InAppPurchaseListener zzpJ;
  private PlayStorePurchaseListener zzpK;
  private OnCustomRenderedAdLoadedListener zzpL;
  private AppEventListener zzpd;
  private AdSize[] zzpe;
  private String zzpf;
  
  public zzbp(ViewGroup paramViewGroup)
  {
    this(paramViewGroup, null, false, zzaz.zzbA());
  }
  
  public zzbp(ViewGroup paramViewGroup, AttributeSet paramAttributeSet, boolean paramBoolean)
  {
    this(paramViewGroup, paramAttributeSet, paramBoolean, zzaz.zzbA());
  }
  
  zzbp(ViewGroup paramViewGroup, AttributeSet paramAttributeSet, boolean paramBoolean, zzaz paramzzaz)
  {
    this(paramViewGroup, paramAttributeSet, paramBoolean, paramzzaz, null);
  }
  
  zzbp(ViewGroup paramViewGroup, AttributeSet paramAttributeSet, boolean paramBoolean, zzaz paramzzaz, zzbi paramzzbi)
  {
    zzpI = paramViewGroup;
    zzpE = paramzzaz;
    zzpG = paramzzbi;
    zzpF = new AtomicBoolean(false);
    if (paramAttributeSet != null) {
      paramzzaz = paramViewGroup.getContext();
    }
    try
    {
      paramAttributeSet = new zzbd(paramzzaz, paramAttributeSet);
      zzpe = paramAttributeSet.zzi(paramBoolean);
      zzpf = paramAttributeSet.getAdUnitId();
      if (paramViewGroup.isInEditMode()) {
        zzbe.zzbD().zza(paramViewGroup, new zzba(paramzzaz, zzpe[0]), "Ads by Google");
      }
      return;
    }
    catch (IllegalArgumentException paramAttributeSet)
    {
      zzbe.zzbD().zza(paramViewGroup, new zzba(paramzzaz, AdSize.BANNER), paramAttributeSet.getMessage(), paramAttributeSet.getMessage());
    }
  }
  
  private void zzbN()
  {
    try
    {
      zzd localzzd = zzpG.zzac();
      if (localzzd == null) {
        return;
      }
      zzpI.addView((View)zze.zzf(localzzd));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Failed to get an ad frame.", localRemoteException);
    }
  }
  
  private void zzbO()
  {
    if (((zzpe == null) || (zzpf == null)) && (zzpG == null)) {
      throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
    }
    Context localContext = zzpI.getContext();
    zzpG = zzbe.zzbE().zza(localContext, new zzba(localContext, zzpe), zzpf, zzpD);
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
    zzpG.zza(zzbe.zzbF());
    zzbN();
  }
  
  public void destroy()
  {
    try
    {
      if (zzpG != null) {
        zzpG.destroy();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Failed to destroy AdView.", localRemoteException);
    }
  }
  
  public AdListener getAdListener()
  {
    return zzoK;
  }
  
  public AdSize getAdSize()
  {
    try
    {
      if (zzpG != null)
      {
        Object localObject = zzpG.zzad();
        if (localObject != null)
        {
          localObject = ((zzba)localObject).zzbB();
          return (AdSize)localObject;
        }
      }
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Failed to get the current AdSize.", localRemoteException);
      if (zzpe != null) {
        return zzpe[0];
      }
    }
    return null;
  }
  
  public AdSize[] getAdSizes()
  {
    return zzpe;
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
  
  public void pause()
  {
    try
    {
      if (zzpG != null) {
        zzpG.pause();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Failed to call pause.", localRemoteException);
    }
  }
  
  public void recordManualImpression()
  {
    if (zzpF.getAndSet(true)) {}
    for (;;)
    {
      return;
      try
      {
        if (zzpG != null)
        {
          zzpG.zzan();
          return;
        }
      }
      catch (RemoteException localRemoteException)
      {
        zzhx.zzd("Failed to record impression.", localRemoteException);
      }
    }
  }
  
  public void resume()
  {
    try
    {
      if (zzpG != null) {
        zzpG.resume();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Failed to call resume.", localRemoteException);
    }
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
  
  public void setAdSizes(AdSize... paramVarArgs)
  {
    if (zzpe != null) {
      throw new IllegalStateException("The ad size can only be set once on AdView.");
    }
    zza(paramVarArgs);
  }
  
  public void setAdUnitId(String paramString)
  {
    if (zzpf != null) {
      throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
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
          break label56;
        }
      }
      label56:
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
    zzpL = paramOnCustomRenderedAdLoadedListener;
    try
    {
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
      zzhx.zzd("Failed to set the onCustomRenderedAdLoadedListener.", paramOnCustomRenderedAdLoadedListener);
    }
  }
  
  public void setPlayStorePurchaseParams(PlayStorePurchaseListener paramPlayStorePurchaseListener, String paramString)
  {
    if (zzpJ != null) {
      throw new IllegalStateException("InAppPurchaseListener has already been set.");
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
          break label62;
        }
      }
      label62:
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
        zzbO();
      }
      if (zzpG.zza(zzpE.zza(zzpI.getContext(), paramzzbo))) {
        zzpD.zze(paramzzbo.zzbJ());
      }
      return;
    }
    catch (RemoteException paramzzbo)
    {
      zzhx.zzd("Failed to load ad.", paramzzbo);
    }
  }
  
  public void zza(AdSize... paramVarArgs)
  {
    zzpe = paramVarArgs;
    try
    {
      if (zzpG != null) {
        zzpG.zza(new zzba(zzpI.getContext(), zzpe));
      }
      zzpI.requestLayout();
      return;
    }
    catch (RemoteException paramVarArgs)
    {
      for (;;)
      {
        zzhx.zzd("Failed to set the ad size.", paramVarArgs);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */