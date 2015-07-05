package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzk
  implements Parcelable.Creator<zzj>
{
  static void zza(zzj paramzzj, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zza(paramParcel, 1, zzxV, false);
    zzb.zzc(paramParcel, 1000, zzFG);
    zzb.zzc(paramParcel, 2, zzaoh);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzj zzdD(Parcel paramParcel)
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
        str = zza.zzo(paramParcel, m);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, m);
        break;
      case 2: 
        j = zza.zzg(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new zzj(i, str, j);
  }
  
  public zzj[] zzfF(int paramInt)
  {
    return new zzj[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.zzk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */