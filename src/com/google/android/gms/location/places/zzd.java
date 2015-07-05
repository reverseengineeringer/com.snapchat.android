package com.google.android.gms.location.places;

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
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramzzc.zzpD());
    zzb.zzc(paramParcel, 1000, paramzzc.getVersionCode());
    zzb.zzc(paramParcel, 2, paramzzc.zzpG());
    zzb.zza(paramParcel, 3, paramzzc.zzpH(), paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzc zzdA(Parcel paramParcel)
  {
    int j = 0;
    int m = zza.zzJ(paramParcel);
    int k = -1;
    PlaceFilter localPlaceFilter = null;
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
        break;
      case 3: 
        localPlaceFilter = (PlaceFilter)zza.zza(paramParcel, n, PlaceFilter.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new zza.zza("Overread allowed size end=" + m, paramParcel);
    }
    return new zzc(i, j, k, localPlaceFilter);
  }
  
  public zzc[] zzfB(int paramInt)
  {
    return new zzc[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */