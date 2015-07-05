package com.google.android.gms.maps;

import android.graphics.Bitmap;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.maps.internal.zzv.zza;

class GoogleMap$5
  extends zzv.zza
{
  GoogleMap$5(GoogleMap paramGoogleMap, GoogleMap.SnapshotReadyCallback paramSnapshotReadyCallback) {}
  
  public void onSnapshotReady(Bitmap paramBitmap)
  {
    zzapx.onSnapshotReady(paramBitmap);
  }
  
  public void zzh(zzd paramzzd)
  {
    zzapx.onSnapshotReady((Bitmap)zze.zzf(paramzzd));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */