package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class zzqn
  implements Parcelable.Creator<zzqm>
{
  static void zza(zzqm paramzzqm, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zza(paramParcel, 1, paramzzqm.getData(), false);
    zzb.zzc(paramParcel, 1000, zzFG);
    zzb.zzc(paramParcel, 2, paramzzqm.getActions(), false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzqm zzdL(Parcel paramParcel)
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
        str = zza.zzo(paramParcel, k);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        localArrayList = zza.zzc(paramParcel, k, zzqm.zza.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzqm(i, str, localArrayList);
  }
  
  public zzqm[] zzfO(int paramInt)
  {
    return new zzqm[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */