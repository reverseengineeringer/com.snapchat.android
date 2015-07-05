package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.zzm.zza;

class MapView$zza$1
  extends zzm.zza
{
  MapView$zza$1(MapView.zza paramzza, OnMapReadyCallback paramOnMapReadyCallback) {}
  
  public void zza(IGoogleMapDelegate paramIGoogleMapDelegate)
  {
    zzapY.onMapReady(new GoogleMap(paramIGoogleMapDelegate));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapView.zza.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */