package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.internal.zzbq;

public final class PublisherInterstitialAd
{
  private final zzbq zzlm = new zzbq(paramContext, this);
  
  public PublisherInterstitialAd(Context paramContext) {}
  
  public final AdListener getAdListener()
  {
    return zzlm.getAdListener();
  }
  
  public final String getAdUnitId()
  {
    return zzlm.getAdUnitId();
  }
  
  public final AppEventListener getAppEventListener()
  {
    return zzlm.getAppEventListener();
  }
  
  public final String getMediationAdapterClassName()
  {
    return zzlm.getMediationAdapterClassName();
  }
  
  public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener()
  {
    return zzlm.getOnCustomRenderedAdLoadedListener();
  }
  
  public final boolean isLoaded()
  {
    return zzlm.isLoaded();
  }
  
  public final void loadAd(PublisherAdRequest paramPublisherAdRequest)
  {
    zzlm.zza(paramPublisherAdRequest.zzY());
  }
  
  public final void setAdListener(AdListener paramAdListener)
  {
    zzlm.setAdListener(paramAdListener);
  }
  
  public final void setAdUnitId(String paramString)
  {
    zzlm.setAdUnitId(paramString);
  }
  
  public final void setAppEventListener(AppEventListener paramAppEventListener)
  {
    zzlm.setAppEventListener(paramAppEventListener);
  }
  
  public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener paramOnCustomRenderedAdLoadedListener)
  {
    zzlm.setOnCustomRenderedAdLoadedListener(paramOnCustomRenderedAdLoadedListener);
  }
  
  public final void show()
  {
    zzlm.show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.doubleclick.PublisherInterstitialAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */