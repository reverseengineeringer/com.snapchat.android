package com.google.android.gms.maps.internal;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzz
  implements Parcelable.Creator<zzy>
{
  static void zza(zzy paramzzy, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramzzy.getVersionCode());
    zzb.zza(paramParcel, 2, paramzzy.zzqE(), paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzy zzdR(Parcel paramParcel)
  {
    int j = zza.zzJ(paramParcel);
    int i = 0;
    Point localPoint = null;
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
        localPoint = (Point)zza.zza(paramParcel, k, Point.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzy(i, localPoint);
  }
  
  public zzy[] zzfU(int paramInt)
  {
    return new zzy[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.zzz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */