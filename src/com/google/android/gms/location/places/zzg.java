package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzg
  implements Parcelable.Creator<zzf>
{
  static void zza(zzf paramzzf, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1000, zzFG);
    zzb.zza(paramParcel, 2, paramzzf.zzpH(), paramInt, false);
    zzb.zza(paramParcel, 3, paramzzf.getInterval());
    zzb.zzc(paramParcel, 4, paramzzf.getPriority());
    zzb.zza(paramParcel, 5, paramzzf.getExpirationTime());
    zzb.zzH(paramParcel, i);
  }
  
  public zzf zzdC(Parcel paramParcel)
  {
    int k = zza.zzJ(paramParcel);
    int j = 0;
    PlaceFilter localPlaceFilter = null;
    long l2 = zzf.zzanO;
    int i = 102;
    long l1 = Long.MAX_VALUE;
    while (paramParcel.dataPosition() < k)
    {
      int m = zza.zzI(paramParcel);
      switch (zza.zzaP(m))
      {
      default: 
        zza.zzb(paramParcel, m);
        break;
      case 1000: 
        j = zza.zzg(paramParcel, m);
        break;
      case 2: 
        localPlaceFilter = (PlaceFilter)zza.zza(paramParcel, m, PlaceFilter.CREATOR);
        break;
      case 3: 
        l2 = zza.zzi(paramParcel, m);
        break;
      case 4: 
        i = zza.zzg(paramParcel, m);
        break;
      case 5: 
        l1 = zza.zzi(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new zzf(j, localPlaceFilter, l2, i, l1);
  }
  
  public zzf[] zzfE(int paramInt)
  {
    return new zzf[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.zzg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */