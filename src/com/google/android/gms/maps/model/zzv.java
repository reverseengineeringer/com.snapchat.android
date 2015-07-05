package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzv
{
  static void zza(Tile paramTile, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramTile.getVersionCode());
    zzb.zzc(paramParcel, 2, width);
    zzb.zzc(paramParcel, 3, height);
    zzb.zza(paramParcel, 4, data, false);
    zzb.zzH(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */