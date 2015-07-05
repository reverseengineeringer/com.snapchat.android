package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzg
  implements Parcelable.Creator<LatLngBounds>
{
  static void zza(LatLngBounds paramLatLngBounds, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramLatLngBounds.getVersionCode());
    zzb.zza(paramParcel, 2, southwest, paramInt, false);
    zzb.zza(paramParcel, 3, northeast, paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public LatLngBounds zzdV(Parcel paramParcel)
  {
    int j = zza.zzJ(paramParcel);
    LatLng localLatLng1 = null;
    int i = 0;
    LatLng localLatLng2 = null;
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
        localLatLng1 = (LatLng)zza.zza(paramParcel, k, LatLng.CREATOR);
        break;
      case 3: 
        localLatLng2 = (LatLng)zza.zza(paramParcel, k, LatLng.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new LatLngBounds(i, localLatLng1, localLatLng2);
  }
  
  public LatLngBounds[] zzfY(int paramInt)
  {
    return new LatLngBounds[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */