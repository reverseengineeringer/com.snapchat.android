package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzql
  implements Parcelable.Creator<zzqm.zza>
{
  static void zza(zzqm.zza paramzza, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zza(paramParcel, 1, paramzza.getTitle(), false);
    zzb.zzc(paramParcel, 1000, zzFG);
    zzb.zza(paramParcel, 2, paramzza.getUri(), false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzqm.zza zzdK(Parcel paramParcel)
  {
    String str2 = null;
    int j = zza.zzJ(paramParcel);
    int i = 0;
    String str1 = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      switch (zza.zzaP(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        str1 = zza.zzo(paramParcel, k);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        str2 = zza.zzo(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzqm.zza(i, str1, str2);
  }
  
  public zzqm.zza[] zzfN(int paramInt)
  {
    return new zzqm.zza[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzql
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */