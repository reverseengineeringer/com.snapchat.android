package com.google.android.gms.maps;

import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.maps.internal.zzd.zza;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.internal.zzl;

class GoogleMap$13
  extends zzd.zza
{
  GoogleMap$13(GoogleMap paramGoogleMap, GoogleMap.InfoWindowAdapter paramInfoWindowAdapter) {}
  
  public zzd zzf(zzl paramzzl)
  {
    return zze.zzn(zzapH.getInfoWindow(new Marker(paramzzl)));
  }
  
  public zzd zzg(zzl paramzzl)
  {
    return zze.zzn(zzapH.getInfoContents(new Marker(paramzzl)));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */