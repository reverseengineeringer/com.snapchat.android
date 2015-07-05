package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzj
  implements Parcelable.Creator<zzi>
{
  static void zza(zzi paramzzi, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, version);
    zzb.zzc(paramParcel, 2, zzPz);
    zzb.zzc(paramParcel, 3, zzPA);
    zzb.zza(paramParcel, 4, zzPB, false);
    zzb.zza(paramParcel, 5, zzPC, false);
    zzb.zza(paramParcel, 6, zzPD, paramInt, false);
    zzb.zza(paramParcel, 7, zzPE, false);
    zzb.zza(paramParcel, 8, zzPF, paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzi zzE(Parcel paramParcel)
  {
    int i = 0;
    Account localAccount = null;
    int m = zza.zzJ(paramParcel);
    Bundle localBundle = null;
    Scope[] arrayOfScope = null;
    IBinder localIBinder = null;
    String str = null;
    int j = 0;
    int k = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = zza.zzI(paramParcel);
      switch (zza.zzaP(n))
      {
      default: 
        zza.zzb(paramParcel, n);
        break;
      case 1: 
        k = zza.zzg(paramParcel, n);
        break;
      case 2: 
        j = zza.zzg(paramParcel, n);
        break;
      case 3: 
        i = zza.zzg(paramParcel, n);
        break;
      case 4: 
        str = zza.zzo(paramParcel, n);
        break;
      case 5: 
        localIBinder = zza.zzp(paramParcel, n);
        break;
      case 6: 
        arrayOfScope = (Scope[])zza.zzb(paramParcel, n, Scope.CREATOR);
        break;
      case 7: 
        localBundle = zza.zzq(paramParcel, n);
        break;
      case 8: 
        localAccount = (Account)zza.zza(paramParcel, n, Account.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new zza.zza("Overread allowed size end=" + m, paramParcel);
    }
    return new zzi(k, j, i, str, localIBinder, arrayOfScope, localBundle, localAccount);
  }
  
  public zzi[] zzaH(int paramInt)
  {
    return new zzi[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */