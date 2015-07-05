package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzuu
  implements Parcelable.Creator<zzut>
{
  static void zza(zzut paramzzut, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, zzFG);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzut zzeM(Parcel paramParcel)
  {
    int j = zza.zzJ(paramParcel);
    int i = 0;
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
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzut(i);
  }
  
  public zzut[] zzgZ(int paramInt)
  {
    return new zzut[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzuu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */