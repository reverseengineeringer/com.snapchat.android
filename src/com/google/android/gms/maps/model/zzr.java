package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzr
  implements Parcelable.Creator<StreetViewPanoramaLink>
{
  static void zza(StreetViewPanoramaLink paramStreetViewPanoramaLink, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramStreetViewPanoramaLink.getVersionCode());
    zzb.zza(paramParcel, 2, panoId, false);
    zzb.zza(paramParcel, 3, bearing);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public StreetViewPanoramaLink zzeb(Parcel paramParcel)
  {
    int j = zza.zzJ(paramParcel);
    int i = 0;
    String str = null;
    float f = 0.0F;
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
        str = zza.zzo(paramParcel, k);
        break;
      case 3: 
        f = zza.zzl(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new StreetViewPanoramaLink(i, str, f);
  }
  
  public StreetViewPanoramaLink[] zzge(int paramInt)
  {
    return new StreetViewPanoramaLink[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */