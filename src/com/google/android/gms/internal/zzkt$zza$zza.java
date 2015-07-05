package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class zzkt$zza$zza
  implements zzkt
{
  private IBinder zzle;
  
  zzkt$zza$zza(IBinder paramIBinder)
  {
    zzle = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return zzle;
  }
  
  public void zzaQ(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonCallbacks");
      localParcel1.writeInt(paramInt);
      zzle.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzkt.zza.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */