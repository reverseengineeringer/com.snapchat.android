package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class AccountChangeEventsResponseCreator
  implements Parcelable.Creator<AccountChangeEventsResponse>
{
  public static final int CONTENT_DESCRIPTION = 0;
  
  static void zza(AccountChangeEventsResponse paramAccountChangeEventsResponse, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, zzHe);
    zzb.zzc(paramParcel, 2, zzmv, false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public AccountChangeEventsResponse createFromParcel(Parcel paramParcel)
  {
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
        localArrayList = zza.zzc(paramParcel, k, AccountChangeEvent.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new AccountChangeEventsResponse(i, localArrayList);
  }
  
  public AccountChangeEventsResponse[] newArray(int paramInt)
  {
    return new AccountChangeEventsResponse[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.AccountChangeEventsResponseCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */