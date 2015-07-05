package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class zzbl$zza$zza
  implements zzbl
{
  private IBinder zzle;
  
  zzbl$zza$zza(IBinder paramIBinder)
  {
    zzle = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return zzle;
  }
  
  public long getValue()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
      zzle.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      long l = localParcel2.readLong();
      return l;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbl.zza.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */