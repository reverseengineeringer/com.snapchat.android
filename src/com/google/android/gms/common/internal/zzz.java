package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzz
  implements Parcelable.Creator<zzy>
{
  static void zza(zzy paramzzy, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, zzFG);
    zzb.zza(paramParcel, 2, paramzzy.getAccount(), paramInt, false);
    zzb.zzc(paramParcel, 3, paramzzy.getSessionId());
    zzb.zzH(paramParcel, i);
  }
  
  public zzy zzF(Parcel paramParcel)
  {
    int k = zza.zzJ(paramParcel);
    Account localAccount = null;
    int i = 0;
    int j = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = zza.zzI(paramParcel);
      switch (zza.zzaP(m))
      {
      default: 
        zza.zzb(paramParcel, m);
        break;
      case 1: 
        i = zza.zzg(paramParcel, m);
        break;
      case 2: 
        localAccount = (Account)zza.zza(paramParcel, m, Account.CREATOR);
        break;
      case 3: 
        j = zza.zzg(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new zzy(i, localAccount, j);
  }
  
  public zzy[] zzaM(int paramInt)
  {
    return new zzy[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */