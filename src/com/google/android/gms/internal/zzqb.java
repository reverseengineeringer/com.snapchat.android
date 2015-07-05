package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzqb
  implements Parcelable.Creator<zzqa>
{
  static void zza(zzqa paramzzqa, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zza(paramParcel, 1, zzaoO, paramInt, false);
    zzb.zzc(paramParcel, 1000, zzFG);
    zzb.zza(paramParcel, 2, zzaoP);
    zzb.zzH(paramParcel, i);
  }
  
  public zzqa zzdG(Parcel paramParcel)
  {
    int j = zza.zzJ(paramParcel);
    int i = 0;
    zzpy localzzpy = null;
    float f = 0.0F;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      switch (zza.zzaP(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        localzzpy = (zzpy)zza.zza(paramParcel, k, zzpy.CREATOR);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        f = zza.zzl(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzqa(i, localzzpy, f);
  }
  
  public zzqa[] zzfJ(int paramInt)
  {
    return new zzqa[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */