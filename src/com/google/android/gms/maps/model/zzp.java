package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzp
{
  static void zza(PolylineOptions paramPolylineOptions, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramPolylineOptions.getVersionCode());
    zzb.zzc(paramParcel, 2, paramPolylineOptions.getPoints(), false);
    zzb.zza(paramParcel, 3, paramPolylineOptions.getWidth());
    zzb.zzc(paramParcel, 4, paramPolylineOptions.getColor());
    zzb.zza(paramParcel, 5, paramPolylineOptions.getZIndex());
    zzb.zza(paramParcel, 6, paramPolylineOptions.isVisible());
    zzb.zza(paramParcel, 7, paramPolylineOptions.isGeodesic());
    zzb.zzH(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */