package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzd
{
  static void zza(CircleOptions paramCircleOptions, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramCircleOptions.getVersionCode());
    zzb.zza(paramParcel, 2, paramCircleOptions.getCenter(), paramInt, false);
    zzb.zza(paramParcel, 3, paramCircleOptions.getRadius());
    zzb.zza(paramParcel, 4, paramCircleOptions.getStrokeWidth());
    zzb.zzc(paramParcel, 5, paramCircleOptions.getStrokeColor());
    zzb.zzc(paramParcel, 6, paramCircleOptions.getFillColor());
    zzb.zza(paramParcel, 7, paramCircleOptions.getZIndex());
    zzb.zza(paramParcel, 8, paramCircleOptions.isVisible());
    zzb.zzH(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */