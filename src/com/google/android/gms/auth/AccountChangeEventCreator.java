package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class AccountChangeEventCreator
  implements Parcelable.Creator<AccountChangeEvent>
{
  public static final int CONTENT_DESCRIPTION = 0;
  
  static void zza(AccountChangeEvent paramAccountChangeEvent, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, zzHe);
    zzb.zza(paramParcel, 2, zzHf);
    zzb.zza(paramParcel, 3, zzHg, false);
    zzb.zzc(paramParcel, 4, zzHh);
    zzb.zzc(paramParcel, 5, zzHi);
    zzb.zza(paramParcel, 6, zzHj, false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public AccountChangeEvent createFromParcel(Parcel paramParcel)
  {
    String str1 = null;
    int i = 0;
    int m = zza.zzJ(paramParcel);
    long l = 0L;
    int j = 0;
    String str2 = null;
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
        l = zza.zzi(paramParcel, n);
        break;
      case 3: 
        str2 = zza.zzo(paramParcel, n);
        break;
      case 4: 
        j = zza.zzg(paramParcel, n);
        break;
      case 5: 
        i = zza.zzg(paramParcel, n);
        break;
      case 6: 
        str1 = zza.zzo(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new zza.zza("Overread allowed size end=" + m, paramParcel);
    }
    return new AccountChangeEvent(k, l, str2, j, i, str1);
  }
  
  public AccountChangeEvent[] newArray(int paramInt)
  {
    return new AccountChangeEvent[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.AccountChangeEventCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */