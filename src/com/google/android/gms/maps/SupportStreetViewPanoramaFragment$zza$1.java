package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.zzu.zza;

class SupportStreetViewPanoramaFragment$zza$1
  extends zzu.zza
{
  SupportStreetViewPanoramaFragment$zza$1(SupportStreetViewPanoramaFragment.zza paramzza, OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback) {}
  
  public void zza(IStreetViewPanoramaDelegate paramIStreetViewPanoramaDelegate)
  {
    zzaqs.onStreetViewPanoramaReady(new StreetViewPanorama(paramIStreetViewPanoramaDelegate));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.SupportStreetViewPanoramaFragment.zza.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */