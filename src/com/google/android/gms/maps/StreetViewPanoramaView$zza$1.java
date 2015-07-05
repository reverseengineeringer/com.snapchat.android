package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.zzu.zza;

class StreetViewPanoramaView$zza$1
  extends zzu.zza
{
  StreetViewPanoramaView$zza$1(StreetViewPanoramaView.zza paramzza, OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback) {}
  
  public void zza(IStreetViewPanoramaDelegate paramIStreetViewPanoramaDelegate)
  {
    zzaqs.onStreetViewPanoramaReady(new StreetViewPanorama(paramIStreetViewPanoramaDelegate));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaView.zza.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */