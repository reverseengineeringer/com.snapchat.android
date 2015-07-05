package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import java.util.List;

public class AccountChangeEventsResponse
  implements SafeParcelable
{
  public static final AccountChangeEventsResponseCreator CREATOR = new AccountChangeEventsResponseCreator();
  final int zzHe;
  final List<AccountChangeEvent> zzmv;
  
  AccountChangeEventsResponse(int paramInt, List<AccountChangeEvent> paramList)
  {
    zzHe = paramInt;
    zzmv = ((List)zzx.zzl(paramList));
  }
  
  public AccountChangeEventsResponse(List<AccountChangeEvent> paramList)
  {
    zzHe = 1;
    zzmv = ((List)zzx.zzl(paramList));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<AccountChangeEvent> getEvents()
  {
    return zzmv;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    AccountChangeEventsResponseCreator.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.AccountChangeEventsResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */