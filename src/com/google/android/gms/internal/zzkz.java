package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzkz
  implements Parcelable.Creator<zzky>
{
  static void zza(zzky paramzzky, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramzzky.getVersionCode());
    zzb.zza(paramParcel, 2, paramzzky.zzju(), paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzky zzM(Parcel paramParcel)
  {
    int j = zza.zzJ(paramParcel);
    int i = 0;
    zzla localzzla = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      switch (zza.zzaP(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        localzzla = (zzla)zza.zza(paramParcel, k, zzla.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzky(i, localzzla);
  }
  
  public zzky[] zzaS(int paramInt)
  {
    return new zzky[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzkz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */