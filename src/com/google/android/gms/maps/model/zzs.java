package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzs
  implements Parcelable.Creator<StreetViewPanoramaLocation>
{
  static void zza(StreetViewPanoramaLocation paramStreetViewPanoramaLocation, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramStreetViewPanoramaLocation.getVersionCode());
    zzb.zza(paramParcel, 2, links, paramInt, false);
    zzb.zza(paramParcel, 3, position, paramInt, false);
    zzb.zza(paramParcel, 4, panoId, false);
    zzb.zzH(paramParcel, i);
  }
  
  public StreetViewPanoramaLocation zzec(Parcel paramParcel)
  {
    int j = zza.zzJ(paramParcel);
    LatLng localLatLng = null;
    StreetViewPanoramaLink[] arrayOfStreetViewPanoramaLink = null;
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
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        arrayOfStreetViewPanoramaLink = (StreetViewPanoramaLink[])zza.zzb(paramParcel, k, StreetViewPanoramaLink.CREATOR);
        break;
      case 3: 
        localLatLng = (LatLng)zza.zza(paramParcel, k, LatLng.CREATOR);
        break;
      case 4: 
        str = zza.zzo(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new StreetViewPanoramaLocation(i, arrayOfStreetViewPanoramaLink, localLatLng, str);
  }
  
  public StreetViewPanoramaLocation[] zzgf(int paramInt)
  {
    return new StreetViewPanoramaLocation[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */