package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzl
{
  static void zza(MarkerOptions paramMarkerOptions, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramMarkerOptions.getVersionCode());
    zzb.zza(paramParcel, 2, paramMarkerOptions.getPosition(), paramInt, false);
    zzb.zza(paramParcel, 3, paramMarkerOptions.getTitle(), false);
    zzb.zza(paramParcel, 4, paramMarkerOptions.getSnippet(), false);
    zzb.zza(paramParcel, 5, paramMarkerOptions.zzqI(), false);
    zzb.zza(paramParcel, 6, paramMarkerOptions.getAnchorU());
    zzb.zza(paramParcel, 7, paramMarkerOptions.getAnchorV());
    zzb.zza(paramParcel, 8, paramMarkerOptions.isDraggable());
    zzb.zza(paramParcel, 9, paramMarkerOptions.isVisible());
    zzb.zzH(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */