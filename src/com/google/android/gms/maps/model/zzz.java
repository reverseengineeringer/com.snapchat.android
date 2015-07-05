package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzz
{
  static void zza(VisibleRegion paramVisibleRegion, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramVisibleRegion.getVersionCode());
    zzb.zza(paramParcel, 2, nearLeft, paramInt, false);
    zzb.zza(paramParcel, 3, nearRight, paramInt, false);
    zzb.zza(paramParcel, 4, farLeft, paramInt, false);
    zzb.zza(paramParcel, 5, farRight, paramInt, false);
    zzb.zza(paramParcel, 6, latLngBounds, paramInt, false);
    zzb.zzH(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */