package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class zzux
  implements Parcelable.Creator<zzuw>
{
  static void zza(zzuw paramzzuw, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, zzFG);
    zzb.zza(paramParcel, 2, zzawX);
    zzb.zzc(paramParcel, 3, zzawY, false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzuw zzeN(Parcel paramParcel)
  {
    boolean bool = false;
    int j = zza.zzJ(paramParcel);
    ArrayList localArrayList = null;
    int i = 0;
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
        bool = zza.zzc(paramParcel, k);
        break;
      case 3: 
        localArrayList = zza.zzc(paramParcel, k, Scope.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzuw(i, bool, localArrayList);
  }
  
  public zzuw[] zzha(int paramInt)
  {
    return new zzuw[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzux
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */