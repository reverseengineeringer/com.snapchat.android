package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza.zza;

public class zzb
  implements Parcelable.Creator<zza>
{
  static void zza(zza paramzza, Parcel paramParcel, int paramInt)
  {
    paramInt = com.google.android.gms.common.internal.safeparcel.zzb.zzK(paramParcel);
    com.google.android.gms.common.internal.safeparcel.zzb.zzc(paramParcel, 1, zzFG);
    com.google.android.gms.common.internal.safeparcel.zzb.zza(paramParcel, 2, paramzza.getJwsResult(), false);
    com.google.android.gms.common.internal.safeparcel.zzb.zzH(paramParcel, paramInt);
  }
  
  public zza zzeL(Parcel paramParcel)
  {
    int j = com.google.android.gms.common.internal.safeparcel.zza.zzJ(paramParcel);
    int i = 0;
    String str = null;
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
        str = com.google.android.gms.common.internal.safeparcel.zza.zzo(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zza(i, str);
  }
  
  public zza[] zzgY(int paramInt)
  {
    return new zza[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.safetynet.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */