package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzkx
  implements Parcelable.Creator<zzkw>
{
  static void zza(zzkw paramzzkw, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, zzFG);
    zzb.zza(paramParcel, 2, zzQH, false);
    zzb.zzc(paramParcel, 3, zzQI);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzkw zzL(Parcel paramParcel)
  {
    int j = 0;
    int k = zza.zzJ(paramParcel);
    String str = null;
    int i = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = zza.zzI(paramParcel);
      switch (zza.zzaP(m))
      {
      default: 
        zza.zzb(paramParcel, m);
        break;
      case 1: 
        i = zza.zzg(paramParcel, m);
        break;
      case 2: 
        str = zza.zzo(paramParcel, m);
        break;
      case 3: 
        j = zza.zzg(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new zzkw(i, str, j);
  }
  
  public zzkw[] zzaR(int paramInt)
  {
    return new zzkw[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzkx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */