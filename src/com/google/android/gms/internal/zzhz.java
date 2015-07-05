package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzhz
  implements Parcelable.Creator<zzhy>
{
  static void zza(zzhy paramzzhy, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, versionCode);
    zzb.zza(paramParcel, 2, zzzH, false);
    zzb.zzc(paramParcel, 3, zzzI);
    zzb.zzc(paramParcel, 4, zzzJ);
    zzb.zza(paramParcel, 5, zzzK);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzhy[] zzB(int paramInt)
  {
    return new zzhy[paramInt];
  }
  
  public zzhy zzj(Parcel paramParcel)
  {
    boolean bool = false;
    int m = zza.zzJ(paramParcel);
    String str = null;
    int i = 0;
    int j = 0;
    int k = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = zza.zzI(paramParcel);
      switch (zza.zzaP(n))
      {
      default: 
        zza.zzb(paramParcel, n);
        break;
      case 1: 
        k = zza.zzg(paramParcel, n);
        break;
      case 2: 
        str = zza.zzo(paramParcel, n);
        break;
      case 3: 
        j = zza.zzg(paramParcel, n);
        break;
      case 4: 
        i = zza.zzg(paramParcel, n);
        break;
      case 5: 
        bool = zza.zzc(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new zza.zza("Overread allowed size end=" + m, paramParcel);
    }
    return new zzhy(k, str, j, i, bool);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */