package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzth
  implements Parcelable.Creator<zztf>
{
  static void zza(zztf paramzztf, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, versionCode);
    zzb.zza(paramParcel, 2, zzatM);
    zzb.zza(paramParcel, 3, tag, false);
    zzb.zza(paramParcel, 4, zzatN, false);
    zzb.zza(paramParcel, 5, zzatO, false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zztf zzev(Parcel paramParcel)
  {
    Bundle localBundle = null;
    int j = zza.zzJ(paramParcel);
    int i = 0;
    long l = 0L;
    byte[] arrayOfByte = null;
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
        l = zza.zzi(paramParcel, k);
        break;
      case 3: 
        str = zza.zzo(paramParcel, k);
        break;
      case 4: 
        arrayOfByte = zza.zzr(paramParcel, k);
        break;
      case 5: 
        localBundle = zza.zzq(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zztf(i, l, str, arrayOfByte, localBundle);
  }
  
  public zztf[] zzgH(int paramInt)
  {
    return new zztf[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzth
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */