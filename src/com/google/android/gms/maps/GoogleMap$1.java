package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.zzg.zza;
import com.google.android.gms.maps.model.IndoorBuilding;
import com.google.android.gms.maps.model.internal.zzj;

class GoogleMap$1
  extends zzg.zza
{
  GoogleMap$1(GoogleMap paramGoogleMap, GoogleMap.OnIndoorStateChangeListener paramOnIndoorStateChangeListener) {}
  
  public void onIndoorBuildingFocused()
  {
    zzaps.onIndoorBuildingFocused();
  }
  
  public void zza(zzj paramzzj)
  {
    zzaps.onIndoorLevelActivated(new IndoorBuilding(paramzzj));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */