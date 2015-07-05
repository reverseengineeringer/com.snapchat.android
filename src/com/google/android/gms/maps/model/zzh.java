package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzh
{
  static void zza(LatLngBounds paramLatLngBounds, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramLatLngBounds.getVersionCode());
    zzb.zza(paramParcel, 2, southwest, paramInt, false);
    zzb.zza(paramParcel, 3, northeast, paramInt, false);
    zzb.zzH(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */