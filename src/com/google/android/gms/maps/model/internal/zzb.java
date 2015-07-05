package com.google.android.gms.maps.model.internal;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza.zza;

public class zzb
  implements Parcelable.Creator<zza>
{
  static void zza(zza paramzza, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.zzb.zzK(paramParcel);
    com.google.android.gms.common.internal.safeparcel.zzb.zzc(paramParcel, 1, paramzza.getVersionCode());
    com.google.android.gms.common.internal.safeparcel.zzb.zza(paramParcel, 2, paramzza.getType());
    com.google.android.gms.common.internal.safeparcel.zzb.zza(paramParcel, 3, paramzza.zzqL(), false);
    com.google.android.gms.common.internal.safeparcel.zzb.zza(paramParcel, 4, paramzza.getBitmap(), paramInt, false);
    com.google.android.gms.common.internal.safeparcel.zzb.zzH(paramParcel, i);
  }
  
  public zza zzeh(Parcel paramParcel)
  {
    Bitmap localBitmap = null;
    int j = com.google.android.gms.common.internal.safeparcel.zza.zzJ(paramParcel);
    byte b = 0;
    int i = 0;
    Bundle localBundle = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = com.google.android.gms.common.internal.safeparcel.zza.zzI(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.zza.zzaP(k))
      {
      default: 
        com.google.android.gms.common.internal.safeparcel.zza.zzb(paramParcel, k);
        break;
      case 1: 
        i = com.google.android.gms.common.internal.safeparcel.zza.zzg(paramParcel, k);
        break;
      case 2: 
        b = com.google.android.gms.common.internal.safeparcel.zza.zze(paramParcel, k);
        break;
      case 3: 
        localBundle = com.google.android.gms.common.internal.safeparcel.zza.zzq(paramParcel, k);
        break;
      case 4: 
        localBitmap = (Bitmap)com.google.android.gms.common.internal.safeparcel.zza.zza(paramParcel, k, Bitmap.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zza(i, b, localBundle, localBitmap);
  }
  
  public zza[] zzgk(int paramInt)
  {
    return new zza[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */