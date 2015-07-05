package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzd
  implements Parcelable.Creator<zzc>
{
  static void zza(zzc paramzzc, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, zzFG);
    zzb.zza(paramParcel, 2, zzPn, false);
    zzb.zza(paramParcel, 3, zzPo, paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzc zzC(Parcel paramParcel)
  {
    Scope[] arrayOfScope = null;
    int j = zza.zzJ(paramParcel);
    int i = 0;
    IBinder localIBinder = null;
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
        localIBinder = zza.zzp(paramParcel, k);
        break;
      case 3: 
        arrayOfScope = (Scope[])zza.zzb(paramParcel, k, Scope.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzc(i, localIBinder, arrayOfScope);
  }
  
  public zzc[] zzaF(int paramInt)
  {
    return new zzc[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */