package com.google.android.gms.maps;

import android.location.Location;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.maps.internal.zzq.zza;

class GoogleMap$2
  extends zzq.zza
{
  GoogleMap$2(GoogleMap paramGoogleMap, GoogleMap.OnMyLocationChangeListener paramOnMyLocationChangeListener) {}
  
  public void zzc(Location paramLocation)
  {
    zzapu.onMyLocationChange(paramLocation);
  }
  
  public void zzg(zzd paramzzd)
  {
    zzapu.onMyLocationChange((Location)zze.zzf(paramzzd));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */