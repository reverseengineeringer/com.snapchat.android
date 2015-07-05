package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzt
  implements Parcelable.Creator<StreetViewPanoramaOrientation>
{
  static void zza(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramStreetViewPanoramaOrientation.getVersionCode());
    zzb.zza(paramParcel, 2, tilt);
    zzb.zza(paramParcel, 3, bearing);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public StreetViewPanoramaOrientation zzed(Parcel paramParcel)
  {
    float f2 = 0.0F;
    int j = zza.zzJ(paramParcel);
    int i = 0;
    float f1 = 0.0F;
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
        f1 = zza.zzl(paramParcel, k);
        break;
      case 3: 
        f2 = zza.zzl(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new StreetViewPanoramaOrientation(i, f1, f2);
  }
  
  public StreetViewPanoramaOrientation[] zzgg(int paramInt)
  {
    return new StreetViewPanoramaOrientation[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */