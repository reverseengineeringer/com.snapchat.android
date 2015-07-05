package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zztk
  implements Parcelable.Creator<zztj>
{
  static void zza(zztj paramzztj, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, versionCode);
    zzb.zza(paramParcel, 2, packageName, false);
    zzb.zzc(paramParcel, 3, zzatW);
    zzb.zzc(paramParcel, 4, zzatX);
    zzb.zza(paramParcel, 5, zzatY, false);
    zzb.zza(paramParcel, 6, zzatZ, false);
    zzb.zza(paramParcel, 7, zzaua);
    zzb.zza(paramParcel, 8, zzaub, false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zztj zzew(Parcel paramParcel)
  {
    int i = 0;
    String str1 = null;
    int m = zza.zzJ(paramParcel);
    boolean bool = true;
    String str2 = null;
    String str3 = null;
    int j = 0;
    String str4 = null;
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
        str4 = zza.zzo(paramParcel, n);
        break;
      case 3: 
        j = zza.zzg(paramParcel, n);
        break;
      case 4: 
        i = zza.zzg(paramParcel, n);
        break;
      case 5: 
        str3 = zza.zzo(paramParcel, n);
        break;
      case 6: 
        str2 = zza.zzo(paramParcel, n);
        break;
      case 7: 
        bool = zza.zzc(paramParcel, n);
        break;
      case 8: 
        str1 = zza.zzo(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new zza.zza("Overread allowed size end=" + m, paramParcel);
    }
    return new zztj(k, str4, j, i, str3, str2, bool, str1);
  }
  
  public zztj[] zzgI(int paramInt)
  {
    return new zztj[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zztk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */