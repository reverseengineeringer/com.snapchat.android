package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzqk
  implements Parcelable.Creator<zzpo.zza>
{
  static void zza(zzpo.zza paramzza, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, mOffset);
    zzb.zzc(paramParcel, 1000, zzFG);
    zzb.zzc(paramParcel, 2, mLength);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzpo.zza zzdJ(Parcel paramParcel)
  {
    int k = 0;
    int m = zza.zzJ(paramParcel);
    int j = 0;
    int i = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = zza.zzI(paramParcel);
      switch (zza.zzaP(n))
      {
      default: 
        zza.zzb(paramParcel, n);
        break;
      case 1: 
        j = zza.zzg(paramParcel, n);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, n);
        break;
      case 2: 
        k = zza.zzg(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new zza.zza("Overread allowed size end=" + m, paramParcel);
    }
    return new zzpo.zza(i, j, k);
  }
  
  public zzpo.zza[] zzfM(int paramInt)
  {
    return new zzpo.zza[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */