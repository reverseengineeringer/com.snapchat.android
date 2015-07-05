package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class zzaa
  implements SafeParcelable
{
  public static final Parcelable.Creator<zzaa> CREATOR = new zzab();
  final int zzFG;
  private boolean zzMT;
  private ConnectionResult zzNB;
  IBinder zzPn;
  private boolean zzQt;
  
  public zzaa(int paramInt)
  {
    this(new ConnectionResult(paramInt, null));
  }
  
  zzaa(int paramInt, IBinder paramIBinder, ConnectionResult paramConnectionResult, boolean paramBoolean1, boolean paramBoolean2)
  {
    zzFG = paramInt;
    zzPn = paramIBinder;
    zzNB = paramConnectionResult;
    zzMT = paramBoolean1;
    zzQt = paramBoolean2;
  }
  
  public zzaa(ConnectionResult paramConnectionResult)
  {
    this(1, null, paramConnectionResult, false, false);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof zzaa)) {
        return false;
      }
      paramObject = (zzaa)paramObject;
    } while ((zzNB.equals(zzNB)) && (zzjn().equals(((zzaa)paramObject).zzjn())));
    return false;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzab.zza(this, paramParcel, paramInt);
  }
  
  public zzq zzjn()
  {
    return zzq.zza.zzR(zzPn);
  }
  
  public ConnectionResult zzjo()
  {
    return zzNB;
  }
  
  public boolean zzjp()
  {
    return zzMT;
  }
  
  public boolean zzjq()
  {
    return zzQt;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzaa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */