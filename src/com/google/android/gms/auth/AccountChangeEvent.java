package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;

public class AccountChangeEvent
  implements SafeParcelable
{
  public static final AccountChangeEventCreator CREATOR = new AccountChangeEventCreator();
  final int zzHe;
  final long zzHf;
  final String zzHg;
  final int zzHh;
  final int zzHi;
  final String zzHj;
  
  AccountChangeEvent(int paramInt1, long paramLong, String paramString1, int paramInt2, int paramInt3, String paramString2)
  {
    zzHe = paramInt1;
    zzHf = paramLong;
    zzHg = ((String)zzx.zzl(paramString1));
    zzHh = paramInt2;
    zzHi = paramInt3;
    zzHj = paramString2;
  }
  
  public AccountChangeEvent(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    zzHe = 1;
    zzHf = paramLong;
    zzHg = ((String)zzx.zzl(paramString1));
    zzHh = paramInt1;
    zzHi = paramInt2;
    zzHj = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof AccountChangeEvent)) {
        break;
      }
      paramObject = (AccountChangeEvent)paramObject;
    } while ((zzHe == zzHe) && (zzHf == zzHf) && (zzw.equal(zzHg, zzHg)) && (zzHh == zzHh) && (zzHi == zzHi) && (zzw.equal(zzHj, zzHj)));
    return false;
    return false;
  }
  
  public String getAccountName()
  {
    return zzHg;
  }
  
  public String getChangeData()
  {
    return zzHj;
  }
  
  public int getChangeType()
  {
    return zzHh;
  }
  
  public int getEventIndex()
  {
    return zzHi;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { Integer.valueOf(zzHe), Long.valueOf(zzHf), zzHg, Integer.valueOf(zzHh), Integer.valueOf(zzHi), zzHj });
  }
  
  public String toString()
  {
    String str = "UNKNOWN";
    switch (zzHh)
    {
    }
    for (;;)
    {
      return "AccountChangeEvent {accountName = " + zzHg + ", changeType = " + str + ", changeData = " + zzHj + ", eventIndex = " + zzHi + "}";
      str = "ADDED";
      continue;
      str = "REMOVED";
      continue;
      str = "RENAMED_TO";
      continue;
      str = "RENAMED_FROM";
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    AccountChangeEventCreator.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.AccountChangeEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */