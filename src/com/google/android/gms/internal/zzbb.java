package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzbb
  implements Parcelable.Creator<zzba>
{
  static void zza(zzba paramzzba, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, versionCode);
    zzb.zza(paramParcel, 2, zzpa, false);
    zzb.zzc(paramParcel, 3, height);
    zzb.zzc(paramParcel, 4, heightPixels);
    zzb.zza(paramParcel, 5, zzpb);
    zzb.zzc(paramParcel, 6, width);
    zzb.zzc(paramParcel, 7, widthPixels);
    zzb.zza(paramParcel, 8, zzpc, paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzba zzc(Parcel paramParcel)
  {
    zzba[] arrayOfzzba = null;
    int i = 0;
    int i1 = zza.zzJ(paramParcel);
    int j = 0;
    boolean bool = false;
    int k = 0;
    int m = 0;
    String str = null;
    int n = 0;
    while (paramParcel.dataPosition() < i1)
    {
      int i2 = zza.zzI(paramParcel);
      switch (zza.zzaP(i2))
      {
      default: 
        zza.zzb(paramParcel, i2);
        break;
      case 1: 
        n = zza.zzg(paramParcel, i2);
        break;
      case 2: 
        str = zza.zzo(paramParcel, i2);
        break;
      case 3: 
        m = zza.zzg(paramParcel, i2);
        break;
      case 4: 
        k = zza.zzg(paramParcel, i2);
        break;
      case 5: 
        bool = zza.zzc(paramParcel, i2);
        break;
      case 6: 
        j = zza.zzg(paramParcel, i2);
        break;
      case 7: 
        i = zza.zzg(paramParcel, i2);
        break;
      case 8: 
        arrayOfzzba = (zzba[])zza.zzb(paramParcel, i2, zzba.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != i1) {
      throw new zza.zza("Overread allowed size end=" + i1, paramParcel);
    }
    return new zzba(n, str, m, k, bool, j, i, arrayOfzzba);
  }
  
  public zzba[] zzg(int paramInt)
  {
    return new zzba[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */