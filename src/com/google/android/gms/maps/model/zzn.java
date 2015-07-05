package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzn
{
  static void zza(PolygonOptions paramPolygonOptions, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramPolygonOptions.getVersionCode());
    zzb.zzc(paramParcel, 2, paramPolygonOptions.getPoints(), false);
    zzb.zzd(paramParcel, 3, paramPolygonOptions.zzqJ(), false);
    zzb.zza(paramParcel, 4, paramPolygonOptions.getStrokeWidth());
    zzb.zzc(paramParcel, 5, paramPolygonOptions.getStrokeColor());
    zzb.zzc(paramParcel, 6, paramPolygonOptions.getFillColor());
    zzb.zza(paramParcel, 7, paramPolygonOptions.getZIndex());
    zzb.zza(paramParcel, 8, paramPolygonOptions.isVisible());
    zzb.zza(paramParcel, 9, paramPolygonOptions.isGeodesic());
    zzb.zzH(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */