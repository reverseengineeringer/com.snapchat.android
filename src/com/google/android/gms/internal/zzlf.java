package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzlf
  implements Parcelable.Creator<zzld.zza>
{
  static void zza(zzld.zza paramzza, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramzza.getVersionCode());
    zzb.zzc(paramParcel, 2, paramzza.zzjx());
    zzb.zza(paramParcel, 3, paramzza.zzjD());
    zzb.zzc(paramParcel, 4, paramzza.zzjy());
    zzb.zza(paramParcel, 5, paramzza.zzjE());
    zzb.zza(paramParcel, 6, paramzza.zzjF(), false);
    zzb.zzc(paramParcel, 7, paramzza.zzjG());
    zzb.zza(paramParcel, 8, paramzza.zzjI(), false);
    zzb.zza(paramParcel, 9, paramzza.zzjK(), paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzld.zza zzP(Parcel paramParcel)
  {
    zzky localzzky = null;
    int i = 0;
    int n = zza.zzJ(paramParcel);
    String str1 = null;
    String str2 = null;
    boolean bool1 = false;
    int j = 0;
    boolean bool2 = false;
    int k = 0;
    int m = 0;
    while (paramParcel.dataPosition() < n)
    {
      int i1 = zza.zzI(paramParcel);
      switch (zza.zzaP(i1))
      {
      default: 
        zza.zzb(paramParcel, i1);
        break;
      case 1: 
        m = zza.zzg(paramParcel, i1);
        break;
      case 2: 
        k = zza.zzg(paramParcel, i1);
        break;
      case 3: 
        bool2 = zza.zzc(paramParcel, i1);
        break;
      case 4: 
        j = zza.zzg(paramParcel, i1);
        break;
      case 5: 
        bool1 = zza.zzc(paramParcel, i1);
        break;
      case 6: 
        str2 = zza.zzo(paramParcel, i1);
        break;
      case 7: 
        i = zza.zzg(paramParcel, i1);
        break;
      case 8: 
        str1 = zza.zzo(paramParcel, i1);
        break;
      case 9: 
        localzzky = (zzky)zza.zza(paramParcel, i1, zzky.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != n) {
      throw new zza.zza("Overread allowed size end=" + n, paramParcel);
    }
    return new zzld.zza(m, k, bool2, j, bool1, str2, i, str1, localzzky);
  }
  
  public zzld.zza[] zzaV(int paramInt)
  {
    return new zzld.zza[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzlf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */