package com.google.android.gms.maps.model.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzd
  implements Parcelable.Creator<zzc>
{
  static void zza(zzc paramzzc, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramzzc.getVersionCode());
    zzb.zzc(paramParcel, 2, paramzzc.getType());
    zzb.zza(paramParcel, 3, paramzzc.zzqL(), false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzc zzei(Parcel paramParcel)
  {
    int j = 0;
    int k = zza.zzJ(paramParcel);
    Bundle localBundle = null;
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
        j = zza.zzg(paramParcel, m);
        break;
      case 3: 
        localBundle = zza.zzq(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new zzc(i, j, localBundle);
  }
  
  public zzc[] zzgl(int paramInt)
  {
    return new zzc[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */