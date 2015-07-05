package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class zzli
  implements Parcelable.Creator<zzlh>
{
  static void zza(zzlh paramzzlh, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramzzlh.getVersionCode());
    zzb.zzc(paramParcel, 2, paramzzlh.zzjO(), false);
    zzb.zza(paramParcel, 3, paramzzlh.zzjP(), false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzlh zzR(Parcel paramParcel)
  {
    String str = null;
    int j = zza.zzJ(paramParcel);
    int i = 0;
    ArrayList localArrayList = null;
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
        localArrayList = zza.zzc(paramParcel, k, zzlh.zza.CREATOR);
        break;
      case 3: 
        str = zza.zzo(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzlh(i, localArrayList, str);
  }
  
  public zzlh[] zzaX(int paramInt)
  {
    return new zzlh[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzli
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */