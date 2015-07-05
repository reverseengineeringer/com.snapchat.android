package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class zzlj
  implements Parcelable.Creator<zzlh.zza>
{
  static void zza(zzlh.zza paramzza, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, versionCode);
    zzb.zza(paramParcel, 2, className, false);
    zzb.zzc(paramParcel, 3, zzRc, false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzlh.zza zzS(Parcel paramParcel)
  {
    ArrayList localArrayList = null;
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
        localArrayList = zza.zzc(paramParcel, k, zzlh.zzb.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzlh.zza(i, str, localArrayList);
  }
  
  public zzlh.zza[] zzaY(int paramInt)
  {
    return new zzlh.zza[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzlj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */