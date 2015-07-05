package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzf
  implements Parcelable.Creator<zze>
{
  static void zza(zze paramzze, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramzze.getVersionCode());
    zzb.zza(paramParcel, 2, paramzze.zzqM(), paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public zze zzej(Parcel paramParcel)
  {
    int j = com.google.android.gms.common.internal.safeparcel.zza.zzJ(paramParcel);
    int i = 0;
    zza localzza = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = com.google.android.gms.common.internal.safeparcel.zza.zzI(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.zza.zzaP(k))
      {
      default: 
        com.google.android.gms.common.internal.safeparcel.zza.zzb(paramParcel, k);
        break;
      case 1: 
        i = com.google.android.gms.common.internal.safeparcel.zza.zzg(paramParcel, k);
        break;
      case 2: 
        localzza = (zza)com.google.android.gms.common.internal.safeparcel.zza.zza(paramParcel, k, zza.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zze(i, localzza);
  }
  
  public zze[] zzgm(int paramInt)
  {
    return new zze[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.zzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */