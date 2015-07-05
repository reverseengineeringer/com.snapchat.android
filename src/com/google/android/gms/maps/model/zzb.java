package com.google.android.gms.maps.model;

import android.os.Parcel;

public class zzb
{
  static void zza(CameraPosition paramCameraPosition, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.zzb.zzK(paramParcel);
    com.google.android.gms.common.internal.safeparcel.zzb.zzc(paramParcel, 1, paramCameraPosition.getVersionCode());
    com.google.android.gms.common.internal.safeparcel.zzb.zza(paramParcel, 2, target, paramInt, false);
    com.google.android.gms.common.internal.safeparcel.zzb.zza(paramParcel, 3, zoom);
    com.google.android.gms.common.internal.safeparcel.zzb.zza(paramParcel, 4, tilt);
    com.google.android.gms.common.internal.safeparcel.zzb.zza(paramParcel, 5, bearing);
    com.google.android.gms.common.internal.safeparcel.zzb.zzH(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */