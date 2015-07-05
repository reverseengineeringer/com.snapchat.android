package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzj
{
  static void zza(LatLng paramLatLng, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramLatLng.getVersionCode());
    zzb.zza(paramParcel, 2, latitude);
    zzb.zza(paramParcel, 3, longitude);
    zzb.zzH(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */