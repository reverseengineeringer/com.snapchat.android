package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzy
  implements Parcelable.Creator<zzx>
{
  static void zza(zzx paramzzx, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, versionCode);
    zzb.zza(paramParcel, 2, zzml);
    zzb.zza(paramParcel, 3, zzmy);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzx zza(Parcel paramParcel)
  {
    boolean bool2 = false;
    int j = zza.zzJ(paramParcel);
    boolean bool1 = false;
    int i = 0;
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
        bool1 = zza.zzc(paramParcel, k);
        break;
      case 3: 
        bool2 = zza.zzc(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzx(i, bool1, bool2);
  }
  
  public zzx[] zzb(int paramInt)
  {
    return new zzx[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */