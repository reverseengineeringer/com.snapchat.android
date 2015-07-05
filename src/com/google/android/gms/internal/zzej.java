package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzej
  implements Parcelable.Creator<zzek>
{
  static void zza(zzek paramzzek, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, versionCode);
    zzb.zza(paramParcel, 2, zztQ, false);
    zzb.zza(paramParcel, 3, zztR, false);
    zzb.zza(paramParcel, 4, mimeType, false);
    zzb.zza(paramParcel, 5, packageName, false);
    zzb.zza(paramParcel, 6, zztS, false);
    zzb.zza(paramParcel, 7, zztT, false);
    zzb.zza(paramParcel, 8, zztU, false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzek zze(Parcel paramParcel)
  {
    String str1 = null;
    int j = zza.zzJ(paramParcel);
    int i = 0;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    String str6 = null;
    String str7 = null;
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
        str7 = zza.zzo(paramParcel, k);
        break;
      case 3: 
        str6 = zza.zzo(paramParcel, k);
        break;
      case 4: 
        str5 = zza.zzo(paramParcel, k);
        break;
      case 5: 
        str4 = zza.zzo(paramParcel, k);
        break;
      case 6: 
        str3 = zza.zzo(paramParcel, k);
        break;
      case 7: 
        str2 = zza.zzo(paramParcel, k);
        break;
      case 8: 
        str1 = zza.zzo(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzek(i, str7, str6, str5, str4, str3, str2, str1);
  }
  
  public zzek[] zzo(int paramInt)
  {
    return new zzek[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */