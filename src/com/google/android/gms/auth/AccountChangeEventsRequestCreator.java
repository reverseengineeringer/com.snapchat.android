package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class AccountChangeEventsRequestCreator
  implements Parcelable.Creator<AccountChangeEventsRequest>
{
  public static final int CONTENT_DESCRIPTION = 0;
  
  static void zza(AccountChangeEventsRequest paramAccountChangeEventsRequest, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, zzHe);
    zzb.zzc(paramParcel, 2, zzHi);
    zzb.zza(paramParcel, 3, zzHg, false);
    zzb.zza(paramParcel, 4, zzFN, paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public AccountChangeEventsRequest createFromParcel(Parcel paramParcel)
  {
    Account localAccount = null;
    int k = zza.zzJ(paramParcel);
    int j = 0;
    int i = 0;
    String str = null;
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
        j = zza.zzg(paramParcel, m);
        break;
      case 3: 
        str = zza.zzo(paramParcel, m);
        break;
      case 4: 
        localAccount = (Account)zza.zza(paramParcel, m, Account.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new AccountChangeEventsRequest(i, j, str, localAccount);
  }
  
  public AccountChangeEventsRequest[] newArray(int paramInt)
  {
    return new AccountChangeEventsRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.AccountChangeEventsRequestCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */