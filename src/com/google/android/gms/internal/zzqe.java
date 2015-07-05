package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class zzqe
  implements Parcelable.Creator<zzqd>
{
  static void zza(zzqd paramzzqd, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zza(paramParcel, 1, name, false);
    zzb.zzc(paramParcel, 1000, versionCode);
    zzb.zza(paramParcel, 2, zzaoQ, false);
    zzb.zza(paramParcel, 3, zzaoR, false);
    zzb.zza(paramParcel, 4, zzaoS, false);
    zzb.zzb(paramParcel, 5, zzaoT, false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzqd zzdH(Parcel paramParcel)
  {
    ArrayList localArrayList = null;
    int j = zza.zzJ(paramParcel);
    int i = 0;
    String str1 = null;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      switch (zza.zzaP(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        str4 = zza.zzo(paramParcel, k);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        str3 = zza.zzo(paramParcel, k);
        break;
      case 3: 
        str2 = zza.zzo(paramParcel, k);
        break;
      case 4: 
        str1 = zza.zzo(paramParcel, k);
        break;
      case 5: 
        localArrayList = zza.zzC(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzqd(i, str4, str3, str2, str1, localArrayList);
  }
  
  public zzqd[] zzfK(int paramInt)
  {
    return new zzqd[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */