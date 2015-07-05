package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzqv
  implements Parcelable.Creator<zzqu>
{
  static void zza(zzqu paramzzqu, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zza(paramParcel, 1, paramzzqu.zzqd(), false);
    zzb.zzc(paramParcel, 1000, zzFG);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzqu zzdO(Parcel paramParcel)
  {
    int j = zza.zzJ(paramParcel);
    int i = 0;
    String str = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      switch (zza.zzaP(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        str = zza.zzo(paramParcel, k);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzqu(i, str);
  }
  
  public zzqu[] zzfR(int paramInt)
  {
    return new zzqu[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */