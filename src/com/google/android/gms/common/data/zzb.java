package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza.zza;

public class zzb
  implements Parcelable.Creator<zza>
{
  static void zza(zza paramzza, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.zzb.zzK(paramParcel);
    com.google.android.gms.common.internal.safeparcel.zzb.zzc(paramParcel, 1, zzFG);
    com.google.android.gms.common.internal.safeparcel.zzb.zza(paramParcel, 2, zzNJ, paramInt, false);
    com.google.android.gms.common.internal.safeparcel.zzb.zzc(paramParcel, 3, zzJp);
    com.google.android.gms.common.internal.safeparcel.zzb.zzH(paramParcel, i);
  }
  
  public zza[] zzau(int paramInt)
  {
    return new zza[paramInt];
  }
  
  public zza zzz(Parcel paramParcel)
  {
    int k = com.google.android.gms.common.internal.safeparcel.zza.zzJ(paramParcel);
    ParcelFileDescriptor localParcelFileDescriptor = null;
    int i = 0;
    int j = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = com.google.android.gms.common.internal.safeparcel.zza.zzI(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.zza.zzaP(m))
      {
      default: 
        com.google.android.gms.common.internal.safeparcel.zza.zzb(paramParcel, m);
        break;
      case 1: 
        i = com.google.android.gms.common.internal.safeparcel.zza.zzg(paramParcel, m);
        break;
      case 2: 
        localParcelFileDescriptor = (ParcelFileDescriptor)com.google.android.gms.common.internal.safeparcel.zza.zza(paramParcel, m, ParcelFileDescriptor.CREATOR);
        break;
      case 3: 
        j = com.google.android.gms.common.internal.safeparcel.zza.zzg(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new zza(i, localParcelFileDescriptor, j);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */