package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.zzat;
import com.google.android.gms.internal.zzbq;

public final class InterstitialAd
{
  private final zzbq zzlm;
  
  public InterstitialAd(Context paramContext)
  {
    zzlm = new zzbq(paramContext);
  }
  
  public final AdListener getAdListener()
  {
    return zzlm.getAdListener();
  }
  
  public final String getAdUnitId()
  {
    return zzlm.getAdUnitId();
  }
  
  public final InAppPurchaseListener getInAppPurchaseListener()
  {
    return zzlm.getInAppPurchaseListener();
  }
  
  public final String getMediationAdapterClassName()
  {
    return zzlm.getMediationAdapterClassName();
  }
  
  public final boolean isLoaded()
  {
    return zzlm.isLoaded();
  }
  
  public final void loadAd(AdRequest paramAdRequest)
  {
    zzlm.zza(paramAdRequest.zzY());
  }
  
  public final void setAdListener(AdListener paramAdListener)
  {
    zzlm.setAdListener(paramAdListener);
    if ((paramAdListener != null) && ((paramAdListener instanceof zzat))) {
      zzlm.zza((zzat)paramAdListener);
    }
    while (paramAdListener != null) {
      return;
    }
    zzlm.zza(null);
  }
  
  public final void setAdUnitId(String paramString)
  {
    zzlm.setAdUnitId(paramString);
  }
  
  public final void setInAppPurchaseListener(InAppPurchaseListener paramInAppPurchaseListener)
  {
    zzlm.setInAppPurchaseListener(paramInAppPurchaseListener);
  }
  
  public final void setPlayStorePurchaseParams(PlayStorePurchaseListener paramPlayStorePurchaseListener, String paramString)
  {
    zzlm.setPlayStorePurchaseParams(paramPlayStorePurchaseListener, paramString);
  }
  
  public final void show()
  {
    zzlm.show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.InterstitialAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */