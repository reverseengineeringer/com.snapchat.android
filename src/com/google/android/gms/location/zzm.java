package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzm
  implements Parcelable.Creator<zzl>
{
  static void zza(zzl paramzzl, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, zzamw);
    zzb.zzc(paramParcel, 1000, paramzzl.getVersionCode());
    zzb.zzc(paramParcel, 2, zzamx);
    zzb.zza(paramParcel, 3, zzamy);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzl zzdt(Parcel paramParcel)
  {
    int i = 1;
    int m = zza.zzJ(paramParcel);
    int k = 0;
    long l = 0L;
    int j = 1;
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
        k = zza.zzg(paramParcel, n);
        break;
      case 2: 
        i = zza.zzg(paramParcel, n);
        break;
      case 3: 
        l = zza.zzi(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new zza.zza("Overread allowed size end=" + m, paramParcel);
    }
    return new zzl(k, j, i, l);
  }
  
  public zzl[] zzfs(int paramInt)
  {
    return new zzl[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.zzm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */