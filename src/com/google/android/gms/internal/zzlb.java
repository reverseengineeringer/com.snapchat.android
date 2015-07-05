package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class zzlb
  implements Parcelable.Creator<zzla>
{
  static void zza(zzla paramzzla, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramzzla.getVersionCode());
    zzb.zzc(paramParcel, 2, paramzzla.zzjw(), false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzla zzN(Parcel paramParcel)
  {
    int j = zza.zzJ(paramParcel);
    int i = 0;
    ArrayList localArrayList = null;
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
        localArrayList = zza.zzc(paramParcel, k, zzla.zza.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzla(i, localArrayList);
  }
  
  public zzla[] zzaT(int paramInt)
  {
    return new zzla[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzlb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */