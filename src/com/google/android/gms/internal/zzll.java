package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzll
  implements Parcelable.Creator<zzlk>
{
  static void zza(zzlk paramzzlk, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramzzlk.getVersionCode());
    zzb.zza(paramParcel, 2, paramzzlk.zzjR(), false);
    zzb.zza(paramParcel, 3, paramzzlk.zzjS(), paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzlk zzT(Parcel paramParcel)
  {
    zzlh localzzlh = null;
    int j = zza.zzJ(paramParcel);
    int i = 0;
    Parcel localParcel = null;
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
        localParcel = zza.zzD(paramParcel, k);
        break;
      case 3: 
        localzzlh = (zzlh)zza.zza(paramParcel, k, zzlh.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzlk(i, localParcel, localzzlh);
  }
  
  public zzlk[] zzaZ(int paramInt)
  {
    return new zzlk[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzll
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */