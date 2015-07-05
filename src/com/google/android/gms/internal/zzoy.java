package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzoy
  implements Parcelable.Creator<zzox>
{
  static void zza(zzox paramzzox, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, uid);
    zzb.zzc(paramParcel, 1000, paramzzox.getVersionCode());
    zzb.zza(paramParcel, 2, packageName, false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzox zzdu(Parcel paramParcel)
  {
    int j = 0;
    int k = zza.zzJ(paramParcel);
    String str = null;
    int i = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = zza.zzI(paramParcel);
      switch (zza.zzaP(m))
      {
      default: 
        zza.zzb(paramParcel, m);
        break;
      case 1: 
        j = zza.zzg(paramParcel, m);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, m);
        break;
      case 2: 
        str = zza.zzo(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new zzox(i, j, str);
  }
  
  public zzox[] zzft(int paramInt)
  {
    return new zzox[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzoy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */