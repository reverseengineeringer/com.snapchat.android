package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class AccountChangeEventsRequest
  implements SafeParcelable
{
  public static final AccountChangeEventsRequestCreator CREATOR = new AccountChangeEventsRequestCreator();
  Account zzFN;
  final int zzHe;
  @Deprecated
  String zzHg;
  int zzHi;
  
  public AccountChangeEventsRequest()
  {
    zzHe = 1;
  }
  
  AccountChangeEventsRequest(int paramInt1, int paramInt2, String paramString, Account paramAccount)
  {
    zzHe = paramInt1;
    zzHi = paramInt2;
    zzHg = paramString;
    if ((paramAccount == null) && (!TextUtils.isEmpty(paramString)))
    {
      zzFN = new Account(paramString, "com.google");
      return;
    }
    zzFN = paramAccount;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Account getAccount()
  {
    return zzFN;
  }
  
  public String getAccountName()
  {
    return zzHg;
  }
  
  public int getEventIndex()
  {
    return zzHi;
  }
  
  public AccountChangeEventsRequest setAccount(Account paramAccount)
  {
    zzFN = paramAccount;
    return this;
  }
  
  public AccountChangeEventsRequest setAccountName(String paramString)
  {
    zzHg = paramString;
    return this;
  }
  
  public AccountChangeEventsRequest setEventIndex(int paramInt)
  {
    zzHi = paramInt;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    AccountChangeEventsRequestCreator.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.AccountChangeEventsRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */