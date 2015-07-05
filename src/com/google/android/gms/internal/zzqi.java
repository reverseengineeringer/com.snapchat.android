package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzqi
  implements Parcelable.Creator<zzqh>
{
  static void zza(zzqh paramzzqh, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zza(paramParcel, 1, zzapb, false);
    zzb.zzc(paramParcel, 1000, versionCode);
    zzb.zza(paramParcel, 2, zzapc, false);
    zzb.zza(paramParcel, 3, zzapd, false);
    zzb.zza(paramParcel, 4, zzaob, false);
    zzb.zza(paramParcel, 5, zzape, false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzqh zzdI(Parcel paramParcel)
  {
    String str1 = null;
    int j = zza.zzJ(paramParcel);
    int i = 0;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      switch (zza.zzaP(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        str5 = zza.zzo(paramParcel, k);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        str4 = zza.zzo(paramParcel, k);
        break;
      case 3: 
        str3 = zza.zzo(paramParcel, k);
        break;
      case 4: 
        str2 = zza.zzo(paramParcel, k);
        break;
      case 5: 
        str1 = zza.zzo(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzqh(i, str5, str4, str3, str2, str1);
  }
  
  public zzqh[] zzfL(int paramInt)
  {
    return new zzqh[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */