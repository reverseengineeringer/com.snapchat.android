package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class zzku$zza$zza
  implements zzku
{
  private IBinder zzle;
  
  zzku$zza$zza(IBinder paramIBinder)
  {
    zzle = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return zzle;
  }
  
  public void zza(zzkt paramzzkt)
  {
    IBinder localIBinder = null;
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonService");
      if (paramzzkt != null) {
        localIBinder = paramzzkt.asBinder();
      }
      localParcel.writeStrongBinder(localIBinder);
      zzle.transact(1, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzku.zza.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */