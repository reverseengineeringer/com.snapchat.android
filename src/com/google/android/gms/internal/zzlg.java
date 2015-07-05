package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzlg
  implements Parcelable.Creator<zzlh.zzb>
{
  static void zza(zzlh.zzb paramzzb, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, versionCode);
    zzb.zza(paramParcel, 2, zzfv, false);
    zzb.zza(paramParcel, 3, zzRd, paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzlh.zzb zzQ(Parcel paramParcel)
  {
    zzld.zza localzza = null;
    int j = zza.zzJ(paramParcel);
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
        str = zza.zzo(paramParcel, k);
        break;
      case 3: 
        localzza = (zzld.zza)zza.zza(paramParcel, k, zzld.zza.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzlh.zzb(i, str, localzza);
  }
  
  public zzlh.zzb[] zzaW(int paramInt)
  {
    return new zzlh.zzb[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzlg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */