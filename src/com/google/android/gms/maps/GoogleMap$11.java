package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.zzo.zza;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.internal.zzl;

class GoogleMap$11
  extends zzo.zza
{
  GoogleMap$11(GoogleMap paramGoogleMap, GoogleMap.OnMarkerDragListener paramOnMarkerDragListener) {}
  
  public void zzb(zzl paramzzl)
  {
    zzapF.onMarkerDragStart(new Marker(paramzzl));
  }
  
  public void zzc(zzl paramzzl)
  {
    zzapF.onMarkerDragEnd(new Marker(paramzzl));
  }
  
  public void zzd(zzl paramzzl)
  {
    zzapF.onMarkerDrag(new Marker(paramzzl));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */